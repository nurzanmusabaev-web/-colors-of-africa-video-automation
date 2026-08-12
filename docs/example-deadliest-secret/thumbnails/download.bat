@echo off
rem Africa's Deadliest Secret thumbnails - 6 candidates across 3 concepts
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 6 thumbnails into thumbs\ ...
echo.
echo [1/6] A1.png
curl %CURLOPTS% -o "thumbs\A1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_3269f070-05f9-4b79-b51a-035af0981c49.png"
echo [2/6] A2.png
curl %CURLOPTS% -o "thumbs\A2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_18b3ad4d-6c71-49d5-9435-92f5459b2031.png"
echo [3/6] B1.png
curl %CURLOPTS% -o "thumbs\B1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_f839b457-d8b5-4917-a3c8-7e65f8401096.png"
echo [4/6] B2.png
curl %CURLOPTS% -o "thumbs\B2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_194e83b3-4e1d-4902-a5c6-6a9a8abbc972.png"
echo [5/6] C1.png
curl %CURLOPTS% -o "thumbs\C1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_d6306b6e-ecc0-4c11-b585-0e4e81e66f23.png"
echo [6/6] C2.png
curl %CURLOPTS% -o "thumbs\C2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_185010_4b91cd5a-4274-440c-a7ba-c09834fd9312.png"
echo.
echo Done. Files are in "%cd%\thumbs"
pause
