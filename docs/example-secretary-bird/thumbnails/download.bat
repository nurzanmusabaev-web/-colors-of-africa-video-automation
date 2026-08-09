@echo off
rem Secretary Bird thumbnails - 5 candidates across 3 concepts
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 5 thumbnails into thumbs\ ...
echo.
echo [1/5] A1.png
curl %CURLOPTS% -o "thumbs\A1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_223057_e55d61e2-9032-4f2a-a4e7-d0bafbf3dbe2.png"
echo [2/5] A2.png
curl %CURLOPTS% -o "thumbs\A2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_222954_1ae059ff-31e4-40b2-bb8c-f6a6acdfb03b.png"
echo [3/5] B1.png
curl %CURLOPTS% -o "thumbs\B1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_223057_54851def-4a16-4b41-a8a5-950ec0bd843c.png"
echo [4/5] C1.png
curl %CURLOPTS% -o "thumbs\C1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_222954_8cd93744-116e-4ce3-a674-88201adf160f.png"
echo [5/5] C2.png
curl %CURLOPTS% -o "thumbs\C2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_222954_b2838f17-d24b-49d3-8b7e-4eef0cae7769.png"
echo.
echo Done. Files are in "%cd%\thumbs"
pause
