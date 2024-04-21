local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookEventPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookEventRow"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookEventPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueHandbookModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueHandbookEventPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_save_by_click = false
  A0_2._have_tab_control = false
  L1_2 = {}
  A0_2._current_event_list = L1_2
  L1_2 = {}
  A0_2._available_event_list_in_tab = L1_2
  L1_2 = {}
  A0_2._available_event_type_row_table = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshScheduleStatusAndUnlockNum
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableEventTypeList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._available_event_type_row_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._available_event_type_row_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetSortedRandomEventData
    L8_2 = L5_2.RogueHandBookEventType
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._available_event_list_in_tab
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_new
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_control_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._have_tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.click_item_by_uid
      L3_2 = 1
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_tab_item_clicked
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_num
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = tostring
  L4_2 = L1_1.UnlockEventNum
  L3_2 = L3_2(L4_2)
  L4_2 = "/"
  L5_2 = tostring
  L6_2 = L1_1.AvailableEventNum
  L5_2 = L5_2(L6_2)
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToItemIndex
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = A0_2._available_event_list_in_tab
  L4_2 = L4_2[A1_2]
  if L4_2 == nil then
    L4_2 = L2_2
    L5_2 = L3_2
    return L4_2, L5_2
  end
  L4_2 = A0_2._available_event_list_in_tab
  L4_2 = L4_2[A1_2]
  L3_2 = #L4_2
  L4_2 = pairs
  L5_2 = A0_2._available_event_list_in_tab
  L5_2 = L5_2[A1_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.IsUnlocked
    if L9_2 then
      L2_2 = L2_2 + 1
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_event_count_in_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_tab_index
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_tab_index
    L2_2 = A0_2._available_event_type_row_table
    L2_2 = #L2_2
    if not (L1_2 > L2_2) then
      L1_2 = A0_2._have_tab_control
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._available_event_type_row_table
  L2_2 = A0_2._cur_tab_index
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._get_event_count_in_tab_index
  L4_2 = A0_2._cur_tab_index
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2.RogueEventTypeTitle
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_unlock_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_event_tab_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._available_event_list_in_tab
  L2_2 = A0_2._cur_tab_index
  L1_2 = L1_2[L2_2]
  A0_2._current_event_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._current_event_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_event_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._available_event_type_row_table
  L1_2 = #L1_2
  L1_2 = 2 < L1_2
  A0_2._have_tab_control = L1_2
  L1_2 = A0_2._have_tab_control
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  A0_2._cur_tab_index = 1
  L1_2 = ipairs
  L2_2 = A0_2._available_event_type_row_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RogueHandbookTopTabItem
    L9_2 = G
    L9_2 = L9_2.RogueHandbookTopTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.tab_control_root
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_data
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_icon_path
    L9_2 = L5_2.TypeIcon
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind_reddot
    L9_2 = "RogueHandbookEventTab"
    L10_2 = L5_2.RogueHandBookEventType
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab_control = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  A0_2._current_grid_item_index = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_item_selected
  L4_2 = A0_2._current_event_list
  L4_2 = L4_2[0]
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_view
  L6_2 = L5_2
  L5_2 = L5_2.GetShownItemByIndex
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2.UserObjectData
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_tab_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_tab_title
  L1_2(L2_2)
end
L0_1._refresh_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._current_event_list
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.UserObjectData
  A0_2._cur_panel = L2_2
end
L0_1._init_selection_status = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueHandbookEventRow
    L8_2 = G
    L8_2 = L8_2.RogueHandbookEventRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._current_event_list
  L5_2 = L5_2[A2_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_item_selected
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_item_new = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = A0_2._cur_panel
  if L3_2 then
    L3_2 = A0_2._cur_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_panel = A2_2
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._current_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._current_data
  L3_2(L4_2, L5_2)
end
L0_1._on_item_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
return L0_1
