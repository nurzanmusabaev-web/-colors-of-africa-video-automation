@echo off
rem Secretary Bird - downloads all 86 animated 7s 1080p clips
setlocal
cd /d "%~dp0"
if not exist "secretary-clips" mkdir "secretary-clips"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 86 clips into secretary-clips\ ...
echo.
echo [1/86] 0_00.mp4
curl %CURLOPTS% -o "secretary-clips\0_00.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141553_ed1a7e2e-d1da-46c5-bc66-fa06124fa03f.mp4"
echo [2/86] 0_07.mp4
curl %CURLOPTS% -o "secretary-clips\0_07.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141553_65f9b113-1e1a-4413-bd3e-d32500cef1e2.mp4"
echo [3/86] 0_14.mp4
curl %CURLOPTS% -o "secretary-clips\0_14.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_bbd68b13-7f61-49e4-8084-0a794c90e160.mp4"
echo [4/86] 0_21.mp4
curl %CURLOPTS% -o "secretary-clips\0_21.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141553_05c1d4d7-634d-4db7-b6d9-086f8a4ef745.mp4"
echo [5/86] 0_28.mp4
curl %CURLOPTS% -o "secretary-clips\0_28.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_7fdfa8b7-8363-4eef-933e-90fe7836daf6.mp4"
echo [6/86] 0_35.mp4
curl %CURLOPTS% -o "secretary-clips\0_35.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_87305c1e-142d-4442-930c-044f941cf0c4.mp4"
echo [7/86] 0_42.mp4
curl %CURLOPTS% -o "secretary-clips\0_42.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141553_c62d5ef4-82ca-48c7-8b82-ac3c3fd4f479.mp4"
echo [8/86] 0_49.mp4
curl %CURLOPTS% -o "secretary-clips\0_49.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_c663b334-4eb7-4c2e-93ac-20df6ddfd517.mp4"
echo [9/86] 0_56.mp4
curl %CURLOPTS% -o "secretary-clips\0_56.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_dc31f608-2681-43f4-b891-6ac5d7200c5d.mp4"
echo [10/86] 1_03.mp4
curl %CURLOPTS% -o "secretary-clips\1_03.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141553_ad3dbbec-cdc7-48f7-a65b-03389f3ae5df.mp4"
echo [11/86] 1_10.mp4
curl %CURLOPTS% -o "secretary-clips\1_10.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_9cb38813-67b7-4856-964b-80648ea70cf7.mp4"
echo [12/86] 1_17.mp4
curl %CURLOPTS% -o "secretary-clips\1_17.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_141513_53cf94cf-feeb-4a02-b3a2-1e9f8bd8143b.mp4"
echo [13/86] 1_24.mp4
curl %CURLOPTS% -o "secretary-clips\1_24.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_dcdfadb1-01a9-4641-9ecd-3fa18f707923.mp4"
echo [14/86] 1_31.mp4
curl %CURLOPTS% -o "secretary-clips\1_31.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_d5c91216-2880-44cf-b6dc-36975aea5d0f.mp4"
echo [15/86] 1_38.mp4
curl %CURLOPTS% -o "secretary-clips\1_38.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_990b4104-ff38-41d9-ad91-93f06e74685b.mp4"
echo [16/86] 1_45.mp4
curl %CURLOPTS% -o "secretary-clips\1_45.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_d214260e-cdd5-490a-b36e-15cc37ffdfe6.mp4"
echo [17/86] 1_52.mp4
curl %CURLOPTS% -o "secretary-clips\1_52.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_665ea9cd-b58e-4790-a7b5-d64c20c816a9.mp4"
echo [18/86] 1_59.mp4
curl %CURLOPTS% -o "secretary-clips\1_59.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_3bee9817-2d7e-4994-b16c-889b0642aeba.mp4"
echo [19/86] 2_06.mp4
curl %CURLOPTS% -o "secretary-clips\2_06.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_fcedd3f9-ab6c-434e-bb36-e40c81f2c97e.mp4"
echo [20/86] 2_13.mp4
curl %CURLOPTS% -o "secretary-clips\2_13.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_4d788f96-ec34-4322-805f-30d5aeaa50ce.mp4"
echo [21/86] 2_20.mp4
curl %CURLOPTS% -o "secretary-clips\2_20.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_e52ec3ab-dcd8-48a2-b1d0-d2baa24179a0.mp4"
echo [22/86] 2_27.mp4
curl %CURLOPTS% -o "secretary-clips\2_27.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_ca3d8e25-997c-44c4-9ae7-a50b50fe77fc.mp4"
echo [23/86] 2_34.mp4
curl %CURLOPTS% -o "secretary-clips\2_34.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_4a1ebb05-46bf-4e7e-975d-6c8ac90b87bd.mp4"
echo [24/86] 2_41.mp4
curl %CURLOPTS% -o "secretary-clips\2_41.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142018_30162d9f-bfa0-43e4-a236-f46fab02513f.mp4"
echo [25/86] 2_48.mp4
curl %CURLOPTS% -o "secretary-clips\2_48.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_d9fa0c23-150f-4046-bc55-cc41ffd38cbd.mp4"
echo [26/86] 2_55.mp4
curl %CURLOPTS% -o "secretary-clips\2_55.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_edbaa8c4-1630-4fa9-b53a-5dac36e32013.mp4"
echo [27/86] 3_02.mp4
curl %CURLOPTS% -o "secretary-clips\3_02.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_123ad845-544d-4152-9626-86ed8e12d868.mp4"
echo [28/86] 3_09.mp4
curl %CURLOPTS% -o "secretary-clips\3_09.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_12547aac-5d6d-4a6d-b2d7-a4f9024c4e4a.mp4"
echo [29/86] 3_16.mp4
curl %CURLOPTS% -o "secretary-clips\3_16.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_c3c80923-7ec5-4c51-afb4-8edba39b1172.mp4"
echo [30/86] 3_23.mp4
curl %CURLOPTS% -o "secretary-clips\3_23.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_424077c7-83cd-44bc-a370-7b95ee45fc88.mp4"
echo [31/86] 3_30.mp4
curl %CURLOPTS% -o "secretary-clips\3_30.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_e5527e49-c26b-4f62-a289-f754f35ee9e8.mp4"
echo [32/86] 3_37.mp4
curl %CURLOPTS% -o "secretary-clips\3_37.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_4a5d9561-6c58-4d02-97a5-2feb066e571d.mp4"
echo [33/86] 3_44.mp4
curl %CURLOPTS% -o "secretary-clips\3_44.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_5a59ff45-bc2f-4f5f-a5ab-34f5bbbbd31c.mp4"
echo [34/86] 3_51.mp4
curl %CURLOPTS% -o "secretary-clips\3_51.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_2325de62-ec70-41ce-83fc-304e94de7ce9.mp4"
echo [35/86] 3_58.mp4
curl %CURLOPTS% -o "secretary-clips\3_58.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142143_b4c8ecfb-52f5-4918-be53-79714428f9a6.mp4"
echo [36/86] 4_05.mp4
curl %CURLOPTS% -o "secretary-clips\4_05.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_7e0c34d0-5c67-41e7-be09-b52bec201190.mp4"
echo [37/86] 4_12.mp4
curl %CURLOPTS% -o "secretary-clips\4_12.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_bb000e83-2d4e-444e-8ec0-c96ff9923858.mp4"
echo [38/86] 4_19.mp4
curl %CURLOPTS% -o "secretary-clips\4_19.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_40d2eddb-03c3-47e5-b1e9-c6c12ad26149.mp4"
echo [39/86] 4_26.mp4
curl %CURLOPTS% -o "secretary-clips\4_26.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_76fb3551-8977-4af9-a039-c87b918518e3.mp4"
echo [40/86] 4_33.mp4
curl %CURLOPTS% -o "secretary-clips\4_33.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_05e2452d-b3f0-407f-b0f0-624b50a46e41.mp4"
echo [41/86] 4_40.mp4
curl %CURLOPTS% -o "secretary-clips\4_40.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_0a0a59cd-4a58-42b9-8a2f-88b9bebcc136.mp4"
echo [42/86] 4_47.mp4
curl %CURLOPTS% -o "secretary-clips\4_47.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_34a81745-da83-42c2-a280-f5d0063d2557.mp4"
echo [43/86] 4_54.mp4
curl %CURLOPTS% -o "secretary-clips\4_54.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_43459888-e6eb-4269-9e93-88ca72842f90.mp4"
echo [44/86] 5_01.mp4
curl %CURLOPTS% -o "secretary-clips\5_01.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_5cedfe47-b5c9-44ba-b145-b0e2f4675b1f.mp4"
echo [45/86] 5_08.mp4
curl %CURLOPTS% -o "secretary-clips\5_08.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_3442e45e-32f3-46aa-b2f9-24ad8586bc15.mp4"
echo [46/86] 5_15.mp4
curl %CURLOPTS% -o "secretary-clips\5_15.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142308_c996ea39-ac62-4d61-8cdb-9ec827a840bc.mp4"
echo [47/86] 5_22.mp4
curl %CURLOPTS% -o "secretary-clips\5_22.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142309_0596759b-2454-4d3f-b22a-bcd97bc06897.mp4"
echo [48/86] 5_29.mp4
curl %CURLOPTS% -o "secretary-clips\5_29.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_0e365c1d-d724-4122-8f53-30d10aa02519.mp4"
echo [49/86] 5_36.mp4
curl %CURLOPTS% -o "secretary-clips\5_36.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_617e5bcb-a619-4296-ae1a-ac0c29b50ba7.mp4"
echo [50/86] 5_43.mp4
curl %CURLOPTS% -o "secretary-clips\5_43.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_34d01cd2-6060-41a6-93bf-7bcbef1aff0a.mp4"
echo [51/86] 5_50.mp4
curl %CURLOPTS% -o "secretary-clips\5_50.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_6c2301e8-8a3a-4130-8ebf-6e89dce19e78.mp4"
echo [52/86] 5_57.mp4
curl %CURLOPTS% -o "secretary-clips\5_57.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_469b231b-c511-49ee-8943-2a1013239679.mp4"
echo [53/86] 6_04.mp4
curl %CURLOPTS% -o "secretary-clips\6_04.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_33dc7b4f-ae38-469f-ba07-8cec740e925d.mp4"
echo [54/86] 6_11.mp4
curl %CURLOPTS% -o "secretary-clips\6_11.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_9557dcfe-87b0-44c4-be08-e68c2b068916.mp4"
echo [55/86] 6_18.mp4
curl %CURLOPTS% -o "secretary-clips\6_18.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_4fe76206-a350-45f6-8c05-a2d5dc6d3df1.mp4"
echo [56/86] 6_25.mp4
curl %CURLOPTS% -o "secretary-clips\6_25.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_b0690da7-4c77-49f0-b50b-c0abb709788d.mp4"
echo [57/86] 6_32.mp4
curl %CURLOPTS% -o "secretary-clips\6_32.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_91fbf2b5-fd71-41b0-a470-90c14f8b324a.mp4"
echo [58/86] 6_39.mp4
curl %CURLOPTS% -o "secretary-clips\6_39.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_c60c3683-d7d3-4104-98f0-58dfbcac04a1.mp4"
echo [59/86] 6_46.mp4
curl %CURLOPTS% -o "secretary-clips\6_46.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142347_d0497901-fcfc-46a9-b82c-979f7d372e15.mp4"
echo [60/86] 6_53.mp4
curl %CURLOPTS% -o "secretary-clips\6_53.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_f93d532a-e8f6-4542-8f17-bf3d29c476ca.mp4"
echo [61/86] 7_00.mp4
curl %CURLOPTS% -o "secretary-clips\7_00.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_abd986a3-a477-44ef-9fb0-8b1be73da7ce.mp4"
echo [62/86] 7_07.mp4
curl %CURLOPTS% -o "secretary-clips\7_07.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_f3e0e122-ae6c-41f1-b94b-2ca44d607d61.mp4"
echo [63/86] 7_14.mp4
curl %CURLOPTS% -o "secretary-clips\7_14.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_62a45d2b-aa6c-48c4-9b48-ce4c85ed7dcb.mp4"
echo [64/86] 7_21.mp4
curl %CURLOPTS% -o "secretary-clips\7_21.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_eecfd420-62b9-47fe-ae38-6d7f1a805f83.mp4"
echo [65/86] 7_28.mp4
curl %CURLOPTS% -o "secretary-clips\7_28.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_7d264f52-2e7a-47f2-aa5c-63fd020e3fc4.mp4"
echo [66/86] 7_35.mp4
curl %CURLOPTS% -o "secretary-clips\7_35.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_bae3ae77-a756-46cf-8889-04302b366da0.mp4"
echo [67/86] 7_42.mp4
curl %CURLOPTS% -o "secretary-clips\7_42.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_dd2c0289-b3f0-40bb-b791-fc319d7e60b7.mp4"
echo [68/86] 7_49.mp4
curl %CURLOPTS% -o "secretary-clips\7_49.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_25f0a89f-fcdf-4ee4-b8cd-d0ceddad0002.mp4"
echo [69/86] 7_56.mp4
curl %CURLOPTS% -o "secretary-clips\7_56.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_4d6d759c-9086-44c1-ad09-cc2725c4b65a.mp4"
echo [70/86] 8_03.mp4
curl %CURLOPTS% -o "secretary-clips\8_03.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_4f0aa0c6-9601-47e8-8251-bd4af36bf787.mp4"
echo [71/86] 8_10.mp4
curl %CURLOPTS% -o "secretary-clips\8_10.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142424_b0ec5aba-23e2-4e0c-9b14-fc64ca420756.mp4"
echo [72/86] 8_17.mp4
curl %CURLOPTS% -o "secretary-clips\8_17.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_4007402a-530c-4c00-b92a-3e6ae2b38cb0.mp4"
echo [73/86] 8_24.mp4
curl %CURLOPTS% -o "secretary-clips\8_24.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_9eddbade-ab28-4034-9aa9-c44e8703cadb.mp4"
echo [74/86] 8_31.mp4
curl %CURLOPTS% -o "secretary-clips\8_31.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_5b6d8922-6678-4065-a16b-d00cbee603ae.mp4"
echo [75/86] 8_38.mp4
curl %CURLOPTS% -o "secretary-clips\8_38.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_95d69de3-4069-4886-8dc2-c8ecd77e46cc.mp4"
echo [76/86] 8_45.mp4
curl %CURLOPTS% -o "secretary-clips\8_45.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142949_9c6df9b5-8fe8-4f29-8ab4-dcb53358b675.mp4"
echo [77/86] 8_52.mp4
curl %CURLOPTS% -o "secretary-clips\8_52.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_1d9dcd07-668d-4119-a9e1-38a28a40018b.mp4"
echo [78/86] 8_59.mp4
curl %CURLOPTS% -o "secretary-clips\8_59.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_396f8690-43cb-4da6-8f23-a6d099270920.mp4"
echo [79/86] 9_06.mp4
curl %CURLOPTS% -o "secretary-clips\9_06.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_cf37d65f-6cf6-4afc-96de-01bd94cd5ff9.mp4"
echo [80/86] 9_13.mp4
curl %CURLOPTS% -o "secretary-clips\9_13.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_0b97847d-cfb9-4b11-a782-7232c7255bf1.mp4"
echo [81/86] 9_20.mp4
curl %CURLOPTS% -o "secretary-clips\9_20.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_1cda75bf-dd04-4366-a54f-492c7d4126b5.mp4"
echo [82/86] 9_27.mp4
curl %CURLOPTS% -o "secretary-clips\9_27.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142505_22e0431d-565a-4425-953c-a164fd52bc92.mp4"
echo [83/86] 9_34.mp4
curl %CURLOPTS% -o "secretary-clips\9_34.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142949_2ff48bd8-e2e5-47d2-803a-01831bf0f030.mp4"
echo [84/86] 9_41.mp4
curl %CURLOPTS% -o "secretary-clips\9_41.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142949_5ff5f0a0-0467-4a90-ad26-64254c90303b.mp4"
echo [85/86] 9_48.mp4
curl %CURLOPTS% -o "secretary-clips\9_48.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142949_ba1e8846-5b9a-4e45-9803-888daa3208ae.mp4"
echo [86/86] 9_55.mp4
curl %CURLOPTS% -o "secretary-clips\9_55.mp4" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_142949_8a81a085-d040-48db-87c5-ed3a56211f43.mp4"
echo.
echo Done. Files are in "%cd%\secretary-clips"
pause
