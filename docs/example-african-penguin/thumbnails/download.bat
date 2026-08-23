@echo off
rem African Penguin thumbnails - 6 candidates across 3 concepts
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
echo Downloading 6 thumbnails into thumbs\ ...
echo.
echo [1/6] A1.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_01aa6ea3-159b-47cc-b41e-7d45ddf24320.png' -OutFile 'thumbs\A1.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [2/6] A2.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_0dda035f-0285-4a46-ab47-50af27050c85.png' -OutFile 'thumbs\A2.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [3/6] B1.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_c31d8b1c-1f77-4da1-9fcc-89007418da8c.png' -OutFile 'thumbs\B1.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [4/6] B2.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_2481f238-5722-4530-b628-5c660a2e8894.png' -OutFile 'thumbs\B2.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [5/6] C1.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_f4dfc7cf-e4eb-4f22-85fc-04311d1ee0d0.png' -OutFile 'thumbs\C1.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [6/6] C2.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260823_090534_e8426153-5b65-46c4-84b3-20836ee920d2.png' -OutFile 'thumbs\C2.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo.
echo Done. Files are in "%cd%\thumbs"
pause
