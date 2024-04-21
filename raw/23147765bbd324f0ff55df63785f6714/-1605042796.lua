local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.MobilePhonePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.LookAtPhonePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.HintInfoDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MobilePhonePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.05
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MobilePhonePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_leader_changing = false
  L1_2 = PhoneMode
  L1_2 = L1_2.DESKTOP
  A0_2._mode = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  L2_2 = GotoType2DefaultGotoID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.TeamEdit
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  function L3_2(A0_3)
    local L1_3, L2_3
    A0_2._exit_goto_id = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._close
    L1_3(L2_3)
  end
  L1_2[L2_2] = L3_2
  L2_2 = GotoType2DefaultGotoID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.PhotoGraph
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  function L3_2(A0_3)
    local L1_3, L2_3
    A0_2._exit_goto_id = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._close
    L1_3(L2_3)
  end
  L1_2[L2_2] = L3_2
  A0_2._custom_app_clicks = L1_2
  A0_2._exit_goto_id = nil
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.LookAtPhonePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_look_at_phone = L1_2
  L1_2 = A0_2._panel_look_at_phone
  L2_2 = L1_2
  L1_2 = L1_2.start_look_at_phone
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeOpenMobilePhone
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerInfoChanged
  L4_2 = A0_2._on_player_info_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshFuncEntrance
  L4_2 = L0_1._on_refresh_func_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L0_1._on_tutorial_move_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeOpenFarmTeamEdit
  L4_2 = L0_1._on_open_farm_team_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphPageBeforeEnter
  L4_2 = L0_1._on_photograph_page_before_enter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._show_exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.set_close_callback
  L3_2 = A0_2._close
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_exit
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_event
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L1_2.Interactable = L2_2
end
L0_1._setup_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_exit_dialog
    L1_2(L2_2)
  end
end
L0_1._on_btn_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_ConfirmDialog_Logout_Phone"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.RPGApplication
      L1_3 = L1_3.Instance
      L2_3 = L1_3
      L1_3 = L1_3.RestartAppNextFrame
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._show_exit_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_goto_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L2_2 = A0_2.__name
    L1_2.CachedUIFrom = L2_2
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2._exit_goto_id
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_exit
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_desktop
  L3_2 = L2_2
  L2_2 = L2_2.move_to_page_by_child_name
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tutorial_move_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._on_open_farm_team_edit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._on_photograph_page_before_enter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.setup_custom_app_click
  L3_2 = A0_2._custom_app_clicks
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.setup_custom_app_click
  L3_2 = A0_2._custom_app_clicks
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_theme
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cloud_customize
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_theme
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._refresh_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_exit
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_app_navigation
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._on_refresh_func_entrance = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.set_border_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dock
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.set_outward_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_desktop
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_app_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsCloudPlatform
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_exit
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_cloud_customize = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_meta
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ui_meta
    L1_2.EnableDOF = false
  end
  L1_2 = A0_2._panel_look_at_phone
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_look_at_phone
    L2_2 = L1_2
    L1_2 = L1_2.end_look_at_phone
    function L3_2()
      local L0_3, L1_3
    end
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dock
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._on_player_info_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._on_btn_bg = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._is_can_to_zoom = L2_1
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
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_desktop_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desktop
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_desktop_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_app_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
return L0_1
