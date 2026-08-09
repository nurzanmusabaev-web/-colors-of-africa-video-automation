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
curl %CURLOPTS% -o "secretary-frames\0_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_55bedd8d-057a-454d-a8ed-cc76bbb93c97.png"
echo [2/86] 0_07.png
curl %CURLOPTS% -o "secretary-frames\0_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_f9d64886-60d3-4586-9839-43574e9caa57.png"
echo [3/86] 0_14.png
curl %CURLOPTS% -o "secretary-frames\0_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_cbe8d043-6f8f-41bb-8637-398cca377ed0.png"
echo [4/86] 0_21.png
curl %CURLOPTS% -o "secretary-frames\0_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_7130c518-6e58-41f1-aa05-905780b29eab.png"
echo [5/86] 0_28.png
curl %CURLOPTS% -o "secretary-frames\0_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_ff7dff1d-2d28-4f2e-95a1-f276c8e0441f.png"
echo [6/86] 0_35.png
curl %CURLOPTS% -o "secretary-frames\0_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044424_3f6c4fc6-12eb-4204-875c-11efdbec1f94.png"
echo [7/86] 0_42.png
curl %CURLOPTS% -o "secretary-frames\0_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_42f0478e-8b2a-46cb-b8a0-0fa11476b081.png"
echo [8/86] 0_49.png
curl %CURLOPTS% -o "secretary-frames\0_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_6d028d7d-5d1e-49da-8dd8-bc308a543f25.png"
echo [9/86] 0_56.png
curl %CURLOPTS% -o "secretary-frames\0_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_a67c949c-9970-4439-a98d-c3346e0c6c1c.png"
echo [10/86] 1_03.png
curl %CURLOPTS% -o "secretary-frames\1_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_efbf00c4-01d7-457c-ba16-47f79b9a564e.png"
echo [11/86] 1_10.png
curl %CURLOPTS% -o "secretary-frames\1_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_f500fa5d-2e82-495e-beea-d12ada9bf1e2.png"
echo [12/86] 1_17.png
curl %CURLOPTS% -o "secretary-frames\1_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_1f38e4dc-d10b-4b97-b0bb-d453378141df.png"
echo [13/86] 1_24.png
curl %CURLOPTS% -o "secretary-frames\1_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_b4c40152-d71d-49b0-9aee-025f883e5db3.png"
echo [14/86] 1_31.png
curl %CURLOPTS% -o "secretary-frames\1_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_a4a39384-5e73-42f0-ab4e-d951e4093899.png"
echo [15/86] 1_38.png
curl %CURLOPTS% -o "secretary-frames\1_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_9226a971-0ca1-4ff6-893a-b514b249e21e.png"
echo [16/86] 1_45.png
curl %CURLOPTS% -o "secretary-frames\1_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_eb368865-19db-4ab1-a067-b50c842d320d.png"
echo [17/86] 1_52.png
curl %CURLOPTS% -o "secretary-frames\1_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_2b6f46e0-de15-4dcd-83b9-a379d60bc80a.png"
echo [18/86] 1_59.png
curl %CURLOPTS% -o "secretary-frames\1_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_044520_7eb82ad3-173a-4823-adce-2cc8de44c8a0.png"
echo [19/86] 2_06.png
curl %CURLOPTS% -o "secretary-frames\2_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_84e12b8b-3168-4b70-9aaa-bd6648cf4fb3.png"
echo [20/86] 2_13.png
curl %CURLOPTS% -o "secretary-frames\2_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_8fda18f7-40bb-4e68-810d-7318ec613476.png"
echo [21/86] 2_20.png
curl %CURLOPTS% -o "secretary-frames\2_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_5104bbb2-1879-47f1-83ff-15fa5a02bfe7.png"
echo [22/86] 2_27.png
curl %CURLOPTS% -o "secretary-frames\2_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_40c32a0f-13be-4abe-9bb4-cd19cbd6bff4.png"
echo [23/86] 2_34.png
curl %CURLOPTS% -o "secretary-frames\2_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_4ed64e69-2dda-4baf-a85f-beb499d8352c.png"
echo [24/86] 2_41.png
curl %CURLOPTS% -o "secretary-frames\2_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_a2385acd-9336-454e-8174-8921eab2263e.png"
echo [25/86] 2_48.png
curl %CURLOPTS% -o "secretary-frames\2_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045025_c603ae3f-515b-4a6d-8103-4209e141384d.png"
echo [26/86] 2_55.png
curl %CURLOPTS% -o "secretary-frames\2_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_cea7a9f7-083f-4fba-a354-813b1f3ca3c8.png"
echo [27/86] 3_02.png
curl %CURLOPTS% -o "secretary-frames\3_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045025_af822ef8-54d8-4ead-83e1-2f788ab7463f.png"
echo [28/86] 3_09.png
curl %CURLOPTS% -o "secretary-frames\3_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045025_42e17a75-19c5-455e-b6e0-252a8d648a2b.png"
echo [29/86] 3_16.png
curl %CURLOPTS% -o "secretary-frames\3_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045024_c78c9d11-452e-4489-a2ee-2684e8f7be00.png"
echo [30/86] 3_23.png
curl %CURLOPTS% -o "secretary-frames\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_eb2e5712-8361-4a4f-ab38-d9258ff6e792.png"
echo [31/86] 3_30.png
curl %CURLOPTS% -o "secretary-frames\3_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_10307717-7397-473c-a358-48746c2d71d0.png"
echo [32/86] 3_37.png
curl %CURLOPTS% -o "secretary-frames\3_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_7fd34579-b600-4fcc-a916-30cabeb990cd.png"
echo [33/86] 3_44.png
curl %CURLOPTS% -o "secretary-frames\3_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_59570c67-650d-4d95-b8e6-431e8ab3cfde.png"
echo [34/86] 3_51.png
curl %CURLOPTS% -o "secretary-frames\3_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_3c46f5f0-2092-4730-803c-cd78164bf6ef.png"
echo [35/86] 3_58.png
curl %CURLOPTS% -o "secretary-frames\3_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_a793b563-78b0-4b8f-9936-f3e4737e6ef9.png"
echo [36/86] 4_05.png
curl %CURLOPTS% -o "secretary-frames\4_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_70ca2a26-55e0-4f2c-8bcd-e3104c142ec2.png"
echo [37/86] 4_12.png
curl %CURLOPTS% -o "secretary-frames\4_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_085b68f3-d740-4d84-826f-ec249167c8bf.png"
echo [38/86] 4_19.png
curl %CURLOPTS% -o "secretary-frames\4_19.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_c83a9d01-2acd-4c81-8349-d2f3d7b355a8.png"
echo [39/86] 4_26.png
curl %CURLOPTS% -o "secretary-frames\4_26.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045332_1b5d4d88-91d5-4072-97d4-5f8dab5aa9c5.png"
echo [40/86] 4_33.png
curl %CURLOPTS% -o "secretary-frames\4_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_30c2bbc0-14ce-439d-bb3a-0f3b8cbe8ddb.png"
echo [41/86] 4_40.png
curl %CURLOPTS% -o "secretary-frames\4_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045234_f3c17691-99db-48e4-a1ca-bd3fd8bceafa.png"
echo [42/86] 4_47.png
curl %CURLOPTS% -o "secretary-frames\4_47.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_123e0e45-9d57-4e6f-9af6-7097e84c8f74.png"
echo [43/86] 4_54.png
curl %CURLOPTS% -o "secretary-frames\4_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_4eba118b-9d34-4369-8ff6-18625c2a0000.png"
echo [44/86] 5_01.png
curl %CURLOPTS% -o "secretary-frames\5_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045332_3b64a085-91db-48c0-9b2a-19d533d2c5b1.png"
echo [45/86] 5_08.png
curl %CURLOPTS% -o "secretary-frames\5_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045332_bb2069ef-c003-4ccf-bc3d-4ffa7894ba94.png"
echo [46/86] 5_15.png
curl %CURLOPTS% -o "secretary-frames\5_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_ed4ae9e5-a81b-4c34-88f4-ec0c4ed3748d.png"
echo [47/86] 5_22.png
curl %CURLOPTS% -o "secretary-frames\5_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_1fba1444-3430-425d-9a58-9e63ae26816c.png"
echo [48/86] 5_29.png
curl %CURLOPTS% -o "secretary-frames\5_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_1de1d5c1-5126-45f6-b9f9-e1e889fdbe98.png"
echo [49/86] 5_36.png
curl %CURLOPTS% -o "secretary-frames\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_164f522e-3bdd-4e3f-a7ea-d89ce05ceb97.png"
echo [50/86] 5_43.png
curl %CURLOPTS% -o "secretary-frames\5_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_36b3da2d-a282-4ab2-95ff-e7a53a3fe27b.png"
echo [51/86] 5_50.png
curl %CURLOPTS% -o "secretary-frames\5_50.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045333_4b45fad1-f53b-4120-b3e4-61966466aeaa.png"
echo [52/86] 5_57.png
curl %CURLOPTS% -o "secretary-frames\5_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_e62f9ff1-3ff1-4ec3-bd8b-1d6030664090.png"
echo [53/86] 6_04.png
curl %CURLOPTS% -o "secretary-frames\6_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_9565dd42-eb5d-423b-84b9-0dbd487b7f8d.png"
echo [54/86] 6_11.png
curl %CURLOPTS% -o "secretary-frames\6_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_aa211e0d-4c74-46ed-bdda-4b5f7592dd4d.png"
echo [55/86] 6_18.png
curl %CURLOPTS% -o "secretary-frames\6_18.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_6ff5a954-2759-45a9-8330-b220aa5adf62.png"
echo [56/86] 6_25.png
curl %CURLOPTS% -o "secretary-frames\6_25.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045542_4606f901-6f3c-465e-933e-fdfeaf2521bf.png"
echo [57/86] 6_32.png
curl %CURLOPTS% -o "secretary-frames\6_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_b6208b37-9698-4ed8-a587-9a9904f17f6b.png"
echo [58/86] 6_39.png
curl %CURLOPTS% -o "secretary-frames\6_39.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_58e0c958-720c-44ed-bd57-bd4f30c77b46.png"
echo [59/86] 6_46.png
curl %CURLOPTS% -o "secretary-frames\6_46.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_5bf7d122-8dbd-465f-9602-a0da33d00127.png"
echo [60/86] 6_53.png
curl %CURLOPTS% -o "secretary-frames\6_53.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_97de553f-aa1a-4d55-8d91-27955d03e85b.png"
echo [61/86] 7_00.png
curl %CURLOPTS% -o "secretary-frames\7_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_cb7c048c-4ae0-411c-aeee-e8ee0c2b771d.png"
echo [62/86] 7_07.png
curl %CURLOPTS% -o "secretary-frames\7_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_855c0146-c92b-4ca7-8e66-3de2cea03f41.png"
echo [63/86] 7_14.png
curl %CURLOPTS% -o "secretary-frames\7_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260809_045419_75fb5399-f492-455b-aa20-b1dc0317d3ad.png"
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
dir /b "secretary-frames\*.png" | find /c ".png"
echo (should be 86)
pause
