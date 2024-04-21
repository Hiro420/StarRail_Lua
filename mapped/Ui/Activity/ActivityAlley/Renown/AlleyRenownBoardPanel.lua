local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownBoardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyRenownBoardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Alley_Reward_RequireItemID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.max_item_count = A3_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_board_items
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_board_items
    L8_2 = L8_2[L5_2]
    L9_2 = A0_2._on_btn_board_item
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L3_2 = "AlleyPtBoard"
  L4_2 = tostring
  L5_2 = A0_2.max_item_count
  L6_2 = L1_1
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 + 1
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2.name = L3_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_panel_visibility = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_board_active_items
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_board_items
    L7_2 = L7_2[L6_2]
    L8_2 = L6_2 <= A1_2
    L7_2.interactable = L8_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_board_active_items
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2 <= A1_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_overflow_effect
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 >= L2_2
  L3_2(L4_2, L5_2)
end
L0_1.set_panel_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_board_item = L3_1
return L0_1
