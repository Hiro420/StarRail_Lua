local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityRewardUtils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardTabListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._tab_rows = A1_2
  A0_2._red_dot_name = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._prepare_tab_id_2_arr_index
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._tab_rows
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.PlayFadeIn
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._click_item_on_setup_view
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_self = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L2_1.move_list_to_first_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_item_panel_by_tab_id
  L3_2 = A0_2._cur_tab_id
  return L1_2(L2_2, L3_2)
end
L2_1.get_cur_selected_item = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.CommonActivityRewardTabItemPanel
  L8_2 = G
  L8_2 = L8_2.CommonActivityRewardTabItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_tab_item_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L5_2 = A0_2._tab_rows
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._red_dot_name
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = L5_2.QuestTabID
  L9_2 = A0_2._cur_tab_id
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._get_item_panel_by_tab_id
  L4_2 = A0_2._cur_tab_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_tab_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._get_item_panel_by_tab_id
  L5_2 = A0_2._cur_tab_id
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_checked
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._click_cbk
  L6_2 = A0_2._click_cbk_self
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1._on_tab_item_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._tab_id_2_arr_index = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._tab_id_2_arr_index
    L8_2 = L6_2.QuestTabID
    L7_2[L8_2] = L5_2
  end
end
L2_1._prepare_tab_id_2_arr_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil or A1_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._tab_id_2_arr_index
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_25
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_25::
  L4_2 = L3_2.UserObjectData
  return L4_2
end
L2_1._get_item_panel_by_tab_id = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil or A1_2 == 0 then
    return
  end
  L2_2 = A0_2._tab_id_2_arr_index
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_list
  L5_2 = L4_2
  L4_2 = L4_2.MovePanelToItemIndex
  L6_2 = L2_2 - 1
  L4_2(L5_2, L6_2)
end
L2_1._try_move_list_by_tab_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._tab_rows
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_rows
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._tab_rows
      L2_2 = L2_2[1]
      L1_2 = L2_2.QuestTabID
      L2_2 = pairs
      L3_2 = A0_2._tab_rows
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = A0_2
        L7_2 = A0_2._is_tab_contains_quest_can_take_reward
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L1_2 = L6_2.QuestTabID
          break
        end
      end
    end
  end
  if 0 < L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_move_list_by_tab_id
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._get_item_panel_by_tab_id
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.click
      L3_2(L4_2)
    end
  end
end
L2_1._click_item_on_setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.get_quest_data_arr_by_tab_row
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1.is_quest_reward_can_take
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L2_1._is_tab_contains_quest_can_take_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_tab_id
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_tab_id
    if L1_2 ~= 0 then
      goto lbl_13
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_13::
  L1_2 = A0_2._tab_id_2_arr_index
  L2_2 = A0_2._cur_tab_id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = L1_2 - 1
  L3_2(L4_2, L5_2)
end
L2_1.try_move_to_cur_selected_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_selected_item
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemNearestItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L3_2 = L2_2.UserObjectData
  L5_2 = L3_2
  L4_2 = L3_2.get_first_selected_object
  return L4_2(L5_2)
end
L2_1.get_first_selected_object = L3_1
return L2_1
