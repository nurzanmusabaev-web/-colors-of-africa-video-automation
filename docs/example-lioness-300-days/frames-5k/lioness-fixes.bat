@echo off
rem Lioness: 300 Days - re-downloads ONLY the 24 corrected frames, overwriting the old ones.
rem Point it at the folder that already holds your 123 frames, or just double-click it there.
setlocal
cd /d "%~dp0"
if not exist "lioness-frames" mkdir "lioness-frames"
where curl.exe >nul 2>&1 || (echo curl.exe not found - needs Windows 10 build 1803 or newer & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Re-downloading 24 corrected frames into lioness-frames\ ...
echo.
echo [1/24] 0_42.png
curl %CURLOPTS% -o "lioness-frames\0_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175037_75a27c6b-3139-4e60-b110-8cfd42ddc665.png"
echo [2/24] 3_09.png
curl %CURLOPTS% -o "lioness-frames\3_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175040_f9b27ac2-21e7-49bd-acf5-aaab4cdb136e.png"
echo [3/24] 3_23.png
curl %CURLOPTS% -o "lioness-frames\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175045_7ba959b4-4bc2-428f-a399-e58ac2385063.png"
echo [4/24] 5_36.png
curl %CURLOPTS% -o "lioness-frames\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175048_ae684de3-53a4-44aa-bcf7-8c4fd8543ddc.png"
echo [5/24] 5_43.png
curl %CURLOPTS% -o "lioness-frames\5_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175053_6673aef1-bd78-487b-a6ff-df8d023fbcdb.png"
echo [6/24] 7_00.png
curl %CURLOPTS% -o "lioness-frames\7_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175055_ac5ea489-c51c-4535-9d45-30824013ef19.png"
echo [7/24] 8_17.png
curl %CURLOPTS% -o "lioness-frames\8_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175104_c207ce01-d12a-41f0-ab86-4bc20143e131.png"
echo [8/24] 8_45.png
curl %CURLOPTS% -o "lioness-frames\8_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175108_9f4b3b52-1e0c-40d0-9bc6-f3575f6951d4.png"
echo [9/24] 9_13.png
curl %CURLOPTS% -o "lioness-frames\9_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175111_740f0fcc-a222-4c3e-ba72-5c43650c0805.png"
echo [10/24] 10_02.png
curl %CURLOPTS% -o "lioness-frames\10_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175114_d12ebba1-ab3e-41d7-8ab4-db0bca321682.png"
echo [11/24] 10_37.png
curl %CURLOPTS% -o "lioness-frames\10_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175117_5a2a76e3-e579-47cf-ba60-e1d302a02bf6.png"
echo [12/24] 10_51.png
curl %CURLOPTS% -o "lioness-frames\10_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175120_73855786-8ad1-4ac1-a31d-06af4095f52d.png"
echo [13/24] 11_05.png
curl %CURLOPTS% -o "lioness-frames\11_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175127_260fff6e-0c1e-4e5a-8647-038294c68972.png"
echo [14/24] 11_12.png
curl %CURLOPTS% -o "lioness-frames\11_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175131_ec13cbe0-62ee-4944-9580-12538bb40d00.png"
echo [15/24] 11_33.png
curl %CURLOPTS% -o "lioness-frames\11_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175134_caa256d1-d5af-4f70-93f2-354221f1ebf6.png"
echo [16/24] 11_40.png
curl %CURLOPTS% -o "lioness-frames\11_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175137_2a78ac19-11d3-4d1d-90e1-e81d536874be.png"
echo [17/24] 11_54.png
curl %CURLOPTS% -o "lioness-frames\11_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175140_1561afaf-5fa3-4bf1-b139-29545c978959.png"
echo [18/24] 12_15.png
curl %CURLOPTS% -o "lioness-frames\12_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175149_523b5b7f-6301-453a-adb2-457c714ea097.png"
echo [19/24] 12_22.png
curl %CURLOPTS% -o "lioness-frames\12_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175152_521d587c-468a-4aee-9007-bd2380d23f1e.png"
echo [20/24] 12_29.png
curl %CURLOPTS% -o "lioness-frames\12_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175156_2da17fc0-8e6f-44ef-85b8-35ef27970222.png"
echo [21/24] 12_57.png
curl %CURLOPTS% -o "lioness-frames\12_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175208_61c8f813-4368-4b0a-ba96-17718b656fea.png"
echo [22/24] 13_32.png
curl %CURLOPTS% -o "lioness-frames\13_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175201_81e81c2a-3744-46a9-95df-2d6c70602e81.png"
echo [23/24] 14_00.png
curl %CURLOPTS% -o "lioness-frames\14_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175211_e0d72206-a085-4885-adf8-531347c94d40.png"
echo [24/24] 14_14.png
curl %CURLOPTS% -o "lioness-frames\14_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_175214_67aca22e-1357-457b-ab55-b317e605ff86.png"
echo.
echo Done - 24 frames replaced.
pause
