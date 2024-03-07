local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyRenownBoardPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.btn_board_items = L1_2
  L1_2 = {}
  A0_2.node_board_active_items = L1_2
  L1_2 = 1
  L2_2 = A0_2._owner
  L2_2 = L2_2.max_item_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "PtList/PtItem"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L6_2 = "PtList/PtItem"
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L8_2 = "/Active"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Button
    L10_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.btn_board_items
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.node_board_active_items
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Effect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_overflow_effect = L1_2
end
L0_1._on_bind = L1_1
return L0_1
