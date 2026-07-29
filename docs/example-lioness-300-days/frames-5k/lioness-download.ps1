# Lioness: 300 Days - скачивает 123 кадра 5120x2880 и называет их по таймкоду.
# Запуск:  powershell -ExecutionPolicy Bypass -File .\lioness-download.ps1

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = "SilentlyContinue"
$dest = Join-Path $PSScriptRoot "lioness-frames"
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$frames = @(
  @{n="0_00"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213455_3ac347c5-1593-43cc-a35e-f3eaf692491a.png"}
  @{n="0_07"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213527_29a4d25d-b0ee-4c3d-b48f-64df6c439e55.png"}
  @{n="0_14"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213531_ad460fa6-0366-4458-9dd6-a70ca0a09fb7.png"}
  @{n="0_21"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213534_2f0cb341-4960-4c01-9674-4afeaf629c3e.png"}
  @{n="0_28"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213548_ee6c37df-cff5-4939-b9c1-fe5b8e9f8d9c.png"}
  @{n="0_35"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213551_85379bfb-57a4-46cd-9406-869c818a2492.png"}
  @{n="0_42"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213554_557410af-2182-4d94-868e-63b318d7ca86.png"}
  @{n="0_49"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213557_175ec375-7b75-42c7-8449-de1540a39265.png"}
  @{n="0_56"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213628_4111d19f-78cf-4bb3-8461-7fa3add8930c.png"}
  @{n="1_03"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213631_6e6c6461-45d5-4570-a3b7-db66c5de9703.png"}
  @{n="1_10"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213634_c35372c4-98ea-40d7-912a-bfa0c2cdfee2.png"}
  @{n="1_17"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213638_46b08b9d-7f17-4747-a71e-34ebefcdbee4.png"}
  @{n="1_24"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213647_643a3214-13e8-40c1-8acf-c3e46348fb51.png"}
  @{n="1_31"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_213701_d2875323-8214-4a0a-9d99-08044b643f29.png"}
  @{n="1_38"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214151_d28c9ab9-ea33-46d6-a821-c745a7f798a1.png"}
  @{n="1_45"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214155_7e916036-65a2-460a-a959-3879b54ed6a9.png"}
  @{n="1_52"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214158_a7a709fa-4c8a-42f2-895c-a76c77388bec.png"}
  @{n="1_59"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214201_05ea72b9-5532-4380-ba7c-d5d9ca9e3165.png"}
  @{n="2_06"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214204_d55e8559-0b3c-475d-a651-606dcfbbaa4a.png"}
  @{n="2_13"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214207_dcfaa423-4b67-491b-9907-b73c59d4025e.png"}
  @{n="2_20"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214210_e8ad0219-f6e6-4643-8896-809ea2374ac4.png"}
  @{n="2_27"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214213_a7b3b2ea-2639-407e-996b-46c5dc14dd41.png"}
  @{n="2_34"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214239_fec3946f-9178-4bcd-865e-075cea3e295a.png"}
  @{n="2_41"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214243_87e93745-daa0-4df8-8f6b-c82c5309744a.png"}
  @{n="2_48"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214226_d321f59a-fc0f-4744-8635-2186a3f7d551.png"}
  @{n="2_55"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214230_73ea7643-e628-4d20-9f8b-0f7dbc6d4422.png"}
  @{n="3_02"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214253_5b009854-4788-461c-879a-ef935dabe9cd.png"}
  @{n="3_09"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214257_8ac34142-30ca-4352-87cf-c5167a2247f9.png"}
  @{n="3_16"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214300_bad6b515-a8d2-4f9e-9c10-6e85d5306edd.png"}
  @{n="3_23"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214305_3917cca4-3511-4f37-8417-8242c73fca4c.png"}
  @{n="3_30"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214308_b6bc8cef-02ac-4268-a71c-ae9855cc47a3.png"}
  @{n="3_37"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214311_e515f8c6-7cf1-4b88-81b9-01c825e78237.png"}
  @{n="3_44"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214328_a3e2afa1-25c7-4a72-bd4e-cd1e9aa5a34e.png"}
  @{n="3_51"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214331_bab44efa-8afd-471c-a8fc-b974179b26b9.png"}
  @{n="3_58"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214335_6c8d112f-5989-40d9-92f3-5f0c202fd235.png"}
  @{n="4_05"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214339_512ac9b5-baf3-467e-83fb-464facc8bc45.png"}
  @{n="4_12"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214342_f238d7c9-70bb-4bf4-8424-15b8718a1d12.png"}
  @{n="4_19"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214346_843ee3fa-a504-4e4c-8610-a3b3b6e22b21.png"}
  @{n="4_26"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214357_f3b28fc5-420e-41fe-b7c6-7330708c6523.png"}
  @{n="4_33"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214400_2195bd69-3c72-4e77-923b-4ea78829c0ec.png"}
  @{n="4_40"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214404_f068ed3a-e230-44ef-beaf-8c16f1fdacd7.png"}
  @{n="4_47"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214407_6d4d6749-132b-46ea-93c2-3e72061af24a.png"}
  @{n="4_54"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214433_a7f1cba7-81e6-482d-a0c2-7de47e712dd9.png"}
  @{n="5_01"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214436_5082f52a-2634-4128-b7ef-45ff89e57ba5.png"}
  @{n="5_08"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214452_050c4f68-761e-470b-99a3-97a00a686d0a.png"}
  @{n="5_15"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214456_87e64d61-e2ff-4a38-9ffe-25225bcee434.png"}
  @{n="5_22"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214459_30a92ef2-7f01-46cb-a3c4-2e5eed878164.png"}
  @{n="5_29"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214502_3db7f0cf-0a1e-45e9-8087-9757503db895.png"}
  @{n="5_36"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214506_bc4cd242-b3dd-4c5d-8a5c-ceb41f75a0dc.png"}
  @{n="5_43"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214509_f16e9bef-d767-4857-88c7-04dab8b55d14.png"}
  @{n="5_50"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214517_240ba38f-f4bd-4d0a-a54d-37b7479872cc.png"}
  @{n="5_57"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214521_6a5c2801-607c-4534-b3c2-80f8d3f3e924.png"}
  @{n="6_04"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214525_93c51558-a576-4f2f-8986-3e95f7c8c134.png"}
  @{n="6_11"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214538_f2a88eb7-ae2e-40f0-ad24-c459f7f015c8.png"}
  @{n="6_18"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214542_ab10da3b-9209-4bbf-ab42-08f625e6076d.png"}
  @{n="6_25"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214546_4ea298da-62a0-4460-a410-bd0059ae6032.png"}
  @{n="6_32"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214555_73821a39-9c54-4d76-81d7-1cee42c4e36c.png"}
  @{n="6_39"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214558_7d5ef201-fe99-4d7d-a1c8-6d7f3e317cc7.png"}
  @{n="6_46"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214602_9afd58f1-7350-4a04-9b7e-f642a05b1606.png"}
  @{n="6_53"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214605_ccfa8b56-e81e-4e01-a553-1db92a2f1fa0.png"}
  @{n="7_00"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214609_43e914f6-4bcb-4863-9f43-f3ad3b8f8bbf.png"}
  @{n="7_07"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214612_ebf436f1-058f-455e-bc49-c153325c8324.png"}
  @{n="7_14"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214624_3a7ca3cb-524c-41cb-af05-03d82f7b93c4.png"}
  @{n="7_21"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214628_da74df89-0478-4e4c-81bd-d3d5f4e3bcfb.png"}
  @{n="7_28"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214632_1982e885-0407-48a8-9d3d-47f693538898.png"}
  @{n="7_35"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214635_24370f57-379e-4343-a137-304056e2fcf0.png"}
  @{n="7_42"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214639_36f7435e-6013-4ab3-9fa3-9a1dfb915379.png"}
  @{n="7_49"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214644_696ba6b8-daf0-4a06-87c2-729e3d8952c6.png"}
  @{n="7_56"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214659_414d6cd1-a75b-48e3-97e7-a99cdb98aefb.png"}
  @{n="8_03"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214704_5868d831-7dfc-4969-8843-f8e3cf127982.png"}
  @{n="8_10"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214708_36060360-d6a4-4e95-94d6-0da9ba58eed8.png"}
  @{n="8_17"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214711_fbeed0f0-28cf-4d2b-9761-014daf8c6e62.png"}
  @{n="8_24"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214714_e6cb143a-40e4-4c50-8450-c5570fcc1b16.png"}
  @{n="8_31"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214718_af049483-573c-4879-9c16-79e8bd3cd756.png"}
  @{n="8_38"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214728_24cc8c07-64dc-4bbf-bcf2-ba8eda0c0783.png"}
  @{n="8_45"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214732_c3e94e4d-735f-4337-9c1d-6b7be1911b76.png"}
  @{n="8_52"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214736_8a1900cb-d025-4329-be62-1b0b0909ef6b.png"}
  @{n="8_59"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214740_c70e3952-1bd2-47c7-baea-337a21131c26.png"}
  @{n="9_06"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214744_27f0d5a4-f290-4ca5-80be-e108a0fef3c0.png"}
  @{n="9_13"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214748_17f5abcf-5be7-450b-b00d-56e226139e2c.png"}
  @{n="9_20"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214800_fcd080e5-ed05-4530-ab41-640389b9d7ca.png"}
  @{n="9_27"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214805_193b61be-a117-4a48-a87c-ecb87eca8ff3.png"}
  @{n="9_34"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214808_6ddb8db4-d77d-4b62-b16e-beaee91a91a4.png"}
  @{n="9_41"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214814_2bdeb8b2-8390-4e24-8a93-53c5012c1c5f.png"}
  @{n="9_48"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214818_ccec12aa-e6d0-42c8-8a40-a7b3c8adc8c4.png"}
  @{n="9_55"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214822_98fb1566-35b2-4919-8b9e-6b3fb23946ef.png"}
  @{n="10_02"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214830_d22637ef-1b26-4e68-a133-73835137bf4e.png"}
  @{n="10_09"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214835_5cc7da29-50bf-4877-93a7-6bb0431b3621.png"}
  @{n="10_16"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214839_6e6d2ee5-9a53-4435-a68a-395f1dcb2dcf.png"}
  @{n="10_23"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214843_344d1d8a-4992-4fe2-909c-090b75ed70f2.png"}
  @{n="10_30"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214848_8f0e79db-d350-4ec6-b0db-9f77d9887d44.png"}
  @{n="10_37"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214853_30e53201-09c0-4a53-a243-9f2eae3f8b05.png"}
  @{n="10_44"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214916_4f1f9521-46f9-4c1c-86d0-647e5f63d506.png"}
  @{n="10_51"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214932_d7bd8ad1-534f-47ba-a096-72fe70c3cd16.png"}
  @{n="10_58"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214937_ba8468a8-c120-4136-9bf9-6557f7532d8a.png"}
  @{n="11_05"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214948_f090fa64-d925-4159-8d56-6888e3296289.png"}
  @{n="11_12"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_214954_384537cf-0612-4658-a23f-b092f676ecbc.png"}
  @{n="11_19"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215000_0417280a-1b77-498f-a395-13189c24b503.png"}
  @{n="11_26"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215009_5a93ff56-8d8d-4c23-a25c-cae2fe6000b9.png"}
  @{n="11_33"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215014_a3ee5ca8-00b1-4f34-a104-ba9468f0a8e9.png"}
  @{n="11_40"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215022_f9ba9ddf-135a-422d-9e78-4316bd5ad58d.png"}
  @{n="11_47"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215033_aa76d2f5-e8e9-4005-87a8-f0caf0565e5b.png"}
  @{n="11_54"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215040_38dccb49-60af-424c-9864-9bf156803b08.png"}
  @{n="12_01"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215048_07df6d49-ab2e-43d8-976a-7fc9c34de342.png"}
  @{n="12_08"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215059_e1b50172-bdb3-4e54-a216-8cd64096d22c.png"}
  @{n="12_15"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215103_820af0a8-9ee5-464c-baf4-8d1ddb99d295.png"}
  @{n="12_22"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215108_766d574a-ca5f-4937-9b5d-5574186d0a3f.png"}
  @{n="12_29"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215113_3bcb6431-7209-4ac9-9ec4-2eface60d2ff.png"}
  @{n="12_36"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215119_5a8addaa-9ffe-4615-8fe8-fdeb8ffb90fa.png"}
  @{n="12_43"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260728_215124_f1d954c6-1621-41d4-b5e3-f627067c0d4b.png"}
  @{n="12_50"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040038_24dbccee-1f79-40d9-9cc3-611d4a4380ea.png"}
  @{n="12_57"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040041_788d7f6c-60eb-4961-a562-4d985b5633b7.png"}
  @{n="13_04"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040044_f6df6d79-2bf0-4842-aa4f-44a8812cf437.png"}
  @{n="13_11"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040047_c891ec68-199f-4a6f-bbdb-178abeef1a6b.png"}
  @{n="13_18"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040049_b6558f46-f689-4271-b8e2-663599ca6484.png"}
  @{n="13_25"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040052_b2d902b3-d507-47a9-a4c5-18c2fc435a59.png"}
  @{n="13_32"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040100_bd0c4536-259d-4b96-8f1f-fa912b866574.png"}
  @{n="13_39"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040106_a5a0a031-21e0-435c-8ccf-7c286608aa7b.png"}
  @{n="13_46"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040107_288b8c9c-022a-4a95-8553-8ec4e0c50711.png"}
  @{n="13_53"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040108_f8d2a2a3-ba70-470e-8e13-d56f818433f2.png"}
  @{n="14_00"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040123_2687df55-756f-4f8e-98a8-55039d46c4d1.png"}
  @{n="14_07"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040114_edd4b36a-0481-45b2-8ed8-63c82cd861fe.png"}
  @{n="14_14"; u="https://d8j0ntlcm91z4.cloudfront.net/user_3H0VpNOETP4iFCc9Ircvn51x9LF/hf_20260729_040124_8e993d2d-1f12-4c69-89a0-23d2a19f3b98.png"}
)

$total = $frames.Count
$i = 0; $ok = 0; $fail = @()
foreach ($f in $frames) {
  $i++
  $out = Join-Path $dest ($f.n + ".png")
  if ((Test-Path $out) -and ((Get-Item $out).Length -gt 10000)) {
    Write-Host ("[{0}/{1}] {2}.png - уже есть" -f $i, $total, $f.n)
    $ok++; continue
  }
  $done = $false
  for ($try = 1; $try -le 4 -and -not $done; $try++) {
    try {
      Invoke-WebRequest -Uri $f.u -OutFile $out -UseBasicParsing -TimeoutSec 180
      $done = $true
    } catch {
      if ($try -eq 4) { Write-Host ("[{0}/{1}] {2}.png - ОШИБКА: {3}" -f $i, $total, $f.n, $_.Exception.Message) -ForegroundColor Red }
      else { Start-Sleep -Seconds (2 * $try) }
    }
  }
  if ($done) { Write-Host ("[{0}/{1}] {2}.png" -f $i, $total, $f.n); $ok++ }
  else { $fail += $f.n }
}

Write-Host ""
Write-Host ("Готово: {0} из {1} в {2}" -f $ok, $total, $dest) -ForegroundColor Green
if ($fail.Count -gt 0) {
  Write-Host ("Не скачалось ({0}): {1}" -f $fail.Count, ($fail -join ", ")) -ForegroundColor Yellow
  Write-Host "Запусти скрипт ещё раз - он до-качает только их."
}
Write-Host ""
Read-Host "Нажми Enter чтобы закрыть"
