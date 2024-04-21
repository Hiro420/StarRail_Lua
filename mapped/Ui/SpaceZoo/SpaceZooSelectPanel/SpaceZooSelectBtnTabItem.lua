local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooSelectBtnTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._cattery_id = nil
  A0_2._is_btn_root_down = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cattery_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooBagSlotsExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_select
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivitySpaceZoo_"
  L6_2 = L2_2.Channel
  L7_2 = L6_2
  L6_2 = L6_2.ToString
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_unselect
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivitySpaceZoo_"
  L6_2 = L2_2.Channel
  L7_2 = L6_2
  L6_2 = L6_2.ToString
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cattery_id
  return L1_2
end
L0_1.get_cattery_id = L1_1
return L0_1
