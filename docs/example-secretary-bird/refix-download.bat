@echo off
rem Secretary Bird - the 32 frames still new after the round-2 revert
setlocal
cd /d "%~dp0"
if not exist "secretary-fixed-32" mkdir "secretary-fixed-32"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 32 frames into secretary-fixed-32\ ...
echo.
echo [1/32] 1_17.png
curl %CURLOPTS% -o "secretary-fixed-32\1_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_9f4a17be-2019-49c1-bd70-921ae55c1167.png"
echo [2/32] 1_24.png
curl %CURLOPTS% -o "secretary-fixed-32\1_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_ba2b7445-6d5a-4165-8e6d-36d8bcb8f699.png"
echo [3/32] 1_31.png
curl %CURLOPTS% -o "secretary-fixed-32\1_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_e8fe3671-5607-4b4f-8dfc-0b352ebca4c4.png"
echo [4/32] 1_38.png
curl %CURLOPTS% -o "secretary-fixed-32\1_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_f5675614-52e9-4599-8988-37a840dc9db6.png"
echo [5/32] 1_45.png
curl %CURLOPTS% -o "secretary-fixed-32\1_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_fd7a6056-ed89-4c68-a4c2-d6ad752c042e.png"
echo [6/32] 1_52.png
curl %CURLOPTS% -o "secretary-fixed-32\1_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_00cd1f1c-fae9-4e34-8645-4532e6eda26a.png"
echo [7/32] 1_59.png
curl %CURLOPTS% -o "secretary-fixed-32\1_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_0a115dc9-3b6b-44e3-a208-5de53e03e67b.png"
echo [8/32] 2_06.png
curl %CURLOPTS% -o "secretary-fixed-32\2_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_3d15bd3a-4ba1-4014-9202-89ddc9d5f5b2.png"
echo [9/32] 2_13.png
curl %CURLOPTS% -o "secretary-fixed-32\2_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_f4db4302-a44b-49fd-87ac-a479f6dfd8f7.png"
echo [10/32] 2_20.png
curl %CURLOPTS% -o "secretary-fixed-32\2_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_84582e76-a701-448f-aac5-355b5de1ce15.png"
echo [11/32] 2_27.png
curl %CURLOPTS% -o "secretary-fixed-32\2_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_8bfe2086-0aa3-4971-a87d-28498a5fbc7b.png"
echo [12/32] 2_34.png
curl %CURLOPTS% -o "secretary-fixed-32\2_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_4abbd5e3-eaf3-4df7-81b5-e399672587bf.png"
echo [13/32] 2_41.png
curl %CURLOPTS% -o "secretary-fixed-32\2_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_c78a45ce-ea98-407c-8dcc-6b7593b2c8b4.png"
echo [14/32] 3_16.png
curl %CURLOPTS% -o "secretary-fixed-32\3_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_9b9588e7-e0ec-4e3a-90e2-4d9d078b6cfc.png"
echo [15/32] 3_23.png
curl %CURLOPTS% -o "secretary-fixed-32\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_b8afa5cf-dbed-4713-a9a7-9951d3e84e0e.png"
echo [16/32] 3_30.png
curl %CURLOPTS% -o "secretary-fixed-32\3_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_67a5bad1-c524-42af-8d21-8d1d378969fc.png"
echo [17/32] 3_37.png
curl %CURLOPTS% -o "secretary-fixed-32\3_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_c4ef9183-b60b-49c8-82e6-0ce318c3447f.png"
echo [18/32] 3_44.png
curl %CURLOPTS% -o "secretary-fixed-32\3_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_f0f91427-f100-441c-9c00-aacc5fc7d1e8.png"
echo [19/32] 3_58.png
curl %CURLOPTS% -o "secretary-fixed-32\3_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_13d1c7c8-1e0f-4a84-b3ae-b07b6d05f419.png"
echo [20/32] 4_12.png
curl %CURLOPTS% -o "secretary-fixed-32\4_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_93b27a11-324a-4a52-b728-737106dfd926.png"
echo [21/32] 4_33.png
curl %CURLOPTS% -o "secretary-fixed-32\4_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_e2f3f2ca-6280-4303-8c42-ea7f18e1c964.png"
echo [22/32] 4_54.png
curl %CURLOPTS% -o "secretary-fixed-32\4_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_ef2cf990-a839-4e74-9c88-4e7416eb2d3d.png"
echo [23/32] 5_01.png
curl %CURLOPTS% -o "secretary-fixed-32\5_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_93f66535-2c5b-4f56-b442-9c82fd81f969.png"
echo [24/32] 5_08.png
curl %CURLOPTS% -o "secretary-fixed-32\5_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_831f048f-103b-4d12-bf25-ec26de53757a.png"
echo [25/32] 5_15.png
curl %CURLOPTS% -o "secretary-fixed-32\5_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_a6a065bd-c972-4ad9-835b-0863d061fa56.png"
echo [26/32] 5_22.png
curl %CURLOPTS% -o "secretary-fixed-32\5_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_dc76b3d0-fffa-49f4-96b8-2fae487486e7.png"
echo [27/32] 5_29.png
curl %CURLOPTS% -o "secretary-fixed-32\5_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_181ee47e-dd83-4d12-bab0-535fffac33f2.png"
echo [28/32] 5_36.png
curl %CURLOPTS% -o "secretary-fixed-32\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_6da5dad0-f0e4-4624-9b25-6a975335b2bd.png"
echo [29/32] 5_57.png
curl %CURLOPTS% -o "secretary-fixed-32\5_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_de8666e2-fa71-4b71-97e0-ecc97a30d087.png"
echo [30/32] 6_04.png
curl %CURLOPTS% -o "secretary-fixed-32\6_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_c88c20d3-82bc-4212-8d32-2e517779ba99.png"
echo [31/32] 6_11.png
curl %CURLOPTS% -o "secretary-fixed-32\6_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_b17f39ea-8a55-43a0-b609-c2667222080c.png"
echo [32/32] 7_14.png
curl %CURLOPTS% -o "secretary-fixed-32\7_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132142_f95ecde8-7e55-4619-99ff-61b07bd0e85d.png"
echo.
echo Done. Files are in "%cd%\secretary-fixed-32"
pause
