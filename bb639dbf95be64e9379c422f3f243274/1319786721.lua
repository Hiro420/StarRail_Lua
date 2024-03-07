local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionMissionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionMissionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionGroupTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionMissionListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._expedition_data_list = L1_2
  A0_2._is_activity = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_update_expedition_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._mission_btn_root_callback = A1_2
  A0_2._mission_btn_root_callback_self = A2_2
end
L0_1.register_mission_btn_root_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._start_select_avatar_callback = A1_2
  A0_2._start_select_avatar_callback_self = A2_2
end
L0_1.register_start_select_avatar_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_activity = A1_2
end
L0_1.set_style = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer_activity
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.timer_activity
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = A1_2.EndTimeStamp
    L6_2 = nil
    L7_2 = nil
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.set_schedule = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._expedition_data_list = A1_2
  L3_2 = A0_2._expedition_data_list
  L3_2 = #L3_2
  if L3_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_mission_view
    L4_2 = L3_2
    L3_2 = L3_2.SetListItemCount
    L5_2 = A0_2._expedition_data_list
    L5_2 = #L5_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_mission_view
    L4_2 = L3_2
    L3_2 = L3_2.RefreshAllShownItem
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_first_selected_expedition
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.ID
  A0_2._current_expedition_data_id = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_items
  L4_2(L5_2)
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_mission_view
    L5_2 = L4_2
    L4_2 = L4_2.MovePanelToItemIndex
    L7_2 = A0_2
    L6_2 = A0_2._get_expedition_index
    L8_2 = A2_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._mission_btn_root_callback
  L6_2 = A0_2._mission_btn_root_callback_self
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._expedition_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_expedition_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._expedition_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 ~= nil then
      L7_2 = L6_2.ID
      if L7_2 == A1_2 then
        return L6_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_first_complete_expedition
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 == nil or not L2_2 then
    L3_2 = A0_2._expedition_data_list
    L3_2 = L3_2[1]
  end
  return L3_2
end
L0_1._get_first_selected_expedition = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._expedition_data_list
  L1_2 = L1_2[1]
  return L1_2
end
L0_1._get_first_expedition = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._expedition_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsComplete
    if L6_2 then
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_first_complete_expedition = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._expedition_data_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_items
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scrollview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_current_selected_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._expedition_data_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = G
    L2_3 = L2_3.ExpeditionUtils
    L2_3 = L2_3.is_locked
    L3_3 = A0_3.ID
    L2_3 = L2_3(L3_3)
    L3_3 = G
    L3_3 = L3_3.ExpeditionUtils
    L3_3 = L3_3.is_locked
    L4_3 = A1_3.ID
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L4_3 = not L2_3
      return L4_3
    end
    L4_3 = L0_1._get_status_value
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L5_3 = L0_1._get_status_value
    L6_3 = A1_3
    L5_3 = L5_3(L6_3)
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 > L5_3
      return L6_3
    end
    L6_3 = A0_3.Config
    L6_3 = L6_3.ExpeditionRank
    L7_3 = A1_3.Config
    L7_3 = L7_3.ExpeditionRank
    if L6_3 ~= L7_3 then
      L8_3 = #L6_3
      L9_3 = #L7_3
      L8_3 = L8_3 > L9_3
      return L8_3
    end
    L8_3 = G
    L8_3 = L8_3.ExpeditionUtils
    L8_3 = L8_3.get_display_item_id
    L9_3 = A0_3
    L8_3 = L8_3(L9_3)
    L9_3 = G
    L9_3 = L9_3.ExpeditionUtils
    L9_3 = L9_3.get_display_item_id
    L10_3 = A1_3
    L9_3 = L9_3(L10_3)
    if L8_3 ~= nil and L9_3 ~= nil and L8_3 ~= L9_3 then
      L10_3 = L8_3 > L9_3
      return L10_3
    end
    L10_3 = A0_3.ID
    L11_3 = A1_3.ID
    L10_3 = L10_3 < L11_3
    return L10_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.IsComplete
  if L1_2 then
    L1_2 = 3
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.InProgress
  if L1_2 == L2_2 then
    L1_2 = 2
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.NotInProgress
  if L1_2 == L2_2 then
    L1_2 = 1
    return L1_2
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_status_value = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._expedition_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_scrollview = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_expedition_prefab_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ExpeditionMissionItemPanel
    L9_2 = G
    L9_2 = L9_2.ExpeditionMissionItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.register_show_detail_callback
  L8_2 = A0_2._on_item_clicked
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_start_select_avatar_callback
  L8_2 = A0_2._start_select_avatar_callback
  L9_2 = A0_2._start_select_avatar_callback_self
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._expedition_data_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L7_2 = L6_2.ID
  L8_2 = A0_2._current_expedition_data_id
  L7_2 = L7_2 == L8_2
  L9_2 = L5_2
  L8_2 = L5_2.setup_view
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  return L4_2
end
L0_1._on_update_expedition_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_activity
  if not L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = A0_2._expedition_data_list
  L3_2 = A1_2 + 1
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.Config
  L3_2 = L3_2.ExpeditionRank
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityExpeditionRank
  L4_2 = L4_2.High
  if L3_2 == L4_2 then
    L4_2 = 2
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = 1
  ::lbl_22::
  return L4_2
end
L0_1._get_expedition_prefab_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._current_expedition_data_id
  L3_2 = A1_2.ID
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A1_2.ID
  A0_2._current_expedition_data_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_items
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._mission_btn_root_callback
  L4_2 = A0_2._mission_btn_root_callback_self
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._expedition_data_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2._expedition_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._current_expedition_data_id
    L8_2 = L6_2.ID
    if L7_2 == L8_2 then
      L1_2 = L5_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_mission_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_current_selected_object = L2_1
return L0_1
