local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeForcePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.force_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_force_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._count = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.force_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._count
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonSubStarInfoPanel
    L8_2 = G
    L8_2 = L8_2.CommonSubStarInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = 1
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_get_force_item = L1_1
return L0_1
