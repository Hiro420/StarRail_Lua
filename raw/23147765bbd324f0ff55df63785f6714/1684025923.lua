local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Map.SwitchAreaPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapMessageInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SwitchAreaPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BigMapModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.StoryLineModule
L4_1 = G
L4_1 = L4_1.MapModule
L4_1 = L4_1.Instance
L5_1 = 9907
L6_1 = 0.95
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  A0_2._entry_id = nil
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SwitchAreaPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.GetCurPlayerWorldID
  L1_2 = L1_2()
  A0_2._cur_show_world_id = L1_2
  A0_2._is_save_by_click = false
  A0_2._is_show_message_node = false
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._init_map_entry_info
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.init = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.update
  L4_2 = "StoryLineID"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_story_line_id = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._mapping_info_id = A2_2
  A0_2._sub_mission_id = A3_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetCurShowEntranceID
    L4_2 = L4_2()
    if not L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.BigMapUtils
      L4_2 = L4_2.TrainEntranceID
    end
  end
  A0_2._entry_id = L4_2
  L4_2 = A0_2._entry_id
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetWorldIDByEntranceID
    L5_2 = A0_2._entry_id
    L4_2 = L4_2(L5_2)
  end
  A0_2._cur_show_world_id = L4_2
  L4_2 = A0_2._cur_show_world_id
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.BigMapUtils
  L5_2 = L5_2.TrainWorldID
  if L4_2 == L5_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetCurWorldID
    L4_2 = L4_2()
    A0_2._cur_show_world_id = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.set_story_line_id
  L6_2 = 0
  L4_2(L5_2, L6_2)
end
L0_1._init_map_entry_info = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.world_map_in_control_button
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.key_map_info_btn_world_map
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.message_tip_key_map_info
    L2_2.IsShowTip = A1_2
  end
end
L0_1.setup_in_control_button_enable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.message_tip_key_map_info
  L2_2.IsShowTip = A1_2
end
L0_1.setup_message_tip_action_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_group_root
    L1_2 = L1_2.alpha
    L2_2 = L6_1
    L1_2 = L1_2 > L2_2
  end
  return L1_2
end
L0_1.is_map_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_navigation_control_type
      L4_2 = CS
      L4_2 = L4_2.InControl
      L4_2 = L4_2.InControlInputModule
      L4_2 = L4_2.NavigationControlType
      L4_2 = L4_2.DPad
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_after_seconds_callback
    L3_2 = A0_2._enter_zoom1_call_back
    L4_2 = A0_2
    L5_2 = 0.1
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._regional_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_zoom2_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.is_gamepad_input
      L2_2 = L2_2()
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_navigation_control_type
        L4_2 = CS
        L4_2 = L4_2.InControl
        L4_2 = L4_2.InControlInputModule
        L4_2 = L4_2.NavigationControlType
        L4_2 = L4_2.All
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L4_2 = A0_2
      L3_2 = A0_2.get_navigation_target
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2.set_in_special_zoom
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._enter_zoom1_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._regional_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_can_to_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._is_can_to_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._map_message_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_map_message_panel_view
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._regional_detail_panel
  if L1_2 then
    L1_2 = A0_2._regional_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_can_exit
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation_control_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InControlInputModule
  L3_2 = L3_2.NavigationControlType
  L3_2 = L3_2.All
  L1_2(L2_2, L3_2)
end
L0_1._on_lost_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_navigation_control_type
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InControlInputModule
    L3_2 = L3_2.NavigationControlType
    L3_2 = L3_2.DPad
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_navigation_control_type
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InControlInputModule
    L3_2 = L3_2.NavigationControlType
    L3_2 = L3_2.All
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_out_most_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_navigation_control_type
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InControlInputModule
      L3_2 = L3_2.NavigationControlType
      L3_2 = L3_2.DPad
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L1_2 = A0_2.short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2.short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._show_regional_detail
  L1_2(L2_2)
  L1_2 = A0_2._regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entry_id
  L4_2 = A0_2._cur_show_world_id
  L5_2 = A0_2._mapping_info_id
  L6_2 = A0_2._sub_mission_id
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_world_map_mission_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._custom_setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._regional_detail_panel
  if L1_2 then
    L1_2 = A0_2._regional_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.update_virtual_cursor_image_active
    L1_2(L2_2)
  end
  L1_2 = A0_2._refresh_entrance_id
  if L1_2 then
    L1_2 = A0_2._refresh_entrance_id
    L2_2 = A0_2._entry_id
    if L1_2 ~= L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._init_map_entry_info
      L3_2 = A0_2._refresh_entrance_id
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._custom_setup_view
      L1_2(L2_2)
    end
    A0_2._refresh_entrance_id = nil
  end
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 116
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RefreshDailyProp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_world_map
  L4_2 = A0_2._on_btn_world_map_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_map_message_tip
  L4_2 = A0_2._on_btn_map_message_tip_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_regional_map
  L4_2 = A0_2._on_btn_regional_map_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_map_switch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SystemOpenModule
  L3_2 = L3_2.IsOpen
  L4_2 = L5_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RegionalDetailPanel
  L4_2 = G
  L4_2 = L4_2.RegionalDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._regional_detail_panel = L1_2
  L1_2 = A0_2._regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_regional_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_symbol_detail_active_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_symbol_detail_active
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.update_show_map_message_list
  L1_2(L2_2)
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.get_map_message_row_list
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.IsMainLine
  L2_2 = L2_2(L3_2)
  L3_2 = #L1_2
  L3_2 = 0 < L3_2 and L3_2
  A0_2._is_show_message_node = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_message
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_show_message_node
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.MapMessageInfoPanel
  L6_2 = G
  L6_2 = L6_2.MapMessageInfoPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._map_message_panel = L3_2
  L3_2 = A0_2._map_message_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_map_message_expand_panel
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._map_message_panel
  L4_2 = L3_2
  L3_2 = L3_2.reg_map_function_btn_click_call_back
  L5_2 = A0_2
  L6_2 = A0_2._on_map_function_btn_click
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_map_message_panel_view
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._map_message_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_map_message_panel_view
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._regional_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide_map_box_expand_panel_view
    L2_2(L3_2)
  end
end
L0_1._on_btn_map_message_tip_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Map.RegionalMap.RegionalMapPage"
  L3_2 = A0_2._cur_show_world_id
  L4_2 = A0_2._regional_map_exit_call_back_func
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_regional_map_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._map_message_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_map_message_arrow_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_map_message_arrow_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_red_dot_message_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._map_message_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
  end
end
L0_1.set_map_message_panel_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_map_message_panel_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_map_message_empty_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTrackingMissionByStoryLineID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_world_map_mission
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BigMapUtils
    L3_2 = L3_2.GetTraceSubMissionByWorldID
    L4_2 = A0_2._cur_show_world_id
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_world_map_mission
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2 == nil
    L4_2(L5_2, L6_2)
    if L3_2 == nil then
      L4_2 = pairs
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.BigMapUtils
      L5_2 = L5_2.WorldIDList
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.BigMapUtils
        L9_2 = L9_2.GetTraceSubMissionByWorldID
        L10_2 = L8_2
        L11_2 = L1_2
        L9_2 = L9_2(L10_2, L11_2)
        L3_2 = L9_2
        if L3_2 then
          break
        end
      end
      if L3_2 then
        L4_2 = L1_1
        L5_2 = L4_2
        L4_2 = L4_2.GetWaypointIconType
        L6_2 = L3_2.ID
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.MiniMapIconExcelTable
        L5_2 = L5_2.GetData
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L6_2 = L5_2 or L6_2
        if L5_2 then
          L6_2 = L5_2.IconPath
        end
        L8_2 = A0_2
        L7_2 = A0_2.async_load_sprite_to
        L9_2 = A0_2._binder
        L9_2 = L9_2.image_world_map_mission
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.image_world_map_mission
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = false
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1._update_world_map_mission_icon = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_world_map
  L1_2(L2_2)
end
L0_1._on_btn_world_map_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Map.WorldMapPage"
  L4_2 = A0_2
  L5_2 = A0_2._on_world_map_item_click
  L6_2 = A0_2._cur_show_world_id
  L7_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._show_world_map = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RefreshDailyProp
  L1_2(L2_2)
  L1_2 = A0_2._regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.custom_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_world_map
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_world_map_mission_icon
  L1_2(L2_2)
  L1_2 = A0_2._function_switch_panel
  if L1_2 then
    L1_2 = A0_2._function_switch_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_map_message
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_message_node
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_can_to_special_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._show_regional_detail = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2._cur_show_world_id
  end
  A0_2._cur_show_world_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._show_regional_detail
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_entrance_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._regional_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.force_set_first_navigation_target
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation_control_type
  L5_2 = CS
  L5_2 = L5_2.InControl
  L5_2 = L5_2.InControlInputModule
  L5_2 = L5_2.NavigationControlType
  L5_2 = L5_2.DPad
  L3_2(L4_2, L5_2)
end
L0_1._on_world_map_item_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_world_map
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_symbol_detail_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_1.TempShowMapMonsterData = nil
  L3_2 = A0_2
  L2_2 = A0_2.set_map_message_panel_view
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_map_entry_info
  L4_2 = A1_2.EntranceID
  L5_2 = A1_2.MappingInfoID
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.leave_special_zoom
  L2_2(L3_2)
end
L0_1._on_map_function_btn_click = L7_1
function L7_1(A0_2, A1_2)
  A0_2._refresh_entrance_id = A1_2
end
L0_1._regional_map_exit_call_back_func = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "StoryLineID"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BigMapUtils
  L4_2 = L4_2.GetCurPlayerWorldID
  L4_2 = L4_2()
  if L4_2 == A1_2 then
    L4_2 = L3_1
    L5_2 = L4_2
    L4_2 = L4_2.IsStoryLine
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.BigMapUtils
      L4_2 = L4_2.GetCurShowEntranceID
      L4_2 = L4_2()
      L3_2 = L4_2
  end
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetDefaultEntranceIDByWorldID
    L5_2 = A1_2
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1._get_entrance_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_1.TempShowMapMonsterData = nil
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.ClearMapData
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation_control_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InControlInputModule
  L3_2 = L3_2.NavigationControlType
  L3_2 = L3_2.All
  L1_2(L2_2, L3_2)
  L1_2 = collectgarbage
  L2_2 = "collect"
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
return L0_1
