@echo off
rem Secretary Bird - all 86 final frames, one folder
setlocal
cd /d "%~dp0"
if not exist "secretary-final" mkdir "secretary-final"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 86 frames into secretary-final\ ...
echo.
echo [1/86] 0_00.png
curl %CURLOPTS% -o "secretary-final\0_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_e82cd712-d2ce-40cd-adb6-8939ce0bd3e4.png"
echo [2/86] 0_07.png
curl %CURLOPTS% -o "secretary-final\0_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_f9d64886-60d3-4586-9839-43574e9caa57.png"
echo [3/86] 0_14.png
curl %CURLOPTS% -o "secretary-final\0_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061732_3e9ba676-0942-4725-b8ad-32e98916d43a.png"
echo [4/86] 0_21.png
curl %CURLOPTS% -o "secretary-final\0_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_dd3aa3c5-0219-40ba-b44b-320e842f47df.png"
echo [5/86] 0_28.png
curl %CURLOPTS% -o "secretary-final\0_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_ff7dff1d-2d28-4f2e-95a1-f276c8e0441f.png"
echo [6/86] 0_35.png
curl %CURLOPTS% -o "secretary-final\0_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_3f6c4fc6-12eb-4204-875c-11efdbec1f94.png"
echo [7/86] 0_42.png
curl %CURLOPTS% -o "secretary-final\0_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_42f0478e-8b2a-46cb-b8a0-0fa11476b081.png"
echo [8/86] 0_49.png
curl %CURLOPTS% -o "secretary-final\0_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_15393c28-68cb-4d3c-bc60-164c82890df3.png"
echo [9/86] 0_56.png
curl %CURLOPTS% -o "secretary-final\0_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_a67c949c-9970-4439-a98d-c3346e0c6c1c.png"
echo [10/86] 1_03.png
curl %CURLOPTS% -o "secretary-final\1_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_31ce73c2-a7cb-4e56-9809-8c6b7b2ace80.png"
echo [11/86] 1_10.png
curl %CURLOPTS% -o "secretary-final\1_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_f500fa5d-2e82-495e-beea-d12ada9bf1e2.png"
echo [12/86] 1_17.png
curl %CURLOPTS% -o "secretary-final\1_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_9f4a17be-2019-49c1-bd70-921ae55c1167.png"
echo [13/86] 1_24.png
curl %CURLOPTS% -o "secretary-final\1_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_ba2b7445-6d5a-4165-8e6d-36d8bcb8f699.png"
echo [14/86] 1_31.png
curl %CURLOPTS% -o "secretary-final\1_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_e8fe3671-5607-4b4f-8dfc-0b352ebca4c4.png"
echo [15/86] 1_38.png
curl %CURLOPTS% -o "secretary-final\1_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_f5675614-52e9-4599-8988-37a840dc9db6.png"
echo [16/86] 1_45.png
curl %CURLOPTS% -o "secretary-final\1_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_fd7a6056-ed89-4c68-a4c2-d6ad752c042e.png"
echo [17/86] 1_52.png
curl %CURLOPTS% -o "secretary-final\1_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_00cd1f1c-fae9-4e34-8645-4532e6eda26a.png"
echo [18/86] 1_59.png
curl %CURLOPTS% -o "secretary-final\1_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_0a115dc9-3b6b-44e3-a208-5de53e03e67b.png"
echo [19/86] 2_06.png
curl %CURLOPTS% -o "secretary-final\2_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_3d15bd3a-4ba1-4014-9202-89ddc9d5f5b2.png"
echo [20/86] 2_13.png
curl %CURLOPTS% -o "secretary-final\2_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_f4db4302-a44b-49fd-87ac-a479f6dfd8f7.png"
echo [21/86] 2_20.png
curl %CURLOPTS% -o "secretary-final\2_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_84582e76-a701-448f-aac5-355b5de1ce15.png"
echo [22/86] 2_27.png
curl %CURLOPTS% -o "secretary-final\2_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_8bfe2086-0aa3-4971-a87d-28498a5fbc7b.png"
echo [23/86] 2_34.png
curl %CURLOPTS% -o "secretary-final\2_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131803_4abbd5e3-eaf3-4df7-81b5-e399672587bf.png"
echo [24/86] 2_41.png
curl %CURLOPTS% -o "secretary-final\2_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_c78a45ce-ea98-407c-8dcc-6b7593b2c8b4.png"
echo [25/86] 2_48.png
curl %CURLOPTS% -o "secretary-final\2_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_77258c53-e947-490e-b9ee-772e684921c2.png"
echo [26/86] 2_55.png
curl %CURLOPTS% -o "secretary-final\2_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_cf5c5440-d27f-4a9f-87a7-968e883c92e2.png"
echo [27/86] 3_02.png
curl %CURLOPTS% -o "secretary-final\3_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_9a0eed03-b781-47e0-819a-d396b71cf647.png"
echo [28/86] 3_09.png
curl %CURLOPTS% -o "secretary-final\3_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_6effed81-d3e2-4722-a299-2334c3df70af.png"
echo [29/86] 3_16.png
curl %CURLOPTS% -o "secretary-final\3_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_9b9588e7-e0ec-4e3a-90e2-4d9d078b6cfc.png"
echo [30/86] 3_23.png
curl %CURLOPTS% -o "secretary-final\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_b8afa5cf-dbed-4713-a9a7-9951d3e84e0e.png"
echo [31/86] 3_30.png
curl %CURLOPTS% -o "secretary-final\3_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_67a5bad1-c524-42af-8d21-8d1d378969fc.png"
echo [32/86] 3_37.png
curl %CURLOPTS% -o "secretary-final\3_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_c4ef9183-b60b-49c8-82e6-0ce318c3447f.png"
echo [33/86] 3_44.png
curl %CURLOPTS% -o "secretary-final\3_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_f0f91427-f100-441c-9c00-aacc5fc7d1e8.png"
echo [34/86] 3_51.png
curl %CURLOPTS% -o "secretary-final\3_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_675df400-2fc5-41a5-a2ab-fe43df42f328.png"
echo [35/86] 3_58.png
curl %CURLOPTS% -o "secretary-final\3_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_13d1c7c8-1e0f-4a84-b3ae-b07b6d05f419.png"
echo [36/86] 4_05.png
curl %CURLOPTS% -o "secretary-final\4_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_0c3bb6e0-6756-4763-8eb0-4e9218db288a.png"
echo [37/86] 4_12.png
curl %CURLOPTS% -o "secretary-final\4_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_93b27a11-324a-4a52-b728-737106dfd926.png"
echo [38/86] 4_19.png
curl %CURLOPTS% -o "secretary-final\4_19.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_5c48b539-7735-4725-9082-d2a4b6b2bc81.png"
echo [39/86] 4_26.png
curl %CURLOPTS% -o "secretary-final\4_26.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_a58dac06-1355-47c0-9a5b-b7f029582957.png"
echo [40/86] 4_33.png
curl %CURLOPTS% -o "secretary-final\4_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_e2f3f2ca-6280-4303-8c42-ea7f18e1c964.png"
echo [41/86] 4_40.png
curl %CURLOPTS% -o "secretary-final\4_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_95cd6260-2467-420a-96d8-cd61016a4a34.png"
echo [42/86] 4_47.png
curl %CURLOPTS% -o "secretary-final\4_47.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_123e0e45-9d57-4e6f-9af6-7097e84c8f74.png"
echo [43/86] 4_54.png
curl %CURLOPTS% -o "secretary-final\4_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_ef2cf990-a839-4e74-9c88-4e7416eb2d3d.png"
echo [44/86] 5_01.png
curl %CURLOPTS% -o "secretary-final\5_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_131918_93f66535-2c5b-4f56-b442-9c82fd81f969.png"
echo [45/86] 5_08.png
curl %CURLOPTS% -o "secretary-final\5_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_831f048f-103b-4d12-bf25-ec26de53757a.png"
echo [46/86] 5_15.png
curl %CURLOPTS% -o "secretary-final\5_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_a6a065bd-c972-4ad9-835b-0863d061fa56.png"
echo [47/86] 5_22.png
curl %CURLOPTS% -o "secretary-final\5_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_dc76b3d0-fffa-49f4-96b8-2fae487486e7.png"
echo [48/86] 5_29.png
curl %CURLOPTS% -o "secretary-final\5_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_181ee47e-dd83-4d12-bab0-535fffac33f2.png"
echo [49/86] 5_36.png
curl %CURLOPTS% -o "secretary-final\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_6da5dad0-f0e4-4624-9b25-6a975335b2bd.png"
echo [50/86] 5_43.png
curl %CURLOPTS% -o "secretary-final\5_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_36b3da2d-a282-4ab2-95ff-e7a53a3fe27b.png"
echo [51/86] 5_50.png
curl %CURLOPTS% -o "secretary-final\5_50.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_4b45fad1-f53b-4120-b3e4-61966466aeaa.png"
echo [52/86] 5_57.png
curl %CURLOPTS% -o "secretary-final\5_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_de8666e2-fa71-4b71-97e0-ecc97a30d087.png"
echo [53/86] 6_04.png
curl %CURLOPTS% -o "secretary-final\6_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_c88c20d3-82bc-4212-8d32-2e517779ba99.png"
echo [54/86] 6_11.png
curl %CURLOPTS% -o "secretary-final\6_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_b17f39ea-8a55-43a0-b609-c2667222080c.png"
echo [55/86] 6_18.png
curl %CURLOPTS% -o "secretary-final\6_18.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_6ff5a954-2759-45a9-8330-b220aa5adf62.png"
echo [56/86] 6_25.png
curl %CURLOPTS% -o "secretary-final\6_25.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_4606f901-6f3c-465e-933e-fdfeaf2521bf.png"
echo [57/86] 6_32.png
curl %CURLOPTS% -o "secretary-final\6_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_71d7780d-f74f-4630-900c-2b175b0aa82d.png"
echo [58/86] 6_39.png
curl %CURLOPTS% -o "secretary-final\6_39.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132027_929a046a-f370-4907-816d-1622114131a9.png"
echo [59/86] 6_46.png
curl %CURLOPTS% -o "secretary-final\6_46.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132026_d9b902ef-5c99-44ec-8c17-f776558c9ff8.png"
echo [60/86] 6_53.png
curl %CURLOPTS% -o "secretary-final\6_53.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132142_94b7e2d3-1c8f-4468-835f-c992a378a877.png"
echo [61/86] 7_00.png
curl %CURLOPTS% -o "secretary-final\7_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_cb7c048c-4ae0-411c-aeee-e8ee0c2b771d.png"
echo [62/86] 7_07.png
curl %CURLOPTS% -o "secretary-final\7_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132142_e97ea788-4c94-4280-9778-00e153ea5d16.png"
echo [63/86] 7_14.png
curl %CURLOPTS% -o "secretary-final\7_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_132142_f95ecde8-7e55-4619-99ff-61b07bd0e85d.png"
echo [64/86] 7_21.png
curl %CURLOPTS% -o "secretary-final\7_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_dc178485-33cf-460e-9e71-fbc8828a5a55.png"
echo [65/86] 7_28.png
curl %CURLOPTS% -o "secretary-final\7_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_23d4b996-c6d6-49d5-8c79-6d2be6d3390d.png"
echo [66/86] 7_35.png
curl %CURLOPTS% -o "secretary-final\7_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_f77f0351-ae17-49cb-b213-05f37d88eead.png"
echo [67/86] 7_42.png
curl %CURLOPTS% -o "secretary-final\7_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_596b5f93-ebc3-4746-a48d-6b542b12c667.png"
echo [68/86] 7_49.png
curl %CURLOPTS% -o "secretary-final\7_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_b6df2058-a4d8-486f-acec-c6702d7ea41f.png"
echo [69/86] 7_56.png
curl %CURLOPTS% -o "secretary-final\7_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_2e7d30ff-579b-41e8-829d-293a35e52d76.png"
echo [70/86] 8_03.png
curl %CURLOPTS% -o "secretary-final\8_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_b5b95470-00ea-4d84-85b1-6830c1de1196.png"
echo [71/86] 8_10.png
curl %CURLOPTS% -o "secretary-final\8_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_63a3259f-c532-45f8-8fb7-0890d06c7fe4.png"
echo [72/86] 8_17.png
curl %CURLOPTS% -o "secretary-final\8_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_dfa3e0ce-054f-453b-98e9-33d0407a6158.png"
echo [73/86] 8_24.png
curl %CURLOPTS% -o "secretary-final\8_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_d4d63472-c19f-43c0-9a46-3096b3501ef3.png"
echo [74/86] 8_31.png
curl %CURLOPTS% -o "secretary-final\8_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_a1bfbae7-4e97-4a51-9a2c-9bbf9e4515d6.png"
echo [75/86] 8_38.png
curl %CURLOPTS% -o "secretary-final\8_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_ef0172e0-b69a-48af-8373-31c733ab8894.png"
echo [76/86] 8_45.png
curl %CURLOPTS% -o "secretary-final\8_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_d900143a-4f89-4fd1-97b6-a3af43036af3.png"
echo [77/86] 8_52.png
curl %CURLOPTS% -o "secretary-final\8_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_a1a114ff-00fe-4a64-88f8-fc301bc98f4f.png"
echo [78/86] 8_59.png
curl %CURLOPTS% -o "secretary-final\8_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_7b61b05b-29f6-4873-85f9-41953d95cdc1.png"
echo [79/86] 9_06.png
curl %CURLOPTS% -o "secretary-final\9_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_887e823b-aa6f-46e0-a5a5-0b6aaf471bde.png"
echo [80/86] 9_13.png
curl %CURLOPTS% -o "secretary-final\9_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_c57fb486-ab96-4ad1-bf84-e0f9efac3aa3.png"
echo [81/86] 9_20.png
curl %CURLOPTS% -o "secretary-final\9_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_336cec24-c74d-4970-a1aa-063051a7b8ef.png"
echo [82/86] 9_27.png
curl %CURLOPTS% -o "secretary-final\9_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_1c99ae46-c07b-4ffd-b98a-34e513b74cf0.png"
echo [83/86] 9_34.png
curl %CURLOPTS% -o "secretary-final\9_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_82cf0a52-3a13-4aca-96a1-42f7afd75ccc.png"
echo [84/86] 9_41.png
curl %CURLOPTS% -o "secretary-final\9_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_e064df47-56e9-440e-a329-c96607b21c65.png"
echo [85/86] 9_48.png
curl %CURLOPTS% -o "secretary-final\9_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_e3ef92d4-839d-4ddc-8d37-34308807f23e.png"
echo [86/86] 9_55.png
curl %CURLOPTS% -o "secretary-final\9_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_62455a33-2ef6-4a9d-87c4-20b9337213fa.png"
echo.
echo Done. Files are in "%cd%\secretary-final"
pause
