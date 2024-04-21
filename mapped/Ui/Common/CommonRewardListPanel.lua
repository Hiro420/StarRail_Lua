local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonRewardListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.InitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.all_get = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rewards = A1_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if 4 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_infinite_mode
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_finite_mode
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByRowColumn
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.IsInIgroreRefresh
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_list
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._rewards
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_list
    L2_2 = L1_2
    L1_2 = L1_2.MarkNextFrameRefresh
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._rewards
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._safe_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = CS
  L2_2 = L2_2.SuperScrollView
  L2_2 = L2_2.GridItemArrangeType
  L2_2 = L2_2.TopRightToBottomLeft
  L1_2.ArrangeType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshViewportAndContentPivotAndAnchor
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._rewards
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._rewards
    L9_2 = A0_2._rewards
    L9_2 = #L9_2
    L9_2 = L9_2 - L5_2
    L9_2 = L9_2 + 1
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
  end
  A0_2._rewards = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mask
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mask
    L2_2.enabled = false
  end
end
L0_1._on_finite_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = CS
  L2_2 = L2_2.SuperScrollView
  L2_2 = L2_2.GridItemArrangeType
  L2_2 = L2_2.TopLeftToBottomRight
  L1_2.ArrangeType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshViewportAndContentPivotAndAnchor
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mask
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.mask
    L1_2.enabled = true
  end
end
L0_1._on_infinite_mode = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.all_get = A1_2
  L2_2 = A0_2._rewards
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._safe_refresh
    L2_2(L3_2)
  end
end
L0_1.set_all_get = L1_1
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
  L8_2 = L4_2
  L7_2 = L4_2.set_attachment_getted
  L9_2 = A0_2.all_get
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.ForceAdjustItemPivotAndAnchor
  L9_2 = L3_2.CachedRectTransform
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
return L0_1
