@echo off
rem Lioness: 300 Days - downloads 123 frames named by timecode (0_00.png .. 14_14.png)
rem v2: visible progress, connect/transfer timeouts, skips finished files.
setlocal
cd /d "%~dp0"
if not exist "lioness-frames" mkdir "lioness-frames"
where curl.exe >nul 2>&1 || (echo curl.exe not found - needs Windows 10 build 1803 or newer & pause & exit /b 1)
set CURLOPTS=-fL --retry 4 --retry-delay 2 --retry-connrefused --connect-timeout 20 --max-time 600 -# -C -
echo Downloading 123 frames into lioness-frames\ ...
echo.
echo [1/123] 0_00.png
curl %CURLOPTS% -o "lioness-frames\0_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213455_3ac347c5-1593-43cc-a35e-f3eaf692491a.png"
echo [2/123] 0_07.png
curl %CURLOPTS% -o "lioness-frames\0_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213527_29a4d25d-b0ee-4c3d-b48f-64df6c439e55.png"
echo [3/123] 0_14.png
curl %CURLOPTS% -o "lioness-frames\0_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213531_ad460fa6-0366-4458-9dd6-a70ca0a09fb7.png"
echo [4/123] 0_21.png
curl %CURLOPTS% -o "lioness-frames\0_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213534_2f0cb341-4960-4c01-9674-4afeaf629c3e.png"
echo [5/123] 0_28.png
curl %CURLOPTS% -o "lioness-frames\0_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213548_ee6c37df-cff5-4939-b9c1-fe5b8e9f8d9c.png"
echo [6/123] 0_35.png
curl %CURLOPTS% -o "lioness-frames\0_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213551_85379bfb-57a4-46cd-9406-869c818a2492.png"
echo [7/123] 0_42.png
curl %CURLOPTS% -o "lioness-frames\0_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213554_557410af-2182-4d94-868e-63b318d7ca86.png"
echo [8/123] 0_49.png
curl %CURLOPTS% -o "lioness-frames\0_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213557_175ec375-7b75-42c7-8449-de1540a39265.png"
echo [9/123] 0_56.png
curl %CURLOPTS% -o "lioness-frames\0_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213628_4111d19f-78cf-4bb3-8461-7fa3add8930c.png"
echo [10/123] 1_03.png
curl %CURLOPTS% -o "lioness-frames\1_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213631_6e6c6461-45d5-4570-a3b7-db66c5de9703.png"
echo [11/123] 1_10.png
curl %CURLOPTS% -o "lioness-frames\1_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213634_c35372c4-98ea-40d7-912a-bfa0c2cdfee2.png"
echo [12/123] 1_17.png
curl %CURLOPTS% -o "lioness-frames\1_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213638_46b08b9d-7f17-4747-a71e-34ebefcdbee4.png"
echo [13/123] 1_24.png
curl %CURLOPTS% -o "lioness-frames\1_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213647_643a3214-13e8-40c1-8acf-c3e46348fb51.png"
echo [14/123] 1_31.png
curl %CURLOPTS% -o "lioness-frames\1_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213701_d2875323-8214-4a0a-9d99-08044b643f29.png"
echo [15/123] 1_38.png
curl %CURLOPTS% -o "lioness-frames\1_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214151_d28c9ab9-ea33-46d6-a821-c745a7f798a1.png"
echo [16/123] 1_45.png
curl %CURLOPTS% -o "lioness-frames\1_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214155_7e916036-65a2-460a-a959-3879b54ed6a9.png"
echo [17/123] 1_52.png
curl %CURLOPTS% -o "lioness-frames\1_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214158_a7a709fa-4c8a-42f2-895c-a76c77388bec.png"
echo [18/123] 1_59.png
curl %CURLOPTS% -o "lioness-frames\1_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214201_05ea72b9-5532-4380-ba7c-d5d9ca9e3165.png"
echo [19/123] 2_06.png
curl %CURLOPTS% -o "lioness-frames\2_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214204_d55e8559-0b3c-475d-a651-606dcfbbaa4a.png"
echo [20/123] 2_13.png
curl %CURLOPTS% -o "lioness-frames\2_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214207_dcfaa423-4b67-491b-9907-b73c59d4025e.png"
echo [21/123] 2_20.png
curl %CURLOPTS% -o "lioness-frames\2_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214210_e8ad0219-f6e6-4643-8896-809ea2374ac4.png"
echo [22/123] 2_27.png
curl %CURLOPTS% -o "lioness-frames\2_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214213_a7b3b2ea-2639-407e-996b-46c5dc14dd41.png"
echo [23/123] 2_34.png
curl %CURLOPTS% -o "lioness-frames\2_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214239_fec3946f-9178-4bcd-865e-075cea3e295a.png"
echo [24/123] 2_41.png
curl %CURLOPTS% -o "lioness-frames\2_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214243_87e93745-daa0-4df8-8f6b-c82c5309744a.png"
echo [25/123] 2_48.png
curl %CURLOPTS% -o "lioness-frames\2_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214226_d321f59a-fc0f-4744-8635-2186a3f7d551.png"
echo [26/123] 2_55.png
curl %CURLOPTS% -o "lioness-frames\2_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214230_73ea7643-e628-4d20-9f8b-0f7dbc6d4422.png"
echo [27/123] 3_02.png
curl %CURLOPTS% -o "lioness-frames\3_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214253_5b009854-4788-461c-879a-ef935dabe9cd.png"
echo [28/123] 3_09.png
curl %CURLOPTS% -o "lioness-frames\3_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214257_8ac34142-30ca-4352-87cf-c5167a2247f9.png"
echo [29/123] 3_16.png
curl %CURLOPTS% -o "lioness-frames\3_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214300_bad6b515-a8d2-4f9e-9c10-6e85d5306edd.png"
echo [30/123] 3_23.png
curl %CURLOPTS% -o "lioness-frames\3_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214305_3917cca4-3511-4f37-8417-8242c73fca4c.png"
echo [31/123] 3_30.png
curl %CURLOPTS% -o "lioness-frames\3_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214308_b6bc8cef-02ac-4268-a71c-ae9855cc47a3.png"
echo [32/123] 3_37.png
curl %CURLOPTS% -o "lioness-frames\3_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214311_e515f8c6-7cf1-4b88-81b9-01c825e78237.png"
echo [33/123] 3_44.png
curl %CURLOPTS% -o "lioness-frames\3_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214328_a3e2afa1-25c7-4a72-bd4e-cd1e9aa5a34e.png"
echo [34/123] 3_51.png
curl %CURLOPTS% -o "lioness-frames\3_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214331_bab44efa-8afd-471c-a8fc-b974179b26b9.png"
echo [35/123] 3_58.png
curl %CURLOPTS% -o "lioness-frames\3_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214335_6c8d112f-5989-40d9-92f3-5f0c202fd235.png"
echo [36/123] 4_05.png
curl %CURLOPTS% -o "lioness-frames\4_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214339_512ac9b5-baf3-467e-83fb-464facc8bc45.png"
echo [37/123] 4_12.png
curl %CURLOPTS% -o "lioness-frames\4_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214342_f238d7c9-70bb-4bf4-8424-15b8718a1d12.png"
echo [38/123] 4_19.png
curl %CURLOPTS% -o "lioness-frames\4_19.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214346_843ee3fa-a504-4e4c-8610-a3b3b6e22b21.png"
echo [39/123] 4_26.png
curl %CURLOPTS% -o "lioness-frames\4_26.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214357_f3b28fc5-420e-41fe-b7c6-7330708c6523.png"
echo [40/123] 4_33.png
curl %CURLOPTS% -o "lioness-frames\4_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214400_2195bd69-3c72-4e77-923b-4ea78829c0ec.png"
echo [41/123] 4_40.png
curl %CURLOPTS% -o "lioness-frames\4_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214404_f068ed3a-e230-44ef-beaf-8c16f1fdacd7.png"
echo [42/123] 4_47.png
curl %CURLOPTS% -o "lioness-frames\4_47.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214407_6d4d6749-132b-46ea-93c2-3e72061af24a.png"
echo [43/123] 4_54.png
curl %CURLOPTS% -o "lioness-frames\4_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214433_a7f1cba7-81e6-482d-a0c2-7de47e712dd9.png"
echo [44/123] 5_01.png
curl %CURLOPTS% -o "lioness-frames\5_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214436_5082f52a-2634-4128-b7ef-45ff89e57ba5.png"
echo [45/123] 5_08.png
curl %CURLOPTS% -o "lioness-frames\5_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214452_050c4f68-761e-470b-99a3-97a00a686d0a.png"
echo [46/123] 5_15.png
curl %CURLOPTS% -o "lioness-frames\5_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214456_87e64d61-e2ff-4a38-9ffe-25225bcee434.png"
echo [47/123] 5_22.png
curl %CURLOPTS% -o "lioness-frames\5_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214459_30a92ef2-7f01-46cb-a3c4-2e5eed878164.png"
echo [48/123] 5_29.png
curl %CURLOPTS% -o "lioness-frames\5_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214502_3db7f0cf-0a1e-45e9-8087-9757503db895.png"
echo [49/123] 5_36.png
curl %CURLOPTS% -o "lioness-frames\5_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214506_bc4cd242-b3dd-4c5d-8a5c-ceb41f75a0dc.png"
echo [50/123] 5_43.png
curl %CURLOPTS% -o "lioness-frames\5_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214509_f16e9bef-d767-4857-88c7-04dab8b55d14.png"
echo [51/123] 5_50.png
curl %CURLOPTS% -o "lioness-frames\5_50.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214517_240ba38f-f4bd-4d0a-a54d-37b7479872cc.png"
echo [52/123] 5_57.png
curl %CURLOPTS% -o "lioness-frames\5_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214521_6a5c2801-607c-4534-b3c2-80f8d3f3e924.png"
echo [53/123] 6_04.png
curl %CURLOPTS% -o "lioness-frames\6_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214525_93c51558-a576-4f2f-8986-3e95f7c8c134.png"
echo [54/123] 6_11.png
curl %CURLOPTS% -o "lioness-frames\6_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214538_f2a88eb7-ae2e-40f0-ad24-c459f7f015c8.png"
echo [55/123] 6_18.png
curl %CURLOPTS% -o "lioness-frames\6_18.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214542_ab10da3b-9209-4bbf-ab42-08f625e6076d.png"
echo [56/123] 6_25.png
curl %CURLOPTS% -o "lioness-frames\6_25.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214546_4ea298da-62a0-4460-a410-bd0059ae6032.png"
echo [57/123] 6_32.png
curl %CURLOPTS% -o "lioness-frames\6_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214555_73821a39-9c54-4d76-81d7-1cee42c4e36c.png"
echo [58/123] 6_39.png
curl %CURLOPTS% -o "lioness-frames\6_39.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214558_7d5ef201-fe99-4d7d-a1c8-6d7f3e317cc7.png"
echo [59/123] 6_46.png
curl %CURLOPTS% -o "lioness-frames\6_46.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214602_9afd58f1-7350-4a04-9b7e-f642a05b1606.png"
echo [60/123] 6_53.png
curl %CURLOPTS% -o "lioness-frames\6_53.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214605_ccfa8b56-e81e-4e01-a553-1db92a2f1fa0.png"
echo [61/123] 7_00.png
curl %CURLOPTS% -o "lioness-frames\7_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214609_43e914f6-4bcb-4863-9f43-f3ad3b8f8bbf.png"
echo [62/123] 7_07.png
curl %CURLOPTS% -o "lioness-frames\7_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214612_ebf436f1-058f-455e-bc49-c153325c8324.png"
echo [63/123] 7_14.png
curl %CURLOPTS% -o "lioness-frames\7_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214624_3a7ca3cb-524c-41cb-af05-03d82f7b93c4.png"
echo [64/123] 7_21.png
curl %CURLOPTS% -o "lioness-frames\7_21.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214628_da74df89-0478-4e4c-81bd-d3d5f4e3bcfb.png"
echo [65/123] 7_28.png
curl %CURLOPTS% -o "lioness-frames\7_28.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214632_1982e885-0407-48a8-9d3d-47f693538898.png"
echo [66/123] 7_35.png
curl %CURLOPTS% -o "lioness-frames\7_35.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214635_24370f57-379e-4343-a137-304056e2fcf0.png"
echo [67/123] 7_42.png
curl %CURLOPTS% -o "lioness-frames\7_42.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214639_36f7435e-6013-4ab3-9fa3-9a1dfb915379.png"
echo [68/123] 7_49.png
curl %CURLOPTS% -o "lioness-frames\7_49.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214644_696ba6b8-daf0-4a06-87c2-729e3d8952c6.png"
echo [69/123] 7_56.png
curl %CURLOPTS% -o "lioness-frames\7_56.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214659_414d6cd1-a75b-48e3-97e7-a99cdb98aefb.png"
echo [70/123] 8_03.png
curl %CURLOPTS% -o "lioness-frames\8_03.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214704_5868d831-7dfc-4969-8843-f8e3cf127982.png"
echo [71/123] 8_10.png
curl %CURLOPTS% -o "lioness-frames\8_10.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214708_36060360-d6a4-4e95-94d6-0da9ba58eed8.png"
echo [72/123] 8_17.png
curl %CURLOPTS% -o "lioness-frames\8_17.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214711_fbeed0f0-28cf-4d2b-9761-014daf8c6e62.png"
echo [73/123] 8_24.png
curl %CURLOPTS% -o "lioness-frames\8_24.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214714_e6cb143a-40e4-4c50-8450-c5570fcc1b16.png"
echo [74/123] 8_31.png
curl %CURLOPTS% -o "lioness-frames\8_31.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214718_af049483-573c-4879-9c16-79e8bd3cd756.png"
echo [75/123] 8_38.png
curl %CURLOPTS% -o "lioness-frames\8_38.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214728_24cc8c07-64dc-4bbf-bcf2-ba8eda0c0783.png"
echo [76/123] 8_45.png
curl %CURLOPTS% -o "lioness-frames\8_45.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214732_c3e94e4d-735f-4337-9c1d-6b7be1911b76.png"
echo [77/123] 8_52.png
curl %CURLOPTS% -o "lioness-frames\8_52.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214736_8a1900cb-d025-4329-be62-1b0b0909ef6b.png"
echo [78/123] 8_59.png
curl %CURLOPTS% -o "lioness-frames\8_59.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214740_c70e3952-1bd2-47c7-baea-337a21131c26.png"
echo [79/123] 9_06.png
curl %CURLOPTS% -o "lioness-frames\9_06.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214744_27f0d5a4-f290-4ca5-80be-e108a0fef3c0.png"
echo [80/123] 9_13.png
curl %CURLOPTS% -o "lioness-frames\9_13.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214748_17f5abcf-5be7-450b-b00d-56e226139e2c.png"
echo [81/123] 9_20.png
curl %CURLOPTS% -o "lioness-frames\9_20.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214800_fcd080e5-ed05-4530-ab41-640389b9d7ca.png"
echo [82/123] 9_27.png
curl %CURLOPTS% -o "lioness-frames\9_27.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214805_193b61be-a117-4a48-a87c-ecb87eca8ff3.png"
echo [83/123] 9_34.png
curl %CURLOPTS% -o "lioness-frames\9_34.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214808_6ddb8db4-d77d-4b62-b16e-beaee91a91a4.png"
echo [84/123] 9_41.png
curl %CURLOPTS% -o "lioness-frames\9_41.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214814_2bdeb8b2-8390-4e24-8a93-53c5012c1c5f.png"
echo [85/123] 9_48.png
curl %CURLOPTS% -o "lioness-frames\9_48.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214818_ccec12aa-e6d0-42c8-8a40-a7b3c8adc8c4.png"
echo [86/123] 9_55.png
curl %CURLOPTS% -o "lioness-frames\9_55.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214822_98fb1566-35b2-4919-8b9e-6b3fb23946ef.png"
echo [87/123] 10_02.png
curl %CURLOPTS% -o "lioness-frames\10_02.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214830_d22637ef-1b26-4e68-a133-73835137bf4e.png"
echo [88/123] 10_09.png
curl %CURLOPTS% -o "lioness-frames\10_09.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214835_5cc7da29-50bf-4877-93a7-6bb0431b3621.png"
echo [89/123] 10_16.png
curl %CURLOPTS% -o "lioness-frames\10_16.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214839_6e6d2ee5-9a53-4435-a68a-395f1dcb2dcf.png"
echo [90/123] 10_23.png
curl %CURLOPTS% -o "lioness-frames\10_23.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214843_344d1d8a-4992-4fe2-909c-090b75ed70f2.png"
echo [91/123] 10_30.png
curl %CURLOPTS% -o "lioness-frames\10_30.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214848_8f0e79db-d350-4ec6-b0db-9f77d9887d44.png"
echo [92/123] 10_37.png
curl %CURLOPTS% -o "lioness-frames\10_37.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214853_30e53201-09c0-4a53-a243-9f2eae3f8b05.png"
echo [93/123] 10_44.png
curl %CURLOPTS% -o "lioness-frames\10_44.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214916_4f1f9521-46f9-4c1c-86d0-647e5f63d506.png"
echo [94/123] 10_51.png
curl %CURLOPTS% -o "lioness-frames\10_51.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214932_d7bd8ad1-534f-47ba-a096-72fe70c3cd16.png"
echo [95/123] 10_58.png
curl %CURLOPTS% -o "lioness-frames\10_58.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214937_ba8468a8-c120-4136-9bf9-6557f7532d8a.png"
echo [96/123] 11_05.png
curl %CURLOPTS% -o "lioness-frames\11_05.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214948_f090fa64-d925-4159-8d56-6888e3296289.png"
echo [97/123] 11_12.png
curl %CURLOPTS% -o "lioness-frames\11_12.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214954_384537cf-0612-4658-a23f-b092f676ecbc.png"
echo [98/123] 11_19.png
curl %CURLOPTS% -o "lioness-frames\11_19.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215000_0417280a-1b77-498f-a395-13189c24b503.png"
echo [99/123] 11_26.png
curl %CURLOPTS% -o "lioness-frames\11_26.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215009_5a93ff56-8d8d-4c23-a25c-cae2fe6000b9.png"
echo [100/123] 11_33.png
curl %CURLOPTS% -o "lioness-frames\11_33.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215014_a3ee5ca8-00b1-4f34-a104-ba9468f0a8e9.png"
echo [101/123] 11_40.png
curl %CURLOPTS% -o "lioness-frames\11_40.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215022_f9ba9ddf-135a-422d-9e78-4316bd5ad58d.png"
echo [102/123] 11_47.png
curl %CURLOPTS% -o "lioness-frames\11_47.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215033_aa76d2f5-e8e9-4005-87a8-f0caf0565e5b.png"
echo [103/123] 11_54.png
curl %CURLOPTS% -o "lioness-frames\11_54.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215040_38dccb49-60af-424c-9864-9bf156803b08.png"
echo [104/123] 12_01.png
curl %CURLOPTS% -o "lioness-frames\12_01.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215048_07df6d49-ab2e-43d8-976a-7fc9c34de342.png"
echo [105/123] 12_08.png
curl %CURLOPTS% -o "lioness-frames\12_08.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215059_e1b50172-bdb3-4e54-a216-8cd64096d22c.png"
echo [106/123] 12_15.png
curl %CURLOPTS% -o "lioness-frames\12_15.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215103_820af0a8-9ee5-464c-baf4-8d1ddb99d295.png"
echo [107/123] 12_22.png
curl %CURLOPTS% -o "lioness-frames\12_22.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215108_766d574a-ca5f-4937-9b5d-5574186d0a3f.png"
echo [108/123] 12_29.png
curl %CURLOPTS% -o "lioness-frames\12_29.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215113_3bcb6431-7209-4ac9-9ec4-2eface60d2ff.png"
echo [109/123] 12_36.png
curl %CURLOPTS% -o "lioness-frames\12_36.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215119_5a8addaa-9ffe-4615-8fe8-fdeb8ffb90fa.png"
echo [110/123] 12_43.png
curl %CURLOPTS% -o "lioness-frames\12_43.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215124_f1d954c6-1621-41d4-b5e3-f627067c0d4b.png"
echo [111/123] 12_50.png
curl %CURLOPTS% -o "lioness-frames\12_50.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040038_24dbccee-1f79-40d9-9cc3-611d4a4380ea.png"
echo [112/123] 12_57.png
curl %CURLOPTS% -o "lioness-frames\12_57.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040041_788d7f6c-60eb-4961-a562-4d985b5633b7.png"
echo [113/123] 13_04.png
curl %CURLOPTS% -o "lioness-frames\13_04.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040044_f6df6d79-2bf0-4842-aa4f-44a8812cf437.png"
echo [114/123] 13_11.png
curl %CURLOPTS% -o "lioness-frames\13_11.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040047_c891ec68-199f-4a6f-bbdb-178abeef1a6b.png"
echo [115/123] 13_18.png
curl %CURLOPTS% -o "lioness-frames\13_18.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040049_b6558f46-f689-4271-b8e2-663599ca6484.png"
echo [116/123] 13_25.png
curl %CURLOPTS% -o "lioness-frames\13_25.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040052_b2d902b3-d507-47a9-a4c5-18c2fc435a59.png"
echo [117/123] 13_32.png
curl %CURLOPTS% -o "lioness-frames\13_32.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040100_bd0c4536-259d-4b96-8f1f-fa912b866574.png"
echo [118/123] 13_39.png
curl %CURLOPTS% -o "lioness-frames\13_39.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040106_a5a0a031-21e0-435c-8ccf-7c286608aa7b.png"
echo [119/123] 13_46.png
curl %CURLOPTS% -o "lioness-frames\13_46.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040107_288b8c9c-022a-4a95-8553-8ec4e0c50711.png"
echo [120/123] 13_53.png
curl %CURLOPTS% -o "lioness-frames\13_53.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040108_f8d2a2a3-ba70-470e-8e13-d56f818433f2.png"
echo [121/123] 14_00.png
curl %CURLOPTS% -o "lioness-frames\14_00.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040123_2687df55-756f-4f8e-98a8-55039d46c4d1.png"
echo [122/123] 14_07.png
curl %CURLOPTS% -o "lioness-frames\14_07.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040114_edd4b36a-0481-45b2-8ed8-63c82cd861fe.png"
echo [123/123] 14_14.png
curl %CURLOPTS% -o "lioness-frames\14_14.png" "https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040124_8e993d2d-1f12-4c69-89a0-23d2a19f3b98.png"
echo.
echo Done. Counting files:
dir /b "lioness-frames\*.png" | find /c ".png"
echo (should be 123 - if fewer, just run this file again)
pause
