@echo off
rem Lioness: 300 Days - downloads the 44 animated clips as 0_07.mp4 .. 14_14.mp4
setlocal
cd /d "%~dp0"
if not exist "lioness-clips" mkdir "lioness-clips"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 44 clips into lioness-clips\ ...
echo.
echo [1/44] 0_07.mp4
curl %CURLOPTS% -o "lioness-clips\0_07.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190903_23cbc7e9-8f0d-4a46-b022-4a391eeb74e7.mp4"
echo [2/44] 0_14.mp4
curl %CURLOPTS% -o "lioness-clips\0_14.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190905_c6d42f7c-1068-48d2-b93d-765f408b5f16.mp4"
echo [3/44] 0_21.mp4
curl %CURLOPTS% -o "lioness-clips\0_21.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190933_36be5045-35a3-4b2d-9e2d-63204b4ba3e7.mp4"
echo [4/44] 0_28.mp4
curl %CURLOPTS% -o "lioness-clips\0_28.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190909_ec33ff94-8e41-477e-8824-ee3fc098bd33.mp4"
echo [5/44] 0_35.mp4
curl %CURLOPTS% -o "lioness-clips\0_35.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190911_78361a81-bf2f-4b99-9f99-08a359939f74.mp4"
echo [6/44] 0_42.mp4
curl %CURLOPTS% -o "lioness-clips\0_42.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190912_fb6c7764-3eff-4763-bea3-16ccd6711b6a.mp4"
echo [7/44] 0_49.mp4
curl %CURLOPTS% -o "lioness-clips\0_49.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190934_76a43838-d19e-478f-bfcb-df7119823471.mp4"
echo [8/44] 0_56.mp4
curl %CURLOPTS% -o "lioness-clips\0_56.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190936_5a900913-738c-465e-a0cc-fad57b7a4fa9.mp4"
echo [9/44] 1_03.mp4
curl %CURLOPTS% -o "lioness-clips\1_03.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190938_20c8fc9e-9ebe-4132-9cdf-224af63b9328.mp4"
echo [10/44] 1_10.mp4
curl %CURLOPTS% -o "lioness-clips\1_10.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190940_108071fd-4990-4e3d-8162-06b7c01457a3.mp4"
echo [11/44] 1_17.mp4
curl %CURLOPTS% -o "lioness-clips\1_17.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190943_f4cf0ada-cb36-407d-bbc1-86406ca22570.mp4"
echo [12/44] 1_24.mp4
curl %CURLOPTS% -o "lioness-clips\1_24.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190950_d058dc6d-112e-43e4-88f7-ec1e8d07f52e.mp4"
echo [13/44] 1_31.mp4
curl %CURLOPTS% -o "lioness-clips\1_31.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190952_6d9b6cda-cad2-46a7-b22e-246243c6efca.mp4"
echo [14/44] 1_38.mp4
curl %CURLOPTS% -o "lioness-clips\1_38.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190955_0171a319-3ec7-4cdd-b455-19604c12ee56.mp4"
echo [15/44] 1_45.mp4
curl %CURLOPTS% -o "lioness-clips\1_45.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_190959_883e66b8-48ee-4d6f-908a-04c0538eb364.mp4"
echo [16/44] 3_02.mp4
curl %CURLOPTS% -o "lioness-clips\3_02.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191000_0e822e03-734e-4ac9-a6c5-8a86e615d4bb.mp4"
echo [17/44] 3_16.mp4
curl %CURLOPTS% -o "lioness-clips\3_16.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191002_2a69b935-6432-4723-8578-7b517313fa7b.mp4"
echo [18/44] 3_23.mp4
curl %CURLOPTS% -o "lioness-clips\3_23.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191015_ddf44d1f-8464-4a64-b125-8325ecc236ad.mp4"
echo [19/44] 3_37.mp4
curl %CURLOPTS% -o "lioness-clips\3_37.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191017_fb328308-49ad-4077-ba96-9fdb342670c4.mp4"
echo [20/44] 4_19.mp4
curl %CURLOPTS% -o "lioness-clips\4_19.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191019_397d2086-6b99-44ca-8c8a-c6e41d692dc1.mp4"
echo [21/44] 5_08.mp4
curl %CURLOPTS% -o "lioness-clips\5_08.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191021_8d2b8c2e-901e-4011-ab26-ce949294b143.mp4"
echo [22/44] 5_15.mp4
curl %CURLOPTS% -o "lioness-clips\5_15.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191023_ae912151-cd3a-4812-940f-b0c19249f62e.mp4"
echo [23/44] 5_22.mp4
curl %CURLOPTS% -o "lioness-clips\5_22.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191025_1ea1b12e-bef1-41fd-aeae-ee336b9a926c.mp4"
echo [24/44] 5_36.mp4
curl %CURLOPTS% -o "lioness-clips\5_36.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191032_25448d14-e2dc-46ce-9a27-987aac965f23.mp4"
echo [25/44] 6_11.mp4
curl %CURLOPTS% -o "lioness-clips\6_11.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191034_03634a7f-132b-41ce-a606-bff35bb3818d.mp4"
echo [26/44] 6_18.mp4
curl %CURLOPTS% -o "lioness-clips\6_18.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191036_bd503047-de0b-4d48-abbd-6b766403c8a5.mp4"
echo [27/44] 6_32.mp4
curl %CURLOPTS% -o "lioness-clips\6_32.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191039_194090ef-8fbf-4d90-b93e-a1330358901c.mp4"
echo [28/44] 7_35.mp4
curl %CURLOPTS% -o "lioness-clips\7_35.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191041_39b86bbf-a588-44f4-9de4-78ce1030b5b7.mp4"
echo [29/44] 7_42.mp4
curl %CURLOPTS% -o "lioness-clips\7_42.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191043_28ad619e-edcf-4a44-a8c2-9031471902c5.mp4"
echo [30/44] 8_03.mp4
curl %CURLOPTS% -o "lioness-clips\8_03.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191051_ed56fc1e-a32e-425b-a9fb-d88ee484f476.mp4"
echo [31/44] 8_38.mp4
curl %CURLOPTS% -o "lioness-clips\8_38.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191053_a9f8b402-e310-4058-a415-cd5dab43894f.mp4"
echo [32/44] 9_41.mp4
curl %CURLOPTS% -o "lioness-clips\9_41.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191055_15529b20-032f-4811-9f30-8e321c014e6c.mp4"
echo [33/44] 9_48.mp4
curl %CURLOPTS% -o "lioness-clips\9_48.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191057_103108b9-839e-46c7-bd55-79d0a9783aa9.mp4"
echo [34/44] 9_55.mp4
curl %CURLOPTS% -o "lioness-clips\9_55.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191100_5fa26478-c2dc-41d6-927b-f8afa2a5679b.mp4"
echo [35/44] 10_09.mp4
curl %CURLOPTS% -o "lioness-clips\10_09.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191102_8a4f10fa-1daa-4feb-979b-55a6e4a8d6ba.mp4"
echo [36/44] 11_19.mp4
curl %CURLOPTS% -o "lioness-clips\11_19.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191109_87c05d3b-9155-411f-8df3-7c923a90c321.mp4"
echo [37/44] 11_26.mp4
curl %CURLOPTS% -o "lioness-clips\11_26.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191111_316af0c7-28c0-413d-bb0c-ed2c572eb95b.mp4"
echo [38/44] 11_40.mp4
curl %CURLOPTS% -o "lioness-clips\11_40.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191113_afcbd764-dcdf-44af-b391-305c6e0e0bf6.mp4"
echo [39/44] 12_36.mp4
curl %CURLOPTS% -o "lioness-clips\12_36.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191116_1b6a2da4-48b8-429c-95f3-2158677b0164.mp4"
echo [40/44] 12_43.mp4
curl %CURLOPTS% -o "lioness-clips\12_43.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191118_e7e56a23-e97f-4d5b-a201-cf42eafdf702.mp4"
echo [41/44] 12_50.mp4
curl %CURLOPTS% -o "lioness-clips\12_50.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191120_ac569210-f2e7-4f51-b8b3-e04a0a2fb157.mp4"
echo [42/44] 13_18.mp4
curl %CURLOPTS% -o "lioness-clips\13_18.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191127_d60d8704-18e1-402e-ae2e-5344e1f00058.mp4"
echo [43/44] 14_07.mp4
curl %CURLOPTS% -o "lioness-clips\14_07.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191130_0106c400-1a38-40d9-b7a0-bacc9835931a.mp4"
echo [44/44] 14_14.mp4
curl %CURLOPTS% -o "lioness-clips\14_14.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_191133_9040ef2d-ecb7-4e44-8083-5d8e4da2f9f7.mp4"
echo.
echo Done.
dir /b "lioness-clips\*.mp4" | find /c ".mp4"
pause
