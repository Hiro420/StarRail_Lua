local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionNumRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._hint_enabled = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_button = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._items
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.button
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_last_button = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_update_reward_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rank
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._reached_hint_enabled = A1_2
  A0_2._item_hint_enabled = A2_2
end
L0_1.enable_hint = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._has_reached
  L4_2 = L4_2 ~= A2_2
  A0_2._reach_changed = L4_2
  L4_2 = A0_2._reach_changed
  if L4_2 then
    L4_2 = A2_2
  end
  A0_2._newly_reached = L4_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  A0_2._items = L4_2
  A0_2._has_reached = A2_2
  A0_2._bonus_count = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_reached_view
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_reward_view
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._items
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_reward_view
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  L4_2 = A0_2._reached_hint_enabled
  if not L4_2 then
    L4_2 = A0_2._reach_changed
    if not L4_2 then
      goto lbl_39
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._play_hint
  L4_2(L5_2)
  ::lbl_39::
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_rank
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if not A1_2 then
    A0_2._rank = 0
    return
  end
  L4_2 = G
  L4_2 = L4_2.ExpeditionUtils
  L4_2 = L4_2.get_score_rank
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._rank
  L5_2 = L5_2 ~= L4_2
  A0_2._rank = L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_rank
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  if A3_2 and L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_rank
    L7_2 = L6_2
    L6_2 = L6_2.is_max
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_rank
      L7_2 = L6_2
      L6_2 = L6_2.play_upgrade
      L6_2(L7_2)
    end
  end
end
L0_1.setup_grade = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_to_reach
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_reached
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reached
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_reached
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_groups
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._has_reached
    if L6_2 then
      L6_2 = 1
      if L6_2 then
        goto lbl_24
      end
    end
    L6_2 = 0.5
    ::lbl_24::
    L5_2.alpha = L6_2
  end
end
L0_1._setup_reached_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_reached
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Normal"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._bonus_count
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Check"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._bonus_count
    if L1_2 == 1 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "Check_First"
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._bonus_count
      if L1_2 == 2 then
        L1_2 = A0_2._newly_reached
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.animator
          L2_2 = L1_2
          L1_2 = L1_2.SetTrigger
          L3_2 = "Check_All"
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.animator
          L2_2 = L1_2
          L1_2 = L1_2.SetTrigger
          L3_2 = "Check_Second"
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1._play_hint = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L5_2 = A0_2._items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_black
  L8_2 = A0_2._has_reached
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._item_hint_enabled
  if not L6_2 then
    L6_2 = A0_2._newly_reached
    if not L6_2 then
      goto lbl_42
    end
  end
  L7_2 = L4_2
  L6_2 = L4_2.play_effect
  L8_2 = 1
  L6_2(L7_2, L8_2)
  ::lbl_42::
  return L3_2
end
L0_1._on_update_reward_item = L1_1
return L0_1
