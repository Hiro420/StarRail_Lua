local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.Map.MapContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapPlayerIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBackgroundPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapSubMapIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapVirtualCursorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapLightenSectionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapRangeMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapTeleportIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapMissionIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapMappingInfoIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapTrackMonsterIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.3
L2_1 = 1
L3_1 = 50
L4_1 = 10
L5_1 = 50
L6_1 = 50
L7_1 = 15
L8_1 = 50
L9_1 = 0
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.Client
L10_1 = L10_1.GlobalVars
L10_1 = L10_1.s_ModuleManager
L10_1 = L10_1.BigMapModule
L11_1 = "SpriteOutput/MapPics/NaviIcons/IconMapPlayer.png"
L12_1 = CS
L12_1 = L12_1.RPG
L12_1 = L12_1.GameCore
L12_1 = L12_1.ConstValueClientExcelTable
L12_1 = L12_1.GetData
L13_1 = "Transportable_MappingInfoType_BlackList"
L12_1 = L12_1(L13_1)
L12_1 = L12_1.Value
L12_1 = L12_1.ArrayValue
function L13_1(A0_2)
  local L1_2
  A0_2._old_entrance_id = 0
  A0_2._old_entrance_id_by_player = 0
  A0_2._cur_entrance_id = 0
  A0_2._big_map_data = nil
  A0_2._is_enter_map_area = false
  A0_2._is_load_mission_icon = false
  A0_2._cur_map_scale_ratio = 1
  A0_2._trace_mission_icon_object = nil
  L1_2 = G
  L1_2 = L1_2.MapUtil
  L1_2 = L1_2.Map_Input_Scale_Ratio
  A0_2._input_scale_ratio = L1_2
  A0_2._is_in_transfer = false
  L1_2 = {}
  A0_2._visible_mission_icon_list = L1_2
  A0_2._content_rect_local_position = nil
end
L0_1.ctor = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_prop_click_call_back = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._refresh_map_callback_obj = A1_2
  A0_2._refresh_map_callback_func = A2_2
end
L0_1.reg_refresh_map_call_back = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._map_scale_change_callback_obj = A1_2
  A0_2._map_scale_change_callback_func = A2_2
end
L0_1.reg_map_scale_change_call_back = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_symbol_panel = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MapSelectNormal"
  L1_2(L2_2, L3_2)
end
L0_1.show_symbol_panel = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._mapping_info_id = A1_2
  A0_2._sub_mission_id = A2_2
end
L0_1.setup_default_show_info = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "BackgroundSize"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_icon_selected
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.get_icon_local_position
  L5_2 = A0_2._big_map_data
  L6_2 = A1_2
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
  L4_2 = A0_2
  L3_2 = A0_2.show_symbol_panel
  L3_2(L4_2)
end
L0_1.update_node_icon_selected_position = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._send_map_info_request
  L1_2(L2_2)
end
L0_1.refresh_mission_view = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2._old_entrance_id_by_player = 0
end
L0_1.clear_old_entrance_id_by_player = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_virtual_cursor_image_active
  L1_2(L2_2)
end
L0_1.update_virtual_cursor_image_active = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_teleport_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_icon_game_object_list
  return L1_2(L2_2)
end
L0_1.get_teleport_icon_game_object_list = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._map_teleport_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_icon_game_object_list
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.is_can_click
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._map_mapping_info_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_icon_game_object_list
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.is_can_click
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._check_transportable_mapping_info
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L1_2
end
L0_1.get_can_transfer_icon_game_object_list = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_change_navigation_type_enable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_change_navigation_type_enable = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_map_tip
  L4_2 = L11_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeMapInfoUpdated
  L4_2 = A0_2._on_maze_map_info_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerMapTelepot
  L4_2 = A0_2._on_map_telepot_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_map_tip
  L4_2 = A0_2._on_btn_map_tip_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._update_map_tip
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapVirtualCursorPanel
  L5_2 = G
  L5_2 = L5_2.MapVirtualCursorPanelBinder
  L6_2 = L7_1
  L7_2 = A0_2._binder
  L7_2 = L7_2.root
  L7_2 = L7_2.transform
  L8_2 = L8_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._map_virtual_cursor_panel = L2_2
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_callback
  L4_2 = A0_2
  L5_2 = A0_2._tick_virtual_cursor_select_object
  L6_2 = A0_2._on_in_control_press_call_back
  L7_2 = A0_2._on_in_control_release_call_back
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapTeleportIconPanel
  L5_2 = G
  L5_2 = L5_2.MapBaseIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_teleport_icon_panel = L2_2
  L2_2 = A0_2._map_teleport_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icons
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_teleport_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_icon_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapMissionIconPanel
  L5_2 = G
  L5_2 = L5_2.MapBaseIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_mission_icon_panel = L2_2
  L2_2 = A0_2._map_mission_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icons
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_mission_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_icon_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapMappingInfoIconPanel
  L5_2 = G
  L5_2 = L5_2.MapBaseIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_mapping_info_icon_panel = L2_2
  L2_2 = A0_2._map_mapping_info_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icons
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_mapping_info_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_icon_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapTrackMonsterIconPanel
  L5_2 = G
  L5_2 = L5_2.MapBaseIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_track_monster_info_icon_panel = L2_2
  L2_2 = A0_2._map_track_monster_info_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icons
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_track_monster_info_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_icon_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapPlayerIconPanel
  L5_2 = G
  L5_2 = L5_2.MapPlayerIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_player_icon_panel = L2_2
  L2_2 = A0_2._map_player_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L4_2 = L4_2.transform
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapBackgroundPanel
  L5_2 = G
  L5_2 = L5_2.MapBackgroundPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_background_panel = L2_2
  L2_2 = A0_2._map_background_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_map
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapRangeMissionPanel
  L5_2 = G
  L5_2 = L5_2.MapRangeMissionPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_range_mission_panel = L2_2
  L2_2 = A0_2._map_range_mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_range_mission
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapLightenSectionPanel
  L5_2 = G
  L5_2 = L5_2.MapLightenSectionPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_lighten_section_panel = L2_2
  L2_2 = A0_2._map_lighten_section_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_sections
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapSubMapIconPanel
  L5_2 = G
  L5_2 = L5_2.MapSubMapIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_sub_map_icon_panel = L2_2
  L2_2 = A0_2._map_sub_map_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_sub_map_icons
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.PinchIn
  L5_2 = A0_2._on_pinch_in
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.PinchOut
  L5_2 = A0_2._on_pinch_out
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.PinchEnd
  L5_2 = A0_2._on_pinch_end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EventTriggerListener
  L2_2 = L2_2.Get
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L2_2 = L2_2(L3_2)
  function L3_2()
    local L0_3, L1_3
    A0_2._is_enter_map_area = true
  end
  L2_2.OnEnterTrigger = L3_2
  function L3_2()
    local L0_3, L1_3
    A0_2._is_enter_map_area = false
  end
  L2_2.OnExitTrigger = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_selected
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_load = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = L10_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._cur_entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsInCurrentScene
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_local_position_by_player_icon
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_local_position_by_trace_mission_icon
    L4_2(L5_2)
  end
end
L0_1._on_btn_map_tip_click = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._is_enter_map_area
    if L2_2 then
      L2_2 = L2_1
      L2_2 = A1_2 * L2_2
      L4_2 = A0_2
      L3_2 = A0_2._setup_map_scale_by_delta
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_mouse_wheel_roll = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L2_2.enabled = false
    L2_2 = A1_2.deltaPinch
    L2_2 = -L2_2
    L2_2 = L2_2 * 0.01
    L3_2 = L2_1
    L2_2 = L2_2 * L3_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_map_scale_by_delta
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_pinch_in = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L2_2.enabled = false
    L2_2 = A1_2.deltaPinch
    L2_2 = L2_2 * 0.01
    L3_2 = L2_1
    L2_2 = L2_2 * L3_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_map_scale_by_delta
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_pinch_out = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L2_2.enabled = true
  end
end
L0_1._on_pinch_end = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_net_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._cur_entrance_id
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.get_blackboard
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.query
      L4_2 = "StoryLineID"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = 0
      end
      L3_2 = L10_1
      L4_2 = L3_2
      L3_2 = L3_2.GetBigMapData
      L5_2 = A0_2._cur_entrance_id
      L6_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._big_map_data = L3_2
      L4_2 = A0_2
      L3_2 = A0_2._setup_map_view_by_notify
      L3_2(L4_2)
    end
  end
end
L0_1._on_maze_map_info_updated = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2._is_in_transfer = true
end
L0_1._on_map_telepot_transfer = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._send_map_info_request
  L1_2(L2_2)
end
L0_1._on_player_daily_refresh = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L4_2 = L2_2
  L3_2 = L2_2.Add
  L5_2 = A0_2._cur_entrance_id
  L3_2(L4_2, L5_2)
  L3_2 = L10_1
  L4_2 = L3_2
  L3_2 = L3_2.SendGetMazeInfoCsReq
  L5_2 = L2_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._send_map_info_request = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A1_2 or nil
  if not A1_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.AdventureModule
    L5_2 = L5_2.MapDef
    L5_2 = L5_2.CurMapEntryID
  end
  A0_2._cur_entrance_id = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._init_map_info
  L5_2(L6_2)
  A0_2._big_map_data = nil
  A0_2._show_layer = A2_2
  A0_2._cur_map_layer_nums = A3_2
  A0_2._node_symbol_detail = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._send_map_info_request
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_net_status
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_map_view_by_direct
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_icon_selected
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1.setup_map_view = L13_1
function L13_1(A0_2, A1_2)
  A0_2._map_symbol_detail_panel = A1_2
end
L0_1.setup_map_symbol_detail_panel = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = L10_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._cur_entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Input_Scale_Ratio
  A0_2._input_scale_ratio = L3_2
  L3_2 = L2_2.MapScale
  A0_2._cur_map_scale_ratio = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.query
  L5_2 = "BackgroundSize"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L2_2.BackgroundSize
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L6_2 = L2_2.MapScale
  L7_2 = L3_2.x
  L6_2 = L6_2 * L7_2
  L7_2 = L2_2.MapScale
  L8_2 = L3_2.z
  L7_2 = L7_2 * L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.sizeDelta = L5_2
end
L0_1._init_map_info = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_rect_transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_lighten_section_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_teleport_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_mission_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_mapping_info_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_range_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_track_monster_info_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_sub_map_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._old_entrance_id
  L2_2 = A0_2._cur_entrance_id
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._map_background_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_entrance_id
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._cur_entrance_id
    A0_2._old_entrance_id = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_content_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_scale
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_rect_transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_map_view_by_direct = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._big_map_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._owner_is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._map_player_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._big_map_data
  L4_2 = A0_2._cur_entrance_id
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_section_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_teleport_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_mission_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_mapping_info_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_trace_monster_info_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_content_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_scale
  L1_2(L2_2)
end
L0_1._setup_map_view_by_notify = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_map
  L1_2 = L1_2.transform
  L1_2 = L1_2.sizeDelta
  L1_2 = L1_2.x
  L2_2 = A0_2._cur_map_scale_ratio
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._input_scale_ratio
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_map
  L2_2 = L2_2.transform
  L2_2 = L2_2.sizeDelta
  L2_2 = L2_2.y
  L3_2 = A0_2._cur_map_scale_ratio
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._input_scale_ratio
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = L1_1
  L5_2 = L1_2 * L5_2
  L6_2 = L1_1
  L6_2 = L2_2 * L6_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.sizeDelta = L4_2
end
L0_1._setup_map_content_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2._map_lighten_section_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.MapAreaList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._check_is_show_by_area
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2.get_blackboard
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2
      L8_2 = L8_2.query
      L10_2 = "StoryLineID"
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        L8_2 = 0
      end
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.BigMapUtils
      L9_2 = L9_2.GetLightenMapFogSectionListByAreaID
      L10_2 = A0_2._cur_entrance_id
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = pairs
      L11_2 = L9_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = {}
        L15_2.section = L14_2
        L15_2.areaID = L7_2
        L16_2 = A0_2._big_map_data
        L17_2 = L16_2
        L16_2 = L16_2.GetAreaSortingIDByAreaID
        L18_2 = L7_2
        L16_2 = L16_2(L17_2, L18_2)
        L15_2.sortingID = L16_2
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L2_2
        L18_2 = L15_2
        L16_2(L17_2, L18_2)
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.sortingID
    L3_3 = A1_3.sortingID
    if L2_3 == L3_3 then
      L2_3 = A0_3.section
      L2_3 = L2_3.Type
      L2_3 = #L2_3
      L3_3 = A1_3.section
      L3_3 = L3_3.Type
      L3_3 = #L3_3
      if L2_3 == L3_3 then
        L2_3 = A0_3.section
        L2_3 = L2_3.MapLayerID
        L3_3 = A0_2._show_layer
        if L2_3 == L3_3 then
          L2_3 = A1_3.section
          L2_3 = L2_3.MapLayerID
          L3_3 = A0_2._show_layer
          if L2_3 ~= L3_3 then
            L2_3 = false
            return L2_3
        end
        else
          L2_3 = A0_3.section
          L2_3 = L2_3.MapLayerID
          L3_3 = A0_2._show_layer
          if L2_3 ~= L3_3 then
            L2_3 = A1_3.section
            L2_3 = L2_3.MapLayerID
            L3_3 = A0_2._show_layer
            if L2_3 == L3_3 then
              L2_3 = true
              return L2_3
          end
          else
            L2_3 = A0_3.section
            L2_3 = L2_3.ID
            L3_3 = A1_3.section
            L3_3 = L3_3.ID
            L2_3 = L2_3 > L3_3
            return L2_3
          end
        end
      end
    else
      L2_3 = A0_3.sortingID
      L3_3 = A1_3.sortingID
      L2_3 = L2_3 > L3_3
      return L2_3
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._map_lighten_section_panel
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = A0_2._big_map_data
    L11_2 = L7_2.section
    L12_2 = A0_2._show_layer
    L13_2 = A0_2._cur_map_layer_nums
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1._setup_map_section_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._map_teleport_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.MapTeleportDataList
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._check_is_show_by_area
    L9_2 = L6_2.AreaID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._map_teleport_icon_panel
      L8_2 = L7_2
      L7_2 = L7_2.setup_view
      L9_2 = A0_2._show_layer
      L10_2 = A0_2._big_map_data
      L11_2 = L6_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L0_1._setup_map_teleport_icon_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._visible_mission_icon_list = L1_2
  L1_2 = A0_2._map_mission_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_range_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.MapMissionDataList
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.sort_map_mission_data_list
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._check_is_show_map_mission_icon
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._check_is_show_by_area
      L9_2 = L6_2.AreaID
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.GlobalVars
        L7_2 = L7_2.s_ModuleManager
        L7_2 = L7_2.MissionModule
        L8_2 = L7_2
        L7_2 = L7_2.GetSubMissionInfoConfig
        L9_2 = L6_2.SubMissionData
        L9_2 = L9_2.Row
        L9_2 = L9_2.SubMissionID
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = L7_2.MapWaypointRange
        if 0.1 < L8_2 then
          L8_2 = L6_2.IsConnectID
          if not L8_2 then
            L8_2 = CS
            L8_2 = L8_2.RPG
            L8_2 = L8_2.Client
            L8_2 = L8_2.BigMapUtils
            L8_2 = L8_2.IsTraceSubMission
            L9_2 = L6_2.SubMissionData
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = A0_2._map_range_mission_panel
              L9_2 = L8_2
              L8_2 = L8_2.setup_view
              L10_2 = A0_2._big_map_data
              L11_2 = L6_2
              L8_2(L9_2, L10_2, L11_2)
            end
          end
        end
        L8_2 = A0_2._map_mission_icon_panel
        L9_2 = L8_2
        L8_2 = L8_2.setup_view
        L10_2 = A0_2
        L11_2 = A0_2._show_layer
        L12_2 = A0_2._big_map_data
        L13_2 = L6_2
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
  L2_2 = A0_2._map_mission_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_trace_mission_icon_game_object_info
  L2_2(L3_2)
  A0_2._is_load_mission_icon = false
end
L0_1._setup_map_mission_icon_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._big_map_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._map_mapping_info_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._map_sub_map_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.MapMappingInfoDataList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MiniMapIconExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.MapIconType
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.MapUtil
    L2_3 = L2_3.compare_mapIcon_by_priority
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = false
    return L2_3(L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._check_is_show_by_area
    L10_2 = L7_2.AreaID
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = L7_2.SubMapID
      if 0 < L8_2 then
        L8_2 = A0_2._map_sub_map_icon_panel
        L9_2 = L8_2
        L8_2 = L8_2.setup_view
        L10_2 = A0_2._cur_entrance_id
        L11_2 = A0_2._show_layer
        L12_2 = A0_2._big_map_data
        L13_2 = L7_2
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      else
        L8_2 = A0_2._map_mapping_info_icon_panel
        L9_2 = L8_2
        L8_2 = L8_2.setup_view
        L10_2 = A0_2
        L11_2 = A0_2._show_layer
        L12_2 = A0_2._big_map_data
        L13_2 = L7_2
        L14_2 = A0_2._mapping_info_id
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L3_2 = #L2_2
  if 0 < L3_2 then
    L3_2 = L10_1.TempShowMapMonsterData
    if L3_2 == nil then
      L4_2 = A0_2
      L3_2 = A0_2._setup_map_info_detail_view
      L3_2(L4_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_default_map_info_detail_view
    L3_2(L4_2)
  end
end
L0_1._setup_map_mapping_info_icon_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._big_map_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._map_track_monster_info_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = L10_1.TrackingMapMonsterData
  if L1_2 then
    L2_2 = L10_1.TrackingMapMonsterData
    L2_2 = L2_2.EntranceID
    L3_2 = A0_2._cur_entrance_id
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._check_is_show_by_area
      L4_2 = L1_2.AreaID
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = A0_2._map_track_monster_info_icon_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = A0_2._show_layer
        L5_2 = A0_2._big_map_data
        L6_2 = L1_2
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
  L2_2 = L10_1.TempShowMapMonsterData
  if L1_2 ~= nil or not L2_2 then
    if not (L2_2 and L1_2) then
      goto lbl_56
    end
    L3_2 = L2_2.IdentificationID
    L4_2 = L1_2.IdentificationID
    if L3_2 == L4_2 then
      goto lbl_56
    end
  end
  L3_2 = L10_1.TempShowMapMonsterData
  L3_2 = L3_2.EntranceID
  L4_2 = A0_2._cur_entrance_id
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._check_is_show_by_area
    L5_2 = L2_2.AreaID
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._map_track_monster_info_icon_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = A0_2._show_layer
      L6_2 = A0_2._big_map_data
      L7_2 = L2_2
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  ::lbl_56::
  L3_2 = L10_1.TempShowMapMonsterData
  if L3_2 ~= nil then
    L3_2 = L10_1.TempShowMapMonsterData
    L3_2 = L3_2.EntranceID
    L4_2 = A0_2._cur_entrance_id
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_mapping_info_detail_view
      L3_2(L4_2)
    end
  end
end
L0_1._setup_map_trace_monster_info_icon_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_in_transfer
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = L10_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._cur_entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsInCurrentScene
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._update_map_player_tip
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._update_map_trace_mission_tip
    L4_2(L5_2)
  end
end
L0_1._update_map_tip = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_map_player_tip_transform
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_content_rect_need_move
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_map_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_trace_mission_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = L1_2.localPosition
      L2_2 = L2_2.x
      L3_2 = A0_2._input_scale
      L2_2 = L2_2 * L3_2
      L3_2 = L1_2.localPosition
      L3_2 = L3_2.y
      L4_2 = A0_2._input_scale
      L3_2 = L3_2 * L4_2
      L5_2 = A0_2
      L4_2 = A0_2._update_map_tip_pos_and_rotation
      L6_2 = L2_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_map_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_map_player_tip = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Map3DUtils
  L1_2 = L1_2.ShouldShow3DMap
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._map_sub_map_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_icon_game_object_list
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = #L1_2
      if 0 < L2_2 then
        L2_2 = ipairs
        L3_2 = L1_2
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = L6_2.is_show_player_icon
          if L7_2 then
            L7_2 = L6_2.icon_game_object
            L7_2 = L7_2.transform
            return L7_2
          end
        end
      end
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_player_icon_image
    L1_2 = L1_2.transform
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_map_player_tip_transform = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._map_mission_icon_panel
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_trace_mission_game_object_info
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsCsObjectNull
    L4_2 = L1_2.icon_game_object
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_content_rect_need_move
      L5_2 = L1_2.icon_game_object
      L5_2 = L5_2.transform
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.btn_map_tip
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._is_load_mission_icon
        if L3_2 == false then
          L4_2 = A0_2
          L3_2 = A0_2._load_sprite_to
          L5_2 = A0_2._binder
          L5_2 = L5_2.img_map_tip
          L6_2 = L2_2
          L3_2(L4_2, L5_2, L6_2)
          A0_2._is_load_mission_icon = true
          L3_2 = A0_2._binder
          L3_2 = L3_2.node_trace_mission_effect
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetActive
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
        L3_2 = L1_2.icon_game_object
        L3_2 = L3_2.transform
        L3_2 = L3_2.localPosition
        L3_2 = L3_2.x
        L4_2 = A0_2._input_scale
        L3_2 = L3_2 * L4_2
        L4_2 = L1_2.icon_game_object
        L4_2 = L4_2.transform
        L4_2 = L4_2.localPosition
        L4_2 = L4_2.y
        L5_2 = A0_2._input_scale
        L4_2 = L4_2 * L5_2
        L5_2 = L1_2.icon_game_object
        A0_2._trace_mission_icon_object = L5_2
        L6_2 = A0_2
        L5_2 = A0_2._update_map_tip_pos_and_rotation
        L7_2 = L3_2
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
    end
  end
  else
    A0_2._trace_mission_icon_object = nil
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_map_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._update_map_trace_mission_tip = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._map_mission_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_trace_mission_game_object_info
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MiniMapIconExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.map_icon_data
    L3_2 = L3_2.MapIconType
    L2_2 = L2_2(L3_2)
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.IconPath
  end
  L4_2 = A0_2._map_sub_map_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_icon_game_object_list
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = #L4_2
    if 0 < L5_2 then
      L5_2 = ipairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.is_show_trace_mission_icon
        if L10_2 then
          L1_2 = L9_2
          L11_2 = A0_2
          L10_2 = A0_2.get_blackboard
          L10_2 = L10_2(L11_2)
          L11_2 = L10_2
          L10_2 = L10_2.query
          L12_2 = "StoryLineID"
          L10_2 = L10_2(L11_2, L12_2)
          if not L10_2 then
            L10_2 = 0
          end
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.Client
          L11_2 = L11_2.GlobalVars
          L11_2 = L11_2.s_ModuleManager
          L11_2 = L11_2.MissionModule
          L12_2 = L11_2
          L11_2 = L11_2.GetTrackingMissionByStoryLineID
          L13_2 = L10_2
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 ~= nil then
            L3_2 = L11_2.TrackIconPath
          end
          break
        end
      end
    end
  end
  L5_2 = L1_2
  L6_2 = L3_2
  return L5_2, L6_2
end
L0_1._get_trace_mission_game_object_info = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.rect
  L3_2 = L3_2.width
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L4_2 = L4_2.rect
  L4_2 = L4_2.height
  L5_2 = 0.5 * L3_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.content_rect_transform
  L6_2 = L6_2.localPosition
  L6_2 = L6_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 80
  L6_2 = 0.5 * L4_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.content_rect_transform
  L7_2 = L7_2.localPosition
  L7_2 = L7_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 - 100
  L7_2 = -0.5 * L3_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.content_rect_transform
  L8_2 = L8_2.localPosition
  L8_2 = L8_2.x
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 80
  L8_2 = -0.5 * L4_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.content_rect_transform
  L9_2 = L9_2.localPosition
  L9_2 = L9_2.y
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 40
  L9_2 = A1_2
  if L5_2 < L9_2 then
    L9_2 = L5_2
  elseif L7_2 > L9_2 then
    L9_2 = L7_2
  end
  L10_2 = A2_2
  if L6_2 < L10_2 then
    L10_2 = L6_2
  elseif L8_2 > L10_2 then
    L10_2 = L8_2
  end
  L11_2 = 0
  L12_2 = G
  L12_2 = L12_2.MathUtils
  L12_2 = L12_2.float_equal
  L13_2 = A1_2
  L14_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2)
  if L12_2 then
    if A2_2 >= L10_2 then
      L11_2 = 0
    elseif A2_2 < L10_2 then
      L11_2 = 180
    end
  elseif A1_2 >= L9_2 then
    L11_2 = 90
  elseif A1_2 < L9_2 then
    L11_2 = -90
  end
  L12_2 = A0_2._binder
  L12_2 = L12_2.node_map_tip_arrow
  L12_2 = L12_2.transform
  L13_2 = CS
  L13_2 = L13_2.RPG
  L13_2 = L13_2.Client
  L13_2 = L13_2.BigMapUtils
  L13_2 = L13_2.GetMapIconRotation
  L14_2 = CS
  L14_2 = L14_2.UnityEngine
  L14_2 = L14_2.Vector3
  L15_2 = 0
  L16_2 = L11_2
  L17_2 = 0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = 0
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.rotation = L13_2
  L12_2 = A0_2._binder
  L12_2 = L12_2.btn_map_tip
  L12_2 = L12_2.transform
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.Vector3
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = 0
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.localPosition = L13_2
end
L0_1._update_map_tip_pos_and_rotation = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._input_scale_ratio = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_map_scale
  L2_2(L3_2)
end
L0_1._setup_map_scale_by_value = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = A0_2._input_scale_ratio
  L2_2 = L2_2 + A1_2
  A0_2._input_scale_ratio = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_map_scale
  L2_2(L3_2)
end
L0_1._setup_map_scale_by_delta = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.get_clamp
  L2_2 = A0_2._input_scale_ratio
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Scale_Lower_Ratio
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map_Scale_Upper_Ratio
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._input_scale_ratio = L1_2
  L1_2 = G
  L1_2 = L1_2.MapUtil
  L2_2 = A0_2._input_scale_ratio
  L1_2.Map_Input_Scale_Ratio = L2_2
  L1_2 = A0_2._input_scale_ratio
  L2_2 = A0_2._cur_map_scale_ratio
  L1_2 = L1_2 * L2_2
  A0_2._input_scale = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_background_scale
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_section_scale
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_content_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon_scale
  L1_2(L2_2)
  L1_2 = A0_2._map_scale_change_callback_func
  if L1_2 then
    L1_2 = A0_2._map_scale_change_callback_func
    L2_2 = A0_2._map_scale_change_callback_obj
    L1_2(L2_2)
  end
end
L0_1._setup_map_scale = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._input_scale
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = L1_2
  L4_2 = L1_2
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._map_background_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_background_scale
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_background_scale = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_map
  L1_2 = L1_2.sprite
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "StoryLineID"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = L10_1
  L4_2 = L3_2
  L3_2 = L3_2.GetBigMapData
  L5_2 = A0_2._cur_entrance_id
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.get_blackboard
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.query
  L6_2 = "BackgroundSize"
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = L3_2.BackgroundSize
  end
  L5_2 = L4_2.x
  if L5_2 == nil then
    return
  end
  L5_2 = L1_2.pixelsPerUnit
  L6_2 = L4_2.x
  L7_2 = L1_2.rect
  L7_2 = L7_2.width
  L7_2 = L7_2 / L5_2
  L6_2 = L6_2 / L7_2
  L7_2 = L4_2.z
  L8_2 = L1_2.rect
  L8_2 = L8_2.height
  L8_2 = L8_2 / L5_2
  L7_2 = L7_2 / L8_2
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector3
  L9_2 = A0_2._input_scale
  L9_2 = L9_2 * L6_2
  L10_2 = A0_2._input_scale
  L10_2 = L10_2 * L7_2
  L11_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_sections
  L9_2.localScale = L8_2
end
L0_1._setup_section_scale = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._input_scale
  L1_2 = 1.0 / L1_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = A0_2._input_scale
  L4_2 = A0_2._input_scale
  L5_2 = A0_2._input_scale
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_selected
  L4_2 = L4_2.transform
  L4_2.localScale = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icon_selected
  L4_2 = L4_2.transform
  L4_2.localScale = L3_2
  L4_2 = A0_2._map_player_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_player_icon_scale
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._map_teleport_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_icon_scale
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._map_mission_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_icon_scale
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._map_mapping_info_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_icon_scale
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A0_2._input_scale_ratio
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._map_track_monster_info_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_icon_scale
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._map_sub_map_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_icon_scale
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_icon_scale = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_icon_game_object_list
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.get_nearest_map_icon_node_by_click
  L4_2 = A1_2
  L5_2 = A0_2._input_scale
  L6_2 = L5_1
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = 1
  L6_2 = A0_2
  L5_2 = A0_2._show_nearest_node_list
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_setup_local_position_by_select_icon
  L7_2 = L3_2[L4_2]
  L7_2 = L7_2.icon_game_object
  L5_2(L6_2, L7_2)
end
L0_1._on_map_icon_btn_click = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mapping_info_id
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_mapping_info_detail_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._sub_mission_id
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_mission_info_detail_view
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_default_map_info_detail_view
      L1_2(L2_2)
    end
  end
end
L0_1._setup_map_info_detail_view = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2._mapping_info_id
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_icon_game_object_list
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.get_nearest_node_by_mapping_info_id
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = #L4_2
  if 0 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._show_nearest_node_list
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_icon_selected
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._map_virtual_cursor_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_image_active
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation_icon_selected
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = "MapSelectNormal"
    L5_2(L6_2, L7_2)
  end
  A0_2._mapping_info_id = nil
  L6_2 = A0_2
  L5_2 = A0_2._setup_local_position_by_select_virtual_cursor
  L5_2(L6_2)
  L5_2 = A0_2._cur_entrance_id
  A0_2._old_entrance_id_by_player = L5_2
end
L0_1._setup_mapping_info_detail_view = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2._sub_mission_id
  end
  L3_2 = A0_2._map_mission_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_icon_game_object_list
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.get_nearest_node_by_sub_mission_id
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = #L4_2
  if 0 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._show_nearest_node_list
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_icon_selected
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._map_virtual_cursor_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_image_active
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation_icon_selected
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = "MapSelectNormal"
    L5_2(L6_2, L7_2)
  end
  A0_2._sub_mission_id = nil
  L6_2 = A0_2
  L5_2 = A0_2._setup_local_position_by_select_virtual_cursor
  L5_2(L6_2)
  L5_2 = A0_2._cur_entrance_id
  A0_2._old_entrance_id_by_player = L5_2
end
L0_1._setup_mission_info_detail_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.__name
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.Map_Main_Page
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_default_map_info_detail_view_by_main_map
    L1_2(L2_2)
  else
    L1_2 = A0_2._owner
    L1_2 = L1_2.__name
    L2_2 = G
    L2_2 = L2_2.MapUtil
    L2_2 = L2_2.Map2D_View_Page
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.get_blackboard
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2
      L1_2 = L1_2.query
      L3_2 = "StoryLineID"
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = 0
      end
      L2_2 = L10_1
      L3_2 = L2_2
      L2_2 = L2_2.GetBigMapData
      L4_2 = A0_2._cur_entrance_id
      L5_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.MapUtil
      L3_2 = L3_2.check_is_show_player_icon
      L4_2 = A0_2._cur_entrance_id
      L5_2 = L1_2
      L6_2 = L2_2.DimensionID
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if L3_2 then
        L5_2 = A0_2
        L4_2 = A0_2._setup_default_map_info_detail_view_by_main_map
        L4_2(L5_2)
      else
        L5_2 = A0_2
        L4_2 = A0_2._setup_default_map_info_detail_view_by_sub_map
        L4_2(L5_2)
      end
    end
  end
end
L0_1._setup_default_map_info_detail_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._old_entrance_id_by_player
  L2_2 = A0_2._cur_entrance_id
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.query
    L3_2 = "StoryLineID"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = 0
    end
    L2_2 = L10_1
    L3_2 = L2_2
    L2_2 = L2_2.GetBigMapData
    L4_2 = A0_2._cur_entrance_id
    L5_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.IsInCurrentScene
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_local_position_by_player_icon
      L4_2(L5_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.content_rect_transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector3
      L6_2 = 0
      L7_2 = 0
      L8_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.localPosition = L5_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_rect
      L5_2 = L4_2
      L4_2 = L4_2.AutoSetPosition
      L4_2(L5_2)
    end
    L4_2 = A0_2._cur_entrance_id
    A0_2._old_entrance_id_by_player = L4_2
  end
end
L0_1._setup_default_map_info_detail_view_by_main_map = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTrackingMissionByStoryLineID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.IsInExpectedEntrance
    L5_2 = A0_2._cur_entrance_id
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.BigMapUtils
      L3_2 = L3_2.GetTraceSubMissionByEntranceID
      L4_2 = A0_2._cur_entrance_id
      L3_2 = L3_2(L4_2)
      L5_2 = A0_2
      L4_2 = A0_2._setup_mission_info_detail_view
      L6_2 = L3_2.ID
      L4_2(L5_2, L6_2)
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_can_transfer_icon_game_object_list
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  if L3_2 then
    L4_2 = #L3_2
    if 0 < L4_2 then
      L4_2 = pairs
      L5_2 = L3_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.is_can_click
        if L9_2 then
          L9_2 = L8_2.map_icon_data
          if L9_2 then
            L9_2 = L8_2.map_icon_data
            L9_2 = L9_2.MappingInfoID
            if 0 < L9_2 then
              L10_2 = A0_2
              L9_2 = A0_2._setup_mapping_info_detail_view
              L11_2 = L8_2.map_icon_data
              L11_2 = L11_2.MappingInfoID
              L9_2(L10_2, L11_2)
              return
            end
          end
        end
      end
    end
  end
end
L0_1._setup_default_map_info_detail_view_by_sub_map = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_selected
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.x
  L2_2 = A0_2._input_scale
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_selected
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.y
  L3_2 = A0_2._input_scale
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = -L1_2
  L6_2 = -L2_2
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L4_2 = L3_2
  L3_2 = L3_2.AutoSetPosition
  L3_2(L4_2)
end
L0_1._setup_local_position_by_select_virtual_cursor = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Map3DUtils
  L3_2 = L3_2.ShouldShow3DMap
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._map_sub_map_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_icon_game_object_list
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = #L3_2
      if 0 < L4_2 then
        L4_2 = ipairs
        L5_2 = L3_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        for L7_2, L8_2 in L4_2, L5_2, L6_2 do
          L9_2 = L8_2.is_show_player_icon
          if L9_2 then
            L9_2 = L8_2.icon_game_object
            L9_2 = L9_2.transform
            L9_2 = L9_2.localPosition
            L9_2 = L9_2.x
            L10_2 = A0_2._input_scale
            L1_2 = L9_2 * L10_2
            L9_2 = L8_2.icon_game_object
            L9_2 = L9_2.transform
            L9_2 = L9_2.localPosition
            L9_2 = L9_2.y
            L10_2 = A0_2._input_scale
            L2_2 = L9_2 * L10_2
          end
        end
      end
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_player_icon_image
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.x
    L4_2 = A0_2._input_scale
    L1_2 = L3_2 * L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_player_icon_image
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = A0_2._input_scale
    L2_2 = L3_2 * L4_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = -L1_2
  L6_2 = -L2_2
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L4_2 = L3_2
  L3_2 = L3_2.AutoSetPosition
  L3_2(L4_2)
end
L0_1._setup_local_position_by_player_icon = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._trace_mission_icon_object
  if L1_2 then
    L1_2 = A0_2._trace_mission_icon_object
    L1_2 = L1_2.transform
    L1_2 = L1_2.localPosition
    L1_2 = L1_2.x
    L2_2 = A0_2._input_scale
    L1_2 = L1_2 * L2_2
    L2_2 = A0_2._trace_mission_icon_object
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.y
    L3_2 = A0_2._input_scale
    L2_2 = L2_2 * L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.content_rect_transform
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = -L1_2
    L6_2 = -L2_2
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.localPosition = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = L3_2
    L3_2 = L3_2.AutoSetPosition
    L3_2(L4_2)
  end
end
L0_1._setup_local_position_by_trace_mission_icon = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._content_rect_local_position
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.content_rect_transform
    L1_2 = L1_2.transform
    L2_2 = A0_2._content_rect_local_position
    L1_2.localPosition = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rect
    L2_2 = L1_2
    L1_2 = L1_2.AutoSetPosition
    L1_2(L2_2)
    A0_2._content_rect_local_position = nil
  end
end
L0_1.reset_content_rect_transform = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2._node_symbol_detail
  if L2_2 then
    L2_2 = 80
    L3_2 = tonumber
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%.2f"
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIUtils
    L6_2 = L6_2.UIScaleFactor
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Screen
    L4_2 = L4_2.width
    L4_2 = L4_2 / L3_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.content_rect_transform
    L5_2 = L5_2.transform
    L5_2 = L5_2.localPosition
    L5_2 = L5_2.x
    L6_2 = A1_2.transform
    L6_2 = L6_2.localPosition
    L6_2 = L6_2.x
    L7_2 = A0_2._input_scale
    L6_2 = L6_2 * L7_2
    L5_2 = L5_2 + L6_2
    L6_2 = L4_2 / 2
    L7_2 = A0_2._node_symbol_detail
    L7_2 = L7_2.transform
    L7_2 = L7_2.sizeDelta
    L7_2 = L7_2.x
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 - L2_2
    L6_2 = L5_2 - L6_2
    if 0 < L6_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.content_rect_transform
      L7_2 = L7_2.transform
      L7_2 = L7_2.localPosition
      L7_2 = L7_2.x
      L7_2 = L7_2 - L6_2
      L8_2 = A0_2._binder
      L8_2 = L8_2.content_rect_transform
      L8_2 = L8_2.transform
      L8_2 = L8_2.localPosition
      L8_2 = L8_2.y
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L10_2 = L7_2
      L11_2 = L8_2
      L12_2 = 0
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.content_rect_transform
      L10_2 = L10_2.transform
      L10_2 = L10_2.localPosition
      A0_2._content_rect_local_position = L10_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.content_rect_transform
      L10_2 = L10_2.transform
      L10_2.localPosition = L9_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.scroll_rect
      L11_2 = L10_2
      L10_2 = L10_2.AutoSetPosition
      L10_2(L11_2)
      L10_2 = A0_2._map_virtual_cursor_panel
      L11_2 = L10_2
      L10_2 = L10_2.get_virtual_cursor_root
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L11_2 = L10_2.transform
        L11_2 = L11_2.localPosition
        L11_2 = L11_2.x
        L11_2 = L11_2 - L6_2
        L12_2 = L10_2.transform
        L12_2 = L12_2.localPosition
        L12_2 = L12_2.y
        L13_2 = L10_2.transform
        L14_2 = CS
        L14_2 = L14_2.UnityEngine
        L14_2 = L14_2.Vector3
        L15_2 = L11_2
        L16_2 = L12_2
        L17_2 = 0
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L13_2.localPosition = L14_2
      end
    end
  end
end
L0_1._try_setup_local_position_by_select_icon = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_image_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._tick_virtual_cursor_select_object = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_stick_up_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_left_stick_down_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_left_stick_left_press
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_left_stick_right_press
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press_call_back = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = L4_1
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2._input_scale_ratio
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_up_press = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = L4_1
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2._input_scale_ratio
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_down_press = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = L4_1
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2._input_scale_ratio
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_left_press = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = L4_1
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2._input_scale_ratio
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_right_press = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_icon_selected
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = #A1_2
  if 0 < L3_2 then
    if not A2_2 then
      A2_2 = 1
    end
    L3_2 = A1_2[A2_2]
    L3_2 = L3_2.map_icon_data
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "BackgroundSize"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_icon_selected
    L6_2 = G
    L6_2 = L6_2.MapUtil
    L6_2 = L6_2.get_icon_local_position
    L7_2 = A0_2._big_map_data
    L8_2 = L3_2
    L9_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.localPosition = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_icon_selected
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_selected
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A1_2
      L0_3 = #L0_3
      if 1 < L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.animation_icon_selected
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = "MapSelectBig"
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2._binder
        L0_3 = L0_3.animation_icon_selected
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = "MapSelectNormal"
        L0_3(L1_3, L2_3)
      end
    end
  end
  L3_2(L4_2)
  L3_2 = A0_2._callback_func
  L4_2 = A0_2._callback_obj
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = #A1_2
  if L3_2 == 1 then
    L3_2 = A0_2._cur_map_layer_nums
    if 1 < L3_2 then
      L3_2 = A1_2[1]
      L3_2 = L3_2.map_icon_data
      L3_2 = L3_2.MapLayer
      if 0 < L3_2 then
        L4_2 = A0_2._show_layer
        if L3_2 ~= L4_2 then
          L4_2 = A0_2._refresh_map_callback_func
          L5_2 = A0_2._refresh_map_callback_obj
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          A0_2._show_layer = L3_2
          L5_2 = A0_2
          L4_2 = A0_2._refresh_map_view
          L4_2(L5_2)
        end
      end
    end
  end
end
L0_1._show_nearest_node_list = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_view_by_direct
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_view_by_notify
  L1_2(L2_2)
end
L0_1._refresh_map_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._map_teleport_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_icon_game_object_list
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._map_mission_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_icon_game_object_list
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._map_mapping_info_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_icon_game_object_list
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._map_track_monster_info_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_icon_game_object_list
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = L1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = L3_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  return L5_2
end
L0_1._get_icon_game_object_list = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.rect
  L2_2 = L2_2.width
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L4_2 = A1_2.localPosition
  L4_2 = L4_2.x
  L5_2 = A0_2._input_scale
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.content_rect_transform
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.x
  L4_2 = L4_2 + L5_2
  L5_2 = A1_2.localPosition
  L5_2 = L5_2.y
  L6_2 = A0_2._input_scale
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.content_rect_transform
  L6_2 = L6_2.localPosition
  L6_2 = L6_2.y
  L5_2 = L5_2 + L6_2
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L9_1
  L6_2 = L6_2 + L7_2
  L7_2 = 0.5 * L2_2
  L6_2 = L6_2 > L7_2
  return L6_2
end
L0_1._is_content_rect_need_move = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_icon_game_object_list
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.get_nearest_map_icon_node_by_cursor
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = A1_2
  L6_2 = A0_2._input_scale
  L7_2 = L3_1
  L8_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = 1
  L5_2 = #L3_2
  if 0 < L5_2 then
    L5_2 = L3_2[L4_2]
    L6_2 = G
    L6_2 = L6_2.MapUtil
    L6_2 = L6_2.get_nearest_map_icon_node_by_click
    L7_2 = L5_2
    L8_2 = A0_2._input_scale
    L9_2 = L5_1
    L10_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L3_2 = L6_2
    L4_2 = 1
  end
  L5_2 = #L3_2
  if 0 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._try_setup_local_position_by_select_icon
    L7_2 = L3_2[L4_2]
    L7_2 = L7_2.icon_game_object
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._show_nearest_node_list
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = #L3_2
    if L5_2 == 1 then
      L5_2 = A0_2._map_virtual_cursor_panel
      L6_2 = L5_2
      L5_2 = L5_2.setup_image_active
      L7_2 = false
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._map_virtual_cursor_panel
      L6_2 = L5_2
      L5_2 = L5_2.setup_image_active_by_multiple
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = A0_2._map_sub_map_icon_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_icon_game_object_list
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.MapUtil
    L6_2 = L6_2.get_nearest_sub_map_icon_node_by_cursor
    L7_2 = A0_2._binder
    L7_2 = L7_2.content_rect_transform
    L8_2 = A1_2
    L9_2 = A0_2._input_scale
    L10_2 = L5_1
    L11_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if L6_2 then
      L7_2 = A0_2._callback_func
      L8_2 = A0_2._callback_obj
      L9_2 = nil
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._try_setup_local_position_by_select_icon
      L9_2 = L6_2.icon_game_object
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.get_blackboard
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.query
      L9_2 = "BackgroundSize"
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_icon_selected
      L9_2 = G
      L9_2 = L9_2.MapUtil
      L9_2 = L9_2.get_icon_local_position
      L10_2 = A0_2._big_map_data
      L11_2 = L6_2.map_icon_data
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2.localPosition = L9_2
      L9_2 = A0_2
      L8_2 = A0_2.show_symbol_panel
      L8_2(L9_2)
      L8_2 = A0_2._map_virtual_cursor_panel
      L9_2 = L8_2
      L8_2 = L8_2.setup_image_active
      L10_2 = false
      L8_2(L9_2, L10_2)
    else
      L7_2 = A0_2._callback_func
      L8_2 = A0_2._callback_obj
      L9_2 = nil
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._map_virtual_cursor_panel
      L8_2 = L7_2
      L7_2 = L7_2.setup_image_active
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._on_in_control_release_call_back = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.SubmitButtonType
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_InControlActionsManager
    L2_2 = L2_2.IsBlockByTask
    if L2_2 then
      return
    end
    L2_2 = A0_2._map_symbol_detail_panel
    if L2_2 then
      L2_2 = A0_2._map_symbol_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.is_active
      L2_2 = L2_2(L3_2)
      if L2_2 then
        return
      end
    end
    L2_2 = A0_2._map_virtual_cursor_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_virtual_cursor_root
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._map_sub_map_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_icon_game_object_list
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.MapUtil
    L4_2 = L4_2.get_nearest_sub_map_icon_node_by_cursor
    L5_2 = A0_2._binder
    L5_2 = L5_2.content_rect_transform
    L6_2 = L2_2
    L7_2 = A0_2._input_scale
    L8_2 = L6_1
    L9_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if L4_2 then
      L5_2 = A0_2._map_sub_map_icon_panel
      L6_2 = L5_2
      L5_2 = L5_2.trigger_icon_btn_click
      L7_2 = L4_2.sub_map_config_row
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.show_symbol_panel
      L5_2(L6_2)
    end
  end
end
L0_1._on_in_control_click = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.SubMapID
  if 0 < L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.IsInRotatableRegion
  L3_2 = A0_2._cur_entrance_id
  L4_2 = A1_2.GroupID
  L5_2 = A1_2.DimensionID
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = A1_2.SectionID
    if 0 < L2_2 then
      L2_2 = A0_2._big_map_data
      if L2_2 then
        L2_2 = A0_2._big_map_data
        L3_2 = L2_2
        L2_2 = L2_2.IsMapSectionLighten
        L4_2 = A1_2.SectionID
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = false
          return L2_2
        end
      end
    else
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_is_show_map_mission_icon = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.map_icon_data
  L3_2 = L2_2.MappingInfoRow
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._check_contain_mapping_info_type
    L5_2 = L12_1
    L6_2 = L2_2.MappingInfoRow
    L6_2 = L6_2.Type
    L6_2 = #L6_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.get_blackboard
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.query
      L5_2 = "StoryLineID"
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = 0
      end
      L4_2 = L10_1
      L5_2 = L4_2
      L4_2 = L4_2.GetBigMapData
      L6_2 = A0_2._cur_entrance_id
      L7_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L2_2.MappingInfoRow
      L5_2 = L5_2.EntranceID
      if 0 < L5_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.MapEntryExcelTable
        L5_2 = L5_2.GetData
        L6_2 = L2_2.MappingInfoRow
        L6_2 = L6_2.EntranceID
        L5_2 = L5_2(L6_2)
        L6_2 = L5_2.FloorID
        L7_2 = L4_2.MapDef
        L7_2 = L7_2.FloorID
        L6_2 = L6_2 == L7_2
        return L6_2
      end
      L5_2 = L2_2.MappingInfoRow
      L5_2 = L5_2.IsTeleport
      if L5_2 then
        L5_2 = L2_2.MappingInfoRow
        L5_2 = L5_2.FloorID
        if 0 < L5_2 then
          L5_2 = L2_2.MappingInfoRow
          L5_2 = L5_2.FloorID
          L6_2 = L4_2.MapDef
          L6_2 = L6_2.FloorID
          L5_2 = L5_2 == L6_2
          return L5_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_transportable_mapping_info = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L3_2 = 0
    L4_2 = A1_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A1_2[L6_2]
      L7_2 = L7_2.UintValue
      if L7_2 == A2_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_contain_mapping_info_type = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map2D_View_Page
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.MapUtil
    L2_2 = L2_2.get_sub_map_area_id
    L3_2 = A0_2._cur_entrance_id
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BigMapUtils
    L3_2 = L3_2.IsMapAreaHide
    L4_2 = A0_2._big_map_data
    L4_2 = L4_2.NavmapConfig
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.BigMapUtils
      L3_2 = L3_2.IsMapAreaHide
      L4_2 = A0_2._big_map_data
      L4_2 = L4_2.NavmapConfig
      L5_2 = A1_2
      return L3_2(L4_2, L5_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.IsMapAreaHide
  L3_2 = A0_2._big_map_data
  L3_2 = L3_2.NavmapConfig
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = not L2_2
  return L2_2
end
L0_1._check_is_show_by_area = L13_1
return L0_1
