local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkHistoryItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LeftPanel/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/TitlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/TitlePanel/Text/CurrentMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_latest = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/DotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/DotPanel/Line_L"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dot_l = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/DotPanel/Line_S"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dot_s = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/TalkIconPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_voice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/TalkIconPanel/Line_L"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_voice_l = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/TalkIconPanel/Line_S"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_voice_s = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/TalkIconPanel/TalkIcon/Actived"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_voice_on = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterPanel/TalkIconPanel/TalkIcon/UnActive"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_voice_off = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1