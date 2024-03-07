local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerSelectTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerSelectTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = "recently"
L3_1 = "dev"
L4_1 = "rel"
L5_1 = "sf"
L6_1 = "all"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L2_1 = 1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ServerSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._server_data_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.DevDataUtils
  L1_2 = L1_2.SelectedServer
  A0_2._selected_server = L1_2
  L1_2 = A0_2._selected_server
  if L1_2 ~= nil then
    L1_2 = A0_2._server_data_list
    L2_2 = A0_2._server_data_list
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L3_2 = A0_2._selected_server
    L1_2[L2_2] = L3_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.EIGLECAMADC
  L1_2 = L1_2.ServerList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_server
    L7_2 = L1_2[L5_2]
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._server_data_list
      L7_2 = A0_2._server_data_list
      L7_2 = #L7_2
      L7_2 = L7_2 + 1
      L8_2 = L1_2[L5_2]
      L6_2[L7_2] = L8_2
    end
  end
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_right_bumper_click
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_left_bumper_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_right_bumper_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_login
  L4_2 = A0_2._on_btn_login
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_server_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.DevDataUtils
  L1_2 = L1_2.SelectedServer
  A0_2._cur_selected_server = L1_2
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  A0_2._last_search_str_len = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_search
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._handle_search
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.filter
  L4_2 = A0_2._server_data_list
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._display_all_server_data_list = L2_2
  L2_2 = A0_2._display_all_server_data_list
  A0_2._display_server_data_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._handle_search
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_tab_select_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.String
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_search
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._display_all_server_data_list
    A0_2._display_server_data_list = L1_2
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_search
  L1_2 = L1_2.text
  L1_2 = #L1_2
  L2_2 = A0_2._last_search_str_len
  if L1_2 > L2_2 then
    L1_2 = A0_2._display_server_data_list
    if L1_2 then
      goto lbl_25
    end
  end
  L1_2 = A0_2._display_all_server_data_list
  ::lbl_25::
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_search
  L2_2 = L2_2.text
  L2_2 = #L2_2
  A0_2._last_search_str_len = L2_2
  L2_2 = {}
  A0_2._display_server_data_list = L2_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = string
    L7_2 = L7_2.find
    L8_2 = L6_2.Name
    L9_2 = A0_2._binder
    L9_2 = L9_2.input_search
    L9_2 = L9_2.text
    L10_2 = 1
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if L7_2 then
      L8_2 = A0_2._display_server_data_list
      L9_2 = A0_2._display_server_data_list
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L6_2
    end
  end
end
L0_1._handle_search = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_select
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._display_server_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._display_server_data_list
  L3_2 = A0_2._cur_selected_server
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = A0_2._display_server_data_list
    L2_2 = L2_2[1]
    A0_2._cur_selected_server = L2_2
  end
end
L0_1._refresh_cur_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.init
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.server_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKWillEnterGameResult
  L4_2 = A0_2._on_will_enter_game_result
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ServerSelectTabItem
    L9_2 = G
    L9_2 = L9_2.ServerSelectTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_root
    L7_2(L8_2, L9_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_tabs = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ServerButtonPanel
    L8_2 = G
    L8_2 = L8_2.ServerButtonPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._display_server_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_select_state
  L8_2 = A0_2._cur_selected_server
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_select_callback
  L8_2 = A0_2._on_server_btn_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._cur_selected_server
  if L5_2 == L6_2 then
    A0_2._cur_panel = L4_2
  end
  return L3_2
end
L0_1._on_server_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.get_server_data
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cur_selected_server
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._cur_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_select_state
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_select_state
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._cur_panel = A1_2
  L2_2 = A0_2._cur_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_server_data
  L2_2 = L2_2(L3_2)
  A0_2._cur_selected_server = L2_2
end
L0_1._on_server_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.IsInputFiledSelected
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RPGApplication
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.RestartAppNextFrame
    L1_2(L2_2)
  end
end
L0_1._on_btn_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._select_one_server_to_login
  L3_2 = A0_2._cur_selected_server
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_login = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RPGSDKModule
  L2_2 = L2_2.LOGIN_FORBIDDEN
  if A1_2 == L2_2 then
  else
    L2_2 = G
    L2_2 = L2_2.RPGSDKModule
    L2_2 = L2_2.NEED_REALNAME
    if A1_2 == L2_2 then
    else
      L2_2 = G
      L2_2 = L2_2.RPGSDKModule
      L2_2 = L2_2.NEED_GUARDIAN
      if A1_2 == L2_2 then
      else
        L3_2 = A0_2
        L2_2 = A0_2._select_one_server_to_login
        L4_2 = A0_2._cur_selected_server
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_will_enter_game_result = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AccountManager
  L3_2 = L3_2.DevAccountModel
  L3_2 = L3_2.Uid
  L2_2.LastDevUID = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AccountManager
  L3_2 = L3_2.DevAccountModel
  L3_2 = L3_2.AccountUid
  L2_2.LastDevAccountUID = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2.SelectedServer = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L2_2.FBAFBFIPNPB = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.RecentlyLoginServerNameList
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.RecentlyLoginServerNameList
  L3_2 = L2_2
  L2_2 = L2_2.Insert
  L4_2 = 0
  L5_2 = A1_2.Name
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginTryEnterGame
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Debug.Scattered.DebugVersionUpdatePage"
  L2_2(L3_2)
end
L0_1._select_one_server_to_login = L3_1
return L0_1
