"""YouTube Data API + Analytics API."""

from __future__ import annotations

from pathlib import Path
from typing import Any

from coa.config import Config

SCOPES = [
    "https://www.googleapis.com/auth/youtube.upload",
    "https://www.googleapis.com/auth/youtube",
    "https://www.googleapis.com/auth/yt-analytics.readonly",
]


class YouTubeError(RuntimeError):
    pass


def _credentials(config: Config):
    from google.auth.transport.requests import Request
    from google.oauth2.credentials import Credentials
    from google_auth_oauthlib.flow import InstalledAppFlow

    creds = None
    if config.yt_token.exists():
        creds = Credentials.from_authorized_user_file(str(config.yt_token), SCOPES)

    if creds and creds.valid:
        return creds
    if creds and creds.expired and creds.refresh_token:
        creds.refresh(Request())
    else:
        if not config.yt_client_secret.exists():
            raise YouTubeError(
                f"Нет OAuth-клиента: {config.yt_client_secret}. "
                "Создай desktop-приложение в Google Cloud Console и скачай client_secret.json."
            )
        flow = InstalledAppFlow.from_client_secrets_file(str(config.yt_client_secret), SCOPES)
        creds = flow.run_local_server(port=0)

    config.yt_token.write_text(creds.to_json(), encoding="utf-8")
    return creds


def _service(config: Config, name: str, version: str):
    from googleapiclient.discovery import build

    return build(name, version, credentials=_credentials(config), cache_discovery=False)


def upload_video(
    *,
    config: Config,
    video_path: Path,
    title: str,
    description: str,
    tags: list[str],
    privacy_status: str,
    category_id: str,
    made_for_kids: bool,
) -> str:
    from googleapiclient.http import MediaFileUpload

    youtube = _service(config, "youtube", "v3")
    body = {
        "snippet": {
            "title": title,
            "description": description,
            "tags": tags,
            "categoryId": category_id,
        },
        "status": {
            "privacyStatus": privacy_status,
            "selfDeclaredMadeForKids": made_for_kids,
        },
    }
    media = MediaFileUpload(str(video_path), chunksize=8 << 20, resumable=True)
    request = youtube.videos().insert(part="snippet,status", body=body, media_body=media)

    response = None
    while response is None:
        status, response = request.next_chunk()
        if status:
            print(f"  загрузка {int(status.progress() * 100)}%")
    return response["id"]


def set_thumbnail(config: Config, video_id: str, thumbnail_path: Path) -> None:
    youtube = _service(config, "youtube", "v3")
    youtube.thumbnails().set(videoId=video_id, media_body=str(thumbnail_path)).execute()


def video_stats(config: Config, video_id: str) -> dict[str, Any]:
    youtube = _service(config, "youtube", "v3")
    response = youtube.videos().list(part="statistics,contentDetails", id=video_id).execute()
    items = response.get("items") or []
    if not items:
        raise YouTubeError(f"Видео {video_id} не найдено")
    return items[0]


def retention(config: Config, video_id: str, start_date: str, end_date: str) -> dict[str, Any]:
    """Кривая удержания. Нужна, чтобы понять, где именно зритель уходит."""
    analytics = _service(config, "youtubeAnalytics", "v2")
    return analytics.reports().query(
        ids=f"channel=={config.channel_id}",
        startDate=start_date,
        endDate=end_date,
        metrics="audienceWatchRatio",
        dimensions="elapsedVideoTimeRatio",
        filters=f"video=={video_id}",
    ).execute()


def traffic_sources(config: Config, video_id: str, start_date: str, end_date: str) -> dict[str, Any]:
    analytics = _service(config, "youtubeAnalytics", "v2")
    return analytics.reports().query(
        ids=f"channel=={config.channel_id}",
        startDate=start_date,
        endDate=end_date,
        metrics="views,estimatedMinutesWatched,averageViewDuration",
        dimensions="insightTrafficSourceType",
        filters=f"video=={video_id}",
    ).execute()
