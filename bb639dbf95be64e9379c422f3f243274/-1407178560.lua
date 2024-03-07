local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.CameraOptionsDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.Setting.PhotoGraphSettingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.Setting.PhotoGraphSettingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.FreeStyle.PhotoGraphIdleShowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.FreeStyle.PhotoGraphIdleShowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.FacialExpression.PhotoGraphFacialExpressionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.FacialExpression.PhotoGraphFacialExpressionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = 109
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CameraOptionsDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CameraOptionsDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L1_1.ctor = L2_1
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StartPhotoGraph
  L4_2 = A0_2._on_start_photo_graph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphFuncSwitchUIVisibility
  L4_2 = A0_2._on_switch_ui_visibility
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_photograph_panel
  L1_2(L2_2)
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
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_camera_zoom_enable_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_set_voWorld_bus_unmute"
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_set_voWorld_bus_unmute"
  L1_2(L2_2, L3_2)
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_camera_zoom_enable_state
  L2_2(L3_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.set_camera_zoom_enable
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L2_2 = not L2_2
  L1_2(L2_2)
end
L1_1._refresh_camera_zoom_enable_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.set_camera_zoom_enable
  L2_2 = true
  L1_2(L2_2)
  L1_2 = A0_2._exit_option_handler
  if L1_2 then
    L1_2 = A0_2._exit_option_handler
    L2_2 = A0_2._exit_option_listener
    L1_2(L2_2)
  end
  A0_2._exit_option_handler = nil
  A0_2._exit_option_listener = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_photograph_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_photograph_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphPanel
  L5_2 = G
  L5_2 = L5_2.PhotoGraphPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._photograph_panel = L2_2
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.recover_fov_ratio
  L2_2(L3_2)
end
L1_1._init_photograph_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._exit_option_handler = A1_2
  A0_2._exit_option_listener = A2_2
end
L1_1.register_exit_option_handler = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PhotoGraphModeType
  L2_2 = L2_2.CommonShotFirstPerson
  L1_2 = L1_2 == L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_setting_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_freestyle_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_info
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_key_map_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
  end
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_freestyle_tab_item
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_facial_expression_tab_item
    L2_2(L3_2)
  end
end
L1_1._init_tabs = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphSettingPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphSettingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_setting_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.load_setting_data
  L2_2(L3_2)
  A0_2._setting_tab_item = L1_2
end
L1_1._init_setting_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphIdleShowPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphIdleShowPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_freestyle_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._init_freestyle_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphFacialExpressionPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphFacialExpressionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_facial_expression_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.init_cur_em_data
  L2_2(L3_2)
end
L1_1._init_facial_expression_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L1_1._on_start_photo_graph = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    A0_2._is_hiding_ui = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_option_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._tab_control
    if L2_2 then
      L2_2 = A0_2._tab_control
      L2_2 = L2_2.current_select_item
      if L2_2 then
        L2_2 = A0_2._tab_control
        L2_2 = L2_2.current_select_item
        L3_2 = L2_2
        L2_2 = L2_2.select
        L2_2(L3_2)
      end
    end
  else
    A0_2._is_hiding_ui = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_option_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_switch_ui_visibility = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_hiding_ui
  if L1_2 then
    L1_2 = A0_2._photograph_panel
    L2_2 = L1_2
    L1_2 = L1_2.unhide
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L1_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._photograph_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_fov_ratio
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
function L2_1(A0_2)
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
    end
  end
end
L1_1._select_prev = L2_1
function L2_1(A0_2)
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
    end
  end
end
L1_1._select_next = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = "ThirdPerson"
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.get_cur_photograph_mode
  L3_2 = L3_2()
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PhotoGraphModeType
  L4_2 = L4_2.CommonShotFirstPerson
  if L3_2 == L4_2 then
    L2_2 = "FirstPerson"
  end
  L3_2 = "SettingCameraBtn"
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  if L4_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.IsInstanceOf
    L5_2 = A0_2._tab_control
    L5_2 = L5_2.current_select_item
    L6_2 = G
    L6_2 = L6_2.PhotoGraphIdleShowPanel
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L3_2 = "SettingActionsBtn"
    end
  end
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  if L4_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.IsInstanceOf
    L5_2 = A0_2._tab_control
    L5_2 = L5_2.current_select_item
    L6_2 = G
    L6_2 = L6_2.PhotoGraphFacialExpressionPanel
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L3_2 = "SettingExpressionsBtn"
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SDKLuaReportAdapter
  L4_2 = L4_2.ReportUIButtonClick
  L5_2 = A0_2.__name
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A0_2.guid
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1._on_tab_select = L2_1
return L1_1
