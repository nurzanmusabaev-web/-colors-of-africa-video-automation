@echo off
rem Egypt Pyramids Africa - thumbnails, 6 candidates across 3 concepts
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 6 thumbnails into thumbs\ ...
echo.
echo [1/6] A1.png
curl %CURLOPTS% -o "thumbs\A1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_ce9f86cd-0830-446f-b68a-5b8224c7a32f.png"
echo [2/6] A2.png
curl %CURLOPTS% -o "thumbs\A2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_33c3088b-9b14-4e31-8292-fb82647907ed.png"
echo [3/6] B1.png
curl %CURLOPTS% -o "thumbs\B1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_997957ce-0392-4a23-aca6-74e2b4ee1b81.png"
echo [4/6] B2.png
curl %CURLOPTS% -o "thumbs\B2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_2b911299-ef91-4fd2-93f1-e9e36301ab87.png"
echo [5/6] C1.png
curl %CURLOPTS% -o "thumbs\C1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_e1520a37-40d1-440d-a52a-c46c2a5ae15b.png"
echo [6/6] C2.png
curl %CURLOPTS% -o "thumbs\C2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_190504_7244787b-6b58-4277-813c-876b2540eac8.png"
echo.
echo Done. Files are in "%cd%\thumbs"
pause
