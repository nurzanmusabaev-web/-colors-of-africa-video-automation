@echo off
rem Seychelles thumbnails - 6 candidates across 3 concepts
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 6 thumbnails into thumbs\ ...
echo.
echo [1/6] A1.png
curl %CURLOPTS% -o "thumbs\A1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_ba66a812-9357-4878-b449-c5ba096ebb46.png"
echo [2/6] A2.png
curl %CURLOPTS% -o "thumbs\A2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_335c2727-6d25-4fa2-8638-59b679c28395.png"
echo [3/6] B1.png
curl %CURLOPTS% -o "thumbs\B1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_d3fa10c8-fe8c-4742-a3c2-4430b32bfc40.png"
echo [4/6] B2.png
curl %CURLOPTS% -o "thumbs\B2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_5272e0f9-8143-41aa-86c9-33edbe5e9606.png"
echo [5/6] C1.png
curl %CURLOPTS% -o "thumbs\C1.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_3d870068-73ac-4fd8-b420-0efe237b974b.png"
echo [6/6] C2.png
curl %CURLOPTS% -o "thumbs\C2.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260812_194631_e04fd4b0-50fa-40de-8bd4-1c3e63cfa948.png"
echo.
echo Done. Files are in "%cd%\thumbs"
pause
