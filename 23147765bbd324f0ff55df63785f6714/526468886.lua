local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportVirtualCursorPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Alley/AlleyMapVirtualCursor.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PreviewCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_preview_cursor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EraseCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_erase_cursor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DrawCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_draw_cursor = L1_2
  L1_2 = A0_2.node_erase_cursor
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.node_draw_cursor
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KeyMapInfoPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_key_map_info = L1_2
end
L0_1._on_bind = L1_1
return L0_1
