@echo off
rem Downloads 8 thumbnail candidates as A1.png .. D2.png
setlocal
cd /d "%~dp0"
if not exist "thumbs" mkdir "thumbs"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
echo A1  (300 DAYS)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\A1.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447279433_620bae6e_1785447280229_a59f65b7.png"
echo A2  (300 DAYS)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\A2.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447279665_686f7033_1785447280305_ce439294.png"
echo B1  (DAY 300)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\B1.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447281006_ac36b917_1785447281538_3232323f.png"
echo B2  (DAY 300)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\B2.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447281987_5e0867b2_1785447282749_760ac86d.png"
echo C1  (1 OF 8)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\C1.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447288758_8467392c_1785447289314_5e344dc6.png"
echo C2  (1 OF 8)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\C2.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447294323_a4f5fa8c_1785447295114_671ddcc2.png"
echo D1  (DAY 1)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\D1.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447293711_ae09b1ef_1785447293964_83de9ab3.png"
echo D2  (DAY 1)
curl -fL --retry 4 --connect-timeout 20 -# -o "thumbs\D2.png" "https://cdn.openart.ai/openart-ai/production/2026-07/create-image/tPUe0oyP9BreRzbjDCbt/image_1785447299860_0aaded0b_1785447300383_74f1e4d0.png"
echo.
echo Done - 8 files in thumbs\
pause
