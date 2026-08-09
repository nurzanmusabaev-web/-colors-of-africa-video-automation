@echo off
rem Secretary Bird - downloads all 86 frames as 0_00.png .. 9_55.png
setlocal
cd /d "%~dp0"
if not exist "secretary-frames" mkdir "secretary-frames"
where curl.exe >nul 2>&1 || (echo curl.exe not found & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -#
echo Downloading 86 frames into secretary-frames\ ...
echo.
echo [1/86] 0_00.png
curl %CURLOPTS% -o "secretary-frames\0_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_e82cd712-d2ce-40cd-adb6-8939ce0bd3e4.png"
echo [2/86] 0_07.png
curl %CURLOPTS% -o "secretary-frames\0_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_f9d64886-60d3-4586-9839-43574e9caa57.png"
echo [3/86] 0_14.png
curl %CURLOPTS% -o "secretary-frames\0_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061732_3e9ba676-0942-4725-b8ad-32e98916d43a.png"
echo [4/86] 0_21.png
curl %CURLOPTS% -o "secretary-frames\0_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_dd3aa3c5-0219-40ba-b44b-320e842f47df.png"
echo [5/86] 0_28.png
curl %CURLOPTS% -o "secretary-frames\0_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_ff7dff1d-2d28-4f2e-95a1-f276c8e0441f.png"
echo [6/86] 0_35.png
curl %CURLOPTS% -o "secretary-frames\0_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_3f6c4fc6-12eb-4204-875c-11efdbec1f94.png"
echo [7/86] 0_42.png
curl %CURLOPTS% -o "secretary-frames\0_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_42f0478e-8b2a-46cb-b8a0-0fa11476b081.png"
echo [8/86] 0_49.png
curl %CURLOPTS% -o "secretary-frames\0_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_15393c28-68cb-4d3c-bc60-164c82890df3.png"
echo [9/86] 0_56.png
curl %CURLOPTS% -o "secretary-frames\0_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_a67c949c-9970-4439-a98d-c3346e0c6c1c.png"
echo [10/86] 1_03.png
curl %CURLOPTS% -o "secretary-frames\1_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_31ce73c2-a7cb-4e56-9809-8c6b7b2ace80.png"
echo [11/86] 1_10.png
curl %CURLOPTS% -o "secretary-frames\1_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_f500fa5d-2e82-495e-beea-d12ada9bf1e2.png"
echo [12/86] 1_17.png
curl %CURLOPTS% -o "secretary-frames\1_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061731_ef2e01e1-710d-42e9-9fcc-aefe3cf480cb.png"
echo [13/86] 1_24.png
curl %CURLOPTS% -o "secretary-frames\1_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_9137a265-c677-4fb6-8c82-f5f72dcf85f2.png"
echo [14/86] 1_31.png
curl %CURLOPTS% -o "secretary-frames\1_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_892dd177-af87-4583-abf9-ae622d3c2ef5.png"
echo [15/86] 1_38.png
curl %CURLOPTS% -o "secretary-frames\1_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_f047f7b3-2c1c-4f20-b945-167086b94cd7.png"
echo [16/86] 1_45.png
curl %CURLOPTS% -o "secretary-frames\1_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_2a94c957-06da-44d9-97b1-ab3f2144c9ea.png"
echo [17/86] 1_52.png
curl %CURLOPTS% -o "secretary-frames\1_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_f3d0e446-3c69-4b9a-a855-5fcd91e8019d.png"
echo [18/86] 1_59.png
curl %CURLOPTS% -o "secretary-frames\1_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061206_41b2bda3-f227-49d8-8f7b-fae2002c6ae6.png"
echo [19/86] 2_06.png
curl %CURLOPTS% -o "secretary-frames\2_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_21ec1971-b424-47b5-8d11-c2a74a7fcda2.png"
echo [20/86] 2_13.png
curl %CURLOPTS% -o "secretary-frames\2_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_99e9b4d0-b8b5-4883-b47e-0552810c16bc.png"
echo [21/86] 2_20.png
curl %CURLOPTS% -o "secretary-frames\2_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_dbeac200-5f5f-488f-9e08-32b1ac519319.png"
echo [22/86] 2_27.png
curl %CURLOPTS% -o "secretary-frames\2_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_b90b884a-22df-434f-ab37-9043cc7be087.png"
echo [23/86] 2_34.png
curl %CURLOPTS% -o "secretary-frames\2_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_aa6879f6-7c20-4f26-9c8b-381d478bb60a.png"
echo [24/86] 2_41.png
curl %CURLOPTS% -o "secretary-frames\2_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_730a823f-9ccf-4d5b-8ff6-b98939370d8e.png"
echo [25/86] 2_48.png
curl %CURLOPTS% -o "secretary-frames\2_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_77258c53-e947-490e-b9ee-772e684921c2.png"
echo [26/86] 2_55.png
curl %CURLOPTS% -o "secretary-frames\2_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_cf5c5440-d27f-4a9f-87a7-968e883c92e2.png"
echo [27/86] 3_02.png
curl %CURLOPTS% -o "secretary-frames\3_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_9a0eed03-b781-47e0-819a-d396b71cf647.png"
echo [28/86] 3_09.png
curl %CURLOPTS% -o "secretary-frames\3_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_6effed81-d3e2-4722-a299-2334c3df70af.png"
echo [29/86] 3_16.png
curl %CURLOPTS% -o "secretary-frames\3_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_93aea647-59f3-4480-b352-230ce529bcd4.png"
echo [30/86] 3_23.png
curl %CURLOPTS% -o "secretary-frames\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_061938_aaab647c-900f-4f14-a99c-b7b9f7867c2b.png"
echo [31/86] 3_30.png
curl %CURLOPTS% -o "secretary-frames\3_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_9072ea5a-8848-4ebf-b560-ce529944de78.png"
echo [32/86] 3_37.png
curl %CURLOPTS% -o "secretary-frames\3_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_b0928dd8-a258-4e51-b9aa-32d54cd7d109.png"
echo [33/86] 3_44.png
curl %CURLOPTS% -o "secretary-frames\3_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_7e74e3e2-207e-4a2b-9bab-567c66675565.png"
echo [34/86] 3_51.png
curl %CURLOPTS% -o "secretary-frames\3_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_675df400-2fc5-41a5-a2ab-fe43df42f328.png"
echo [35/86] 3_58.png
curl %CURLOPTS% -o "secretary-frames\3_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_4e5b8e74-ced7-4a5d-89e0-88c9b923bb8e.png"
echo [36/86] 4_05.png
curl %CURLOPTS% -o "secretary-frames\4_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_0c3bb6e0-6756-4763-8eb0-4e9218db288a.png"
echo [37/86] 4_12.png
curl %CURLOPTS% -o "secretary-frames\4_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_27c3855a-b651-4e08-8fa3-5baef98c6e58.png"
echo [38/86] 4_19.png
curl %CURLOPTS% -o "secretary-frames\4_19.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_5c48b539-7735-4725-9082-d2a4b6b2bc81.png"
echo [39/86] 4_26.png
curl %CURLOPTS% -o "secretary-frames\4_26.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_a58dac06-1355-47c0-9a5b-b7f029582957.png"
echo [40/86] 4_33.png
curl %CURLOPTS% -o "secretary-frames\4_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_12a078e2-5d4a-4d61-82dc-1748323e486e.png"
echo [41/86] 4_40.png
curl %CURLOPTS% -o "secretary-frames\4_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_2aca1c57-fbd4-45d5-ac3e-7faf8e72ede5.png"
echo [42/86] 4_47.png
curl %CURLOPTS% -o "secretary-frames\4_47.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_123e0e45-9d57-4e6f-9af6-7097e84c8f74.png"
echo [43/86] 4_54.png
curl %CURLOPTS% -o "secretary-frames\4_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062526_81461042-9261-4299-83d6-a43bd3381e7e.png"
echo [44/86] 5_01.png
curl %CURLOPTS% -o "secretary-frames\5_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_c3287569-7f67-4825-b947-0841d1c05679.png"
echo [45/86] 5_08.png
curl %CURLOPTS% -o "secretary-frames\5_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_2680efdd-ea09-488b-a320-fe0cdbc817b9.png"
echo [46/86] 5_15.png
curl %CURLOPTS% -o "secretary-frames\5_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_ad322721-4d07-43d4-a344-abf6cc58cae9.png"
echo [47/86] 5_22.png
curl %CURLOPTS% -o "secretary-frames\5_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_b3f01316-3d41-447d-b56a-360311509e93.png"
echo [48/86] 5_29.png
curl %CURLOPTS% -o "secretary-frames\5_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_7a5c6e5d-d2b1-4222-b010-06fdd567d696.png"
echo [49/86] 5_36.png
curl %CURLOPTS% -o "secretary-frames\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_66534f0f-0db3-4b80-a5e5-c17730f296d8.png"
echo [50/86] 5_43.png
curl %CURLOPTS% -o "secretary-frames\5_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_36b3da2d-a282-4ab2-95ff-e7a53a3fe27b.png"
echo [51/86] 5_50.png
curl %CURLOPTS% -o "secretary-frames\5_50.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_4b45fad1-f53b-4120-b3e4-61966466aeaa.png"
echo [52/86] 5_57.png
curl %CURLOPTS% -o "secretary-frames\5_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062954_81d4e315-2fbf-4f5b-8aab-a85c61b46127.png"
echo [53/86] 6_04.png
curl %CURLOPTS% -o "secretary-frames\6_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062754_200d8a54-b634-412f-8eea-f96ecbd89d03.png"
echo [54/86] 6_11.png
curl %CURLOPTS% -o "secretary-frames\6_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062753_c64bfcf7-19b4-44fa-88d7-d5f75767af4f.png"
echo [55/86] 6_18.png
curl %CURLOPTS% -o "secretary-frames\6_18.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_6ff5a954-2759-45a9-8330-b220aa5adf62.png"
echo [56/86] 6_25.png
curl %CURLOPTS% -o "secretary-frames\6_25.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_4606f901-6f3c-465e-933e-fdfeaf2521bf.png"
echo [57/86] 6_32.png
curl %CURLOPTS% -o "secretary-frames\6_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062754_fd3142e2-7dad-4ac1-8d28-d2ac1634de9d.png"
echo [58/86] 6_39.png
curl %CURLOPTS% -o "secretary-frames\6_39.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062754_a77087d3-1e04-44e2-96a7-e4a321fa14cb.png"
echo [59/86] 6_46.png
curl %CURLOPTS% -o "secretary-frames\6_46.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062954_8ee5c925-7767-46d8-a6cf-a4ee72740eec.png"
echo [60/86] 6_53.png
curl %CURLOPTS% -o "secretary-frames\6_53.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062954_94f43fc1-bf9f-44dc-90d3-f7c2ab8b854b.png"
echo [61/86] 7_00.png
curl %CURLOPTS% -o "secretary-frames\7_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_cb7c048c-4ae0-411c-aeee-e8ee0c2b771d.png"
echo [62/86] 7_07.png
curl %CURLOPTS% -o "secretary-frames\7_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062954_b3bb5fc0-9922-48ee-800a-e73ef0fe2e1b.png"
echo [63/86] 7_14.png
curl %CURLOPTS% -o "secretary-frames\7_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_062954_982917bb-a4bb-49df-b92d-94c0c16c3946.png"
echo [64/86] 7_21.png
curl %CURLOPTS% -o "secretary-frames\7_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_dc178485-33cf-460e-9e71-fbc8828a5a55.png"
echo [65/86] 7_28.png
curl %CURLOPTS% -o "secretary-frames\7_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_23d4b996-c6d6-49d5-8c79-6d2be6d3390d.png"
echo [66/86] 7_35.png
curl %CURLOPTS% -o "secretary-frames\7_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_f77f0351-ae17-49cb-b213-05f37d88eead.png"
echo [67/86] 7_42.png
curl %CURLOPTS% -o "secretary-frames\7_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_596b5f93-ebc3-4746-a48d-6b542b12c667.png"
echo [68/86] 7_49.png
curl %CURLOPTS% -o "secretary-frames\7_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_b6df2058-a4d8-486f-acec-c6702d7ea41f.png"
echo [69/86] 7_56.png
curl %CURLOPTS% -o "secretary-frames\7_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_2e7d30ff-579b-41e8-829d-293a35e52d76.png"
echo [70/86] 8_03.png
curl %CURLOPTS% -o "secretary-frames\8_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_b5b95470-00ea-4d84-85b1-6830c1de1196.png"
echo [71/86] 8_10.png
curl %CURLOPTS% -o "secretary-frames\8_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_63a3259f-c532-45f8-8fb7-0890d06c7fe4.png"
echo [72/86] 8_17.png
curl %CURLOPTS% -o "secretary-frames\8_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_dfa3e0ce-054f-453b-98e9-33d0407a6158.png"
echo [73/86] 8_24.png
curl %CURLOPTS% -o "secretary-frames\8_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_d4d63472-c19f-43c0-9a46-3096b3501ef3.png"
echo [74/86] 8_31.png
curl %CURLOPTS% -o "secretary-frames\8_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_a1bfbae7-4e97-4a51-9a2c-9bbf9e4515d6.png"
echo [75/86] 8_38.png
curl %CURLOPTS% -o "secretary-frames\8_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_ef0172e0-b69a-48af-8373-31c733ab8894.png"
echo [76/86] 8_45.png
curl %CURLOPTS% -o "secretary-frames\8_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_d900143a-4f89-4fd1-97b6-a3af43036af3.png"
echo [77/86] 8_52.png
curl %CURLOPTS% -o "secretary-frames\8_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_a1a114ff-00fe-4a64-88f8-fc301bc98f4f.png"
echo [78/86] 8_59.png
curl %CURLOPTS% -o "secretary-frames\8_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_7b61b05b-29f6-4873-85f9-41953d95cdc1.png"
echo [79/86] 9_06.png
curl %CURLOPTS% -o "secretary-frames\9_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_887e823b-aa6f-46e0-a5a5-0b6aaf471bde.png"
echo [80/86] 9_13.png
curl %CURLOPTS% -o "secretary-frames\9_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_c57fb486-ab96-4ad1-bf84-e0f9efac3aa3.png"
echo [81/86] 9_20.png
curl %CURLOPTS% -o "secretary-frames\9_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_336cec24-c74d-4970-a1aa-063051a7b8ef.png"
echo [82/86] 9_27.png
curl %CURLOPTS% -o "secretary-frames\9_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_1c99ae46-c07b-4ffd-b98a-34e513b74cf0.png"
echo [83/86] 9_34.png
curl %CURLOPTS% -o "secretary-frames\9_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_82cf0a52-3a13-4aca-96a1-42f7afd75ccc.png"
echo [84/86] 9_41.png
curl %CURLOPTS% -o "secretary-frames\9_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_e064df47-56e9-440e-a329-c96607b21c65.png"
echo [85/86] 9_48.png
curl %CURLOPTS% -o "secretary-frames\9_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_e3ef92d4-839d-4ddc-8d37-34308807f23e.png"
echo [86/86] 9_55.png
curl %CURLOPTS% -o "secretary-frames\9_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045633_62455a33-2ef6-4a9d-87c4-20b9337213fa.png"
echo.
echo Done.
pause
