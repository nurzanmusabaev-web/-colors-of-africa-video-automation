import json
from pathlib import Path

HERE = Path(__file__).parent
m = json.load(open(HERE / "manifest.json"))

lines = []
lines.append("@echo off")
lines.append("rem African Penguin animated clips - 78 x 7s 1080p (kling3_0_turbo)")
lines.append("rem Uses PowerShell to download (built into every Windows 7/8/10/11), no curl.exe needed.")
lines.append("setlocal")
lines.append('cd /d "%~dp0"')
lines.append('if not exist "mp4" mkdir "mp4"')
lines.append(f"echo Downloading {len(m)} clips into mp4\\ ...")
lines.append("echo This is video, will take longer than the frame download - please wait.")
lines.append("echo.")
for i, f in enumerate(m, 1):
    fname = f"{f['name']}.mp4"
    lines.append(f"echo [{i}/{len(m)}] {fname}")
    ps = (
        f"try {{ Invoke-WebRequest -Uri '{f['url']}' -OutFile 'mp4\\{fname}' "
        f"-UseBasicParsing }} catch {{ Write-Host '  FAILED:' $_.Exception.Message }}"
    )
    lines.append(f'powershell -NoProfile -Command "{ps}"')
lines.append("echo.")
lines.append('echo Done. Files are in "%cd%\\mp4"')
lines.append("pause")

(HERE / "download.bat").write_text("\r\n".join(lines) + "\r\n", newline="")
print(f"wrote download.bat with {len(m)} entries (PowerShell-based)")
