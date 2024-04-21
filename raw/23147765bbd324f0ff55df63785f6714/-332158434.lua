local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Utils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardQuestListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  A0_2._nav_zone_type = L3_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._prepare_quest_id_2_arr_index
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.shallow_copy
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._quest_data_arr = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_list
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  A0_2._nav_zone_type = A1_2
end
L2_1.set_navigation_zone_type = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_27
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.CommonActivityRewardQuestItemPanel
  L8_2 = G
  L8_2 = L8_2.CommonActivityRewardQuestItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._nav_zone_type
  if L5_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_navigation_zone_type
    L7_2 = A0_2._nav_zone_type
    L5_2(L6_2, L7_2)
  end
  L3_2.UserObjectData = L4_2
  ::lbl_27::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._quest_data_arr
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L2_1._on_quest_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._quest_data_arr
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._compare_quest_data
    L4_3 = A0_3
    L5_3 = A1_3
    return L2_3(L3_3, L4_3, L5_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_data_arr
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._quest_id_2_arr_index = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._quest_id_2_arr_index
    L8_2 = L6_2.ID
    L7_2[L8_2] = L5_2
  end
end
L2_1._prepare_quest_id_2_arr_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1.compare_quest_data_with_custom_comparer
  L4_2 = A1_2
  L5_2 = A2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2._quest_id_2_arr_index
    L3_3 = A0_3.ID
    L2_3 = L2_3[L3_3]
    L3_3 = A0_2._quest_id_2_arr_index
    L4_3 = A1_3.ID
    L3_3 = L3_3[L4_3]
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  return L3_2(L4_2, L5_2, L6_2)
end
L2_1._compare_quest_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._quest_data_arr
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    if L8_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  if L2_2 == 0 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.quest_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_29
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_29::
  L4_2 = L3_2.UserObjectData
  return L4_2
end
L2_1._get_quest_item_by_quest_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L1_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L2_1.get_first_selected_object = L3_1
return L2_1
