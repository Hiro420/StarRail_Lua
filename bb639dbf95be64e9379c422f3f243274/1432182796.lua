local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkOptionItemRogueAeonPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Talk/Widget/RogueTalkOptionInfoRow.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_option = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/Selected/ArrowsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/LevelPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/HintPanel/ValueHintPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_add_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HintPanel/ValueHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_add_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HintPanel/MaxHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_max_level = L1_2
end
L0_1._on_bind = L1_1
return L0_1
