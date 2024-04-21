local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconDetail"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSelectItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionSelectItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._current_selected_num = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2.is_out_most_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.notify_detail_panel_with_config_id
      L4_2 = A0_2._configs
      L5_2 = A0_2._item_index
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.ConfigID
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._slots_num = A2_2
  A0_2._submitted_item_id_array = A3_2
  L4_2 = A0_2._slots_num
  if L4_2 == 1 then
    A0_2._is_single_choice = true
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_all_visible_configs
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._configs = L4_2
  A0_2._item_index = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._configs
  L6_2 = #L6_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._submitted_item_id_array
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A0_2._submitted_item_id_array
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._submitted_item_id_array
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_item_submitted = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Num
    L8_2 = L7_2.IsInvisible
    if L8_2 then
      L8_2 = L7_2.IsHide
      L8_2 = L8_2 == 0 and L8_2
    end
    if not L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L0_1._get_all_visible_configs = L1_1
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
    L7_2 = L7_2.RewardItemIconDetail
    L8_2 = G
    L8_2 = L8_2.RewardItemIconDetailBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._configs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_mission_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  L8_2 = A0_2._on_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_icon_click_handler
  L8_2 = A0_2._on_icon_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = L5_2.isChoose
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_fade_disable_state
  L9_2 = A0_2
  L8_2 = A0_2._is_item_submitted
  L10_2 = L5_2.ConfigID
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_nav_handler
  L8_2 = A0_2._on_select_callback
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2.Num
  if L3_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_SelectMissionItem_Select_Hidden_Tips"
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_item_submitted
  L5_2 = A1_2.ConfigID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Debute_ItemUsedToast"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A1_2.isChoose
  if L3_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._on_click_minus
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_is_overflow
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._is_single_choice
    if not L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = "UIText_SelectMissionItem_Select_Max_Tips"
      L3_2(L4_2, L5_2)
      return
    else
      L4_2 = A0_2
      L3_2 = A0_2._force_clear_current_selection
      L5_2 = A0_2._current_selected_config
      L6_2 = A0_2._current_selected_panel
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  A1_2.isChoose = true
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.update_clicked_item_hint
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._current_selected_config = A1_2
  A0_2._current_selected_panel = A2_2
  L3_2 = A0_2._current_selected_num
  L3_2 = L3_2 + 1
  A0_2._current_selected_num = L3_2
  L3_2 = A0_2._click_cbk
  if L3_2 then
    L3_2 = A0_2._cbk_owner
    if L3_2 then
      L3_2 = A0_2._click_cbk
      L4_2 = A0_2._cbk_owner
      L5_2 = A1_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2.isChoose
  if L3_2 == false then
    return
  end
  A1_2.isChoose = false
  L4_2 = A2_2
  L3_2 = A2_2.set_checked
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_selected_num
  L3_2 = L3_2 - 1
  A0_2._current_selected_num = L3_2
  L3_2 = A0_2._click_cbk
  if L3_2 then
    L3_2 = A0_2._cbk_owner
    if L3_2 then
      L3_2 = A0_2._click_cbk
      L4_2 = A0_2._cbk_owner
      L5_2 = A1_2
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._force_clear_current_selection = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2.isChoose
  if L3_2 == false then
    return
  end
  A1_2.isChoose = false
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.update_clicked_item_hint
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.set_checked
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_selected_num
  L3_2 = L3_2 - 1
  A0_2._current_selected_num = L3_2
  L3_2 = A0_2._click_cbk
  if L3_2 then
    L3_2 = A0_2._cbk_owner
    if L3_2 then
      L3_2 = A0_2._click_cbk
      L4_2 = A0_2._cbk_owner
      L5_2 = A1_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_click_minus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.notify_detail_panel_with_config_id
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_icon_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A1_2.ConfigID
    L8_2 = L6_2.ConfigID
    if L7_2 == L8_2 then
      A0_2._item_index = L5_2
    end
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.update_focused_item_hint
  L4_2 = A0_2._configs
  L5_2 = A0_2._item_index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.ConfigID
  L2_2(L3_2, L4_2)
end
L0_1._on_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ConfigID
    L8_2 = A1_2.ConfigID
    if L7_2 == L8_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._find_config = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._cbk_owner = A1_2
end
L0_1.register_click_cbk = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.isChoose
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._slots_num
  L2_2 = L1_2 >= L2_2
  return L2_2
end
L0_1._check_is_overflow = L1_1
return L0_1
