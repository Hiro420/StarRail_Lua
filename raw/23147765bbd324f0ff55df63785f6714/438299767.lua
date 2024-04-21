local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguageDropItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_AudioManager
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.language_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.language_data
  L4_2 = L4_2.text_id
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAudioSize
  L4_2 = A0_2.language_data
  L4_2 = L4_2.language_key
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.IsAudioDownloaded
  L5_2 = A0_2.language_data
  L5_2 = L5_2.language_key
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.name_language_size
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.name_language_size
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.ShowSize
  L6_2 = not L3_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.toggle_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.manage_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Voice_Del_Btn_Pc"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_language_size
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.manage_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.setup_as_manage_btn = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L2_1
return L0_1
