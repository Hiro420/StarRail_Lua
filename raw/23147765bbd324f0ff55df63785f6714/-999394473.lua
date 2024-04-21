local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownBoardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownBoardListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyRenownBoardListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.board_item_panels = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.board_item_panels = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L1_1
  L3_2 = A2_2 - L3_2
  L4_2 = pairs
  L5_2 = A0_2.board_item_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.set_panel_visibility
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_board_panel
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_panel_visibility
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_panel_state
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L0_1.set_board_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.renown_board_list
  L4_2 = L4_2.MultiPrefabList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 < 0 then
    L2_2 = 0
  end
  L3_2 = A0_2.board_item_panels
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.renown_board_list
    L4_2 = L4_2.MultiPrefabList
    L4_2 = L4_2[L2_2]
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = L4_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.renown_board_list
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AlleyRenownBoardPanel
    L9_2 = G
    L9_2 = L9_2.AlleyRenownBoardPanelBinder
    L10_2 = L1_1
    L10_2 = L2_2 + L10_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L3_2 = L6_2
    L7_2 = L3_2
    L6_2 = L3_2.bind
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.board_item_panels
    L6_2[L2_2] = L3_2
  end
  return L3_2
end
L0_1._get_board_panel = L2_1
return L0_1
