local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameOpticalIllusionPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MiniGame/MiniGameMirrorPanel.prefab"
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
  L4_2 = "FunctionPanel/BtnReset/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reset = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CurcorContainer/CommonVirtualCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.virtual_cursor_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BottomPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bottom_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BottomPanel/Hint01"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.hint_panel1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "BottomPanel/Hint01/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.key_map_info1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BottomPanel/Hint01/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hint_text1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BottomPanel/Hint02"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.hint_panel2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "BottomPanel/Hint02/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.key_map_info2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BottomPanel/Hint02/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hint_text2 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
