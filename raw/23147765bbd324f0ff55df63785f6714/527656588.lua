local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardStaticListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonRewardStaticListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rewards = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2.all_get = A1_2
end
L0_1.pre_set_all_get = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._rewards
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._rewards
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.ConfigID
  if not L6_2 then
    L6_2 = L5_2.ItemID
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count
  L9_2 = L5_2.Count
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.all_get
  if L7_2 then
    L8_2 = L4_2
    L7_2 = L4_2.set_attachment_getted
    L9_2 = A0_2.all_get
    L7_2(L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_item_changed = L1_1
return L0_1
