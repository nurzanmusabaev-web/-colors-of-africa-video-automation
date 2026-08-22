@echo off
rem African Penguin storyboard frames - 78 images (nano_banana_pro, bright coastal palette)
rem Uses PowerShell to download (built into every Windows 7/8/10/11), no curl.exe needed.
setlocal
cd /d "%~dp0"
if not exist "frames" mkdir "frames"
echo Downloading 78 frames into frames\ ...
echo This can take a couple of minutes, please wait.
echo.
echo [1/78] 0_00.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_19dcca8b-c6a6-4b93-8a4e-fe7fa300e125.png' -OutFile 'frames\0_00.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [2/78] 0_07.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_d1a31e45-20b1-407b-8d22-2d169f3978b5.png' -OutFile 'frames\0_07.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [3/78] 0_14.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_f9382450-c014-4f34-91c4-6efdf2f1fa7c.png' -OutFile 'frames\0_14.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [4/78] 0_21.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_e946c159-280f-4973-a91e-c0e3d4dfa95d.png' -OutFile 'frames\0_21.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [5/78] 0_28.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_992c8f54-0c66-4b2b-b6e0-7b08dee43a8e.png' -OutFile 'frames\0_28.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [6/78] 0_35.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_ebbdfd2f-25bd-4e99-a06e-4a4225633369.png' -OutFile 'frames\0_35.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [7/78] 0_42.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260822_172351_7d59a652-1ddd-4068-9399-ce3cc2816ba8.png' -OutFile 'frames\0_42.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [8/78] 0_49.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_a0e7649b-639c-41f3-bb4e-698b01fe4161.png' -OutFile 'frames\0_49.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [9/78] 0_56.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_3488801e-15ff-4c59-8410-d729079d353e.png' -OutFile 'frames\0_56.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [10/78] 1_03.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_9a86e312-8147-4123-96a3-5e1e76f608c2.png' -OutFile 'frames\1_03.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [11/78] 1_10.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164226_1d30f688-7d5f-4586-b7b1-39287273db13.png' -OutFile 'frames\1_10.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [12/78] 1_17.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260822_172352_fd0e8ddb-bfdd-4866-98a6-cc64199bf519.png' -OutFile 'frames\1_17.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [13/78] 1_24.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260822_172351_5c1c462e-c628-4c15-978f-8deb0983d757.png' -OutFile 'frames\1_24.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [14/78] 1_31.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_36892d2e-b5bc-4671-be1c-14cf5feff34b.png' -OutFile 'frames\1_31.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [15/78] 1_38.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_3d3f98a6-e0d4-4a5c-b6aa-0b39a1fb70ac.png' -OutFile 'frames\1_38.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [16/78] 1_45.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_3b5b4d8a-99cd-473d-beec-bb47a8fca91f.png' -OutFile 'frames\1_45.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [17/78] 1_52.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_86feaa2d-b300-437e-b5fa-37b599e00e46.png' -OutFile 'frames\1_52.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [18/78] 1_59.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_5c18c608-032f-466e-a68d-58dbc17b87dd.png' -OutFile 'frames\1_59.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [19/78] 2_06.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_85f8d90d-e704-4285-9305-6c25912d2893.png' -OutFile 'frames\2_06.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [20/78] 2_13.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_e46d16ce-db37-4f6c-8151-de1583e8a0ad.png' -OutFile 'frames\2_13.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [21/78] 2_20.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_d18a501b-91ef-4594-b3d3-26b18b3bcb4a.png' -OutFile 'frames\2_20.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [22/78] 2_27.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_941f8658-081c-4d44-8f3e-2d7da30bbd8a.png' -OutFile 'frames\2_27.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [23/78] 2_34.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_df976e78-26cc-4627-9bf7-ec956ee3ef75.png' -OutFile 'frames\2_34.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [24/78] 2_41.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164355_7c3a3a21-37cd-4717-9ee3-cd377b25ba11.png' -OutFile 'frames\2_41.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [25/78] 2_48.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_89194d48-6208-4fd5-9e82-1eec5dcabe3e.png' -OutFile 'frames\2_48.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [26/78] 2_55.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_c042ae1a-b39e-4b3e-bd78-83e7a1358c32.png' -OutFile 'frames\2_55.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [27/78] 3_02.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_1d2d2483-6dc6-4ab3-817e-71640432b454.png' -OutFile 'frames\3_02.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [28/78] 3_09.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_c6f096f4-1a1f-4d7e-94f0-85eee7b8e954.png' -OutFile 'frames\3_09.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [29/78] 3_16.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_69755b61-21fa-43e8-9910-4cad4bfb0ec1.png' -OutFile 'frames\3_16.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [30/78] 3_23.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_7fdf7d8a-1618-44a6-8793-193c88be9322.png' -OutFile 'frames\3_23.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [31/78] 3_30.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_a81fb47c-25d5-4251-ab3a-12d875cdf149.png' -OutFile 'frames\3_30.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [32/78] 3_37.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_21ad5fdf-aa3f-46b9-8bd9-c11f699bd016.png' -OutFile 'frames\3_37.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [33/78] 3_44.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_8f9d3f20-13bf-4ccf-99b3-aaf25a925f26.png' -OutFile 'frames\3_44.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [34/78] 3_51.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_0bed20ca-c814-4556-b537-9f07c6024af9.png' -OutFile 'frames\3_51.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [35/78] 3_58.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164443_6f831c9c-3ace-4b3a-853d-5a5746676da4.png' -OutFile 'frames\3_58.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [36/78] 4_05.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164442_6129ec10-6839-4903-92a3-7f5a890f0aea.png' -OutFile 'frames\4_05.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [37/78] 4_12.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_3f5f8eac-dc32-44c4-8cfe-67b2e88c6be3.png' -OutFile 'frames\4_12.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [38/78] 4_19.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_a3764fda-9145-4a5a-a32f-a25903e3d892.png' -OutFile 'frames\4_19.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [39/78] 4_26.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_15d93334-981c-4fa7-afd3-112831e32c19.png' -OutFile 'frames\4_26.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [40/78] 4_33.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_61d85de3-fb08-438a-8470-7c81abc17634.png' -OutFile 'frames\4_33.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [41/78] 4_40.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_a1f046bc-9fb8-4dc8-90d0-38f979b6374e.png' -OutFile 'frames\4_40.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [42/78] 4_47.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_bee39009-94ed-4c69-b555-23eeae1be97f.png' -OutFile 'frames\4_47.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [43/78] 4_54.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_a9a6a04e-005f-4edd-80b1-b112e29d7b3b.png' -OutFile 'frames\4_54.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [44/78] 5_01.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164538_c1a2d334-acc5-442b-948f-50b39a081033.png' -OutFile 'frames\5_01.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [45/78] 5_08.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164538_bcdf41d3-a4b1-4547-bcad-d51a5644bf32.png' -OutFile 'frames\5_08.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [46/78] 5_15.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_c80cc459-cb4d-48a9-9778-9c1f48db5660.png' -OutFile 'frames\5_15.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [47/78] 5_22.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164538_33cd2950-8476-4b98-b1b2-67e44a5754af.png' -OutFile 'frames\5_22.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [48/78] 5_29.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164537_92000ded-4682-4d17-a178-a0675ea70f61.png' -OutFile 'frames\5_29.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [49/78] 5_36.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_bc1f6fa3-fdb7-4582-932b-37953e5eecc6.png' -OutFile 'frames\5_36.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [50/78] 5_43.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_57117b29-2f8d-429c-af6b-9d070ec74969.png' -OutFile 'frames\5_43.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [51/78] 5_50.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_a952f8b5-cb15-4443-b83d-455a341a8076.png' -OutFile 'frames\5_50.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [52/78] 5_57.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164633_95b3f1e8-76fb-4a97-a33a-2d13d3444075.png' -OutFile 'frames\5_57.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [53/78] 6_04.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_eeda8516-e2a0-4528-b583-47b73cb87160.png' -OutFile 'frames\6_04.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [54/78] 6_11.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_a1258130-dac7-4807-a44d-5591628a2241.png' -OutFile 'frames\6_11.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [55/78] 6_18.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_3ece499c-db10-4f0d-a32a-3c629089a16a.png' -OutFile 'frames\6_18.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [56/78] 6_25.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164633_343ad5f2-e354-4569-a08f-b021ce3eac1f.png' -OutFile 'frames\6_25.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [57/78] 6_32.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_52fee1cb-117a-4ddf-adea-b534e698b312.png' -OutFile 'frames\6_32.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [58/78] 6_39.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_81ebbe1f-904b-4fc9-a235-2aecfa798928.png' -OutFile 'frames\6_39.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [59/78] 6_46.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164634_fe185ad9-039f-41ca-bd2e-740eabee1b04.png' -OutFile 'frames\6_46.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [60/78] 6_53.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164633_7047774e-f7f5-4ca1-9a81-75511a19193c.png' -OutFile 'frames\6_53.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [61/78] 7_00.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_945638fc-3bd1-41b4-9917-020230b5f9d2.png' -OutFile 'frames\7_00.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [62/78] 7_07.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_f2c6b9f9-2849-4004-b8f8-4b7f02e60a9c.png' -OutFile 'frames\7_07.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [63/78] 7_14.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_5521c050-c553-4147-afe9-0d45eb92da34.png' -OutFile 'frames\7_14.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [64/78] 7_21.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_d70ba9a3-7618-4e9b-a4ac-8955dcd83567.png' -OutFile 'frames\7_21.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [65/78] 7_28.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164745_ddd4c189-4f43-4762-917b-9bc3fe07e366.png' -OutFile 'frames\7_28.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [66/78] 7_35.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_cabfead0-e62a-4d36-ae7f-4e2b46b69e17.png' -OutFile 'frames\7_35.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [67/78] 7_42.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_310763e5-46e2-46ae-85a7-970213157d06.png' -OutFile 'frames\7_42.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [68/78] 7_49.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_ed910bed-0ad0-4f05-83ec-03be4430bf38.png' -OutFile 'frames\7_49.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [69/78] 7_56.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164745_a2a69ac9-2acf-4fdb-8e00-21931c7753dd.png' -OutFile 'frames\7_56.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [70/78] 8_03.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_8daa8331-a0d5-4165-8f67-ce41dd8a019a.png' -OutFile 'frames\8_03.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [71/78] 8_10.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260822_172352_a6ef1912-e4be-428b-8b4d-7698a75a97eb.png' -OutFile 'frames\8_10.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [72/78] 8_17.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164744_9fcc32d3-0183-4cae-8722-5ebf85aa8e4c.png' -OutFile 'frames\8_17.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [73/78] 8_24.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164814_09cbce7c-b8c4-41d5-a7e5-a4f2489274e4.png' -OutFile 'frames\8_24.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [74/78] 8_31.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164813_f0b05723-2c46-4a94-8791-67b52409dcba.png' -OutFile 'frames\8_31.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [75/78] 8_38.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164813_4257424d-566d-4a08-808b-9c5a0f2b1bcc.png' -OutFile 'frames\8_38.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [76/78] 8_45.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164813_d64fb853-5e36-45a0-9d74-a475036d10e6.png' -OutFile 'frames\8_45.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [77/78] 8_52.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164813_72144c93-ba80-4bb4-ae1d-2df35b430420.png' -OutFile 'frames\8_52.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo [78/78] 8_59.png
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260820_164813_948cf885-1001-439f-b8cc-8a61870c4c68.png' -OutFile 'frames\8_59.png' -UseBasicParsing } catch { Write-Host '  FAILED:' $_.Exception.Message }"
echo.
echo Done. Files are in "%cd%\frames"
pause
