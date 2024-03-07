local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Map3D.Map3DMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map3D.Map3DUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapVirtualCursorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapZoomSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map3D.MapContainer.Map3DIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapBoxCountPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map3DMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RaidModule
L3_1 = 50
L4_1 = 20
L5_1 = 100
L6_1 = 10
L7_1 = "SwitchAreaPage"
L8_1 = "RaidSwitchAreaPage"
L9_1 = "MapAreaSelectPanel_Switch"
L10_1 = "MapAreaSelectPanel_SwitchOut"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.Map3DMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.Map3DUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._map3d_ui3d = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
  A0_2._entrance_id = 2031201
  A0_2._region_id = 1
  A0_2._show_layer = 1
  A0_2._cur_map_layer_count = 1
  A0_2._is_init_map3d = false
  A0_2._is_show_virtual_cursor = false
  A0_2._is_show_map_select = false
  A0_2._map_3d_select_map_icon = false
  A0_2._is_show_player_mark = false
  A0_2._cur_detail_clip_name = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L6_2 = A1_2 or nil
  if not A1_2 then
    L6_2 = A0_2._entrance_id
  end
  A0_2._entrance_id = L6_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = A0_2._region_id
  end
  A0_2._region_id = L6_2
  A0_2._mapping_info_id = A3_2
  A0_2._sub_mission_id = A4_2
  if A5_2 then
    L7_2 = A0_2
    L6_2 = A0_2.get_blackboard
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.update
    L8_2 = "StoryLineID"
    L9_2 = A5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.init = L11_1
function L11_1(A0_2, A1_2)
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
L0_1.set_story_line_id = L11_1
function L11_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_zoom2_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_zoom2_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._symbol_title_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_title_btn
    return L1_2(L2_2)
  end
end
L0_1.get_zoom2_selected_object = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_UnchangeBack" then
    L3_2 = A0_2
    L2_2 = A0_2._setup_virtual_cursor_show
    L4_2 = A0_2._is_show_virtual_cursor
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_action_click = L11_1
function L11_1(A0_2)
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
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetCRotatableRegionMap
  L5_2 = A0_2._region_id
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2._map3d_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.init_map
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.init_map = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._send_map_info_request
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_virtual_cursor_show
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AreaMapConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._entrance_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_raid_view
    L2_2(L3_2)
  end
end
L0_1._setup_view = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_AlleyPackSelectBack"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_AlleyPackSelect"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_show_virtual_cursor = A1_2
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_image_light_weight_active
  L4_2 = A0_2._is_show_virtual_cursor
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DVirtualCursorEnable
  L4_2 = A0_2._is_show_virtual_cursor
  L2_2(L3_2, L4_2)
end
L0_1._setup_virtual_cursor_show = L11_1
function L11_1(A0_2)
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
  L5_2 = A0_2._entrance_id
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.SendGetMazeInfoCsReq
  L5_2 = L2_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._send_map_info_request = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
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
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetCRotatableRegionMap
  L5_2 = A0_2._region_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.Items
  end
  if L4_2 then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.cs_list_to_table
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_30
    end
  end
  L5_2 = {}
  ::lbl_30::
  L6_2 = table
  L6_2 = L6_2.sort
  L7_2 = L5_2
  function L8_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.MissionData
    if L2_3 ~= nil then
      L2_3 = A1_3.MissionData
      if L2_3 == nil then
        L2_3 = true
        return L2_3
    end
    else
      L2_3 = A0_3.MissionData
      if L2_3 == nil then
        L2_3 = A1_3.MissionData
        if L2_3 ~= nil then
          L2_3 = false
          return L2_3
      end
      else
        L2_3 = false
        return L2_3
      end
    end
  end
  L6_2(L7_2, L8_2)
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = A0_2._map_3d_icon_panel
    L12_2 = L11_2
    L11_2 = L11_2.setup_view
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  if L3_2 then
    L6_2 = L3_2.PlayerItem
  end
  L6_2 = L6_2 ~= nil or L6_2
  A0_2._is_show_player_mark = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._setup_close_button
  L8_2 = A0_2._is_show_player_mark
  L6_2(L7_2, L8_2)
end
L0_1._setup_map_3d_icon_view = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_map_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_show_map_select = A1_2
end
L0_1._setup_close_button = L11_1
function L11_1(A0_2)
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
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.RotatableRegionMapInfos
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A0_2._region_id
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.UpdateRotatableRegionPlayerInfo
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.UpdateRotatableRegionTrackMonsterInfo
  L3_2(L4_2)
  L3_2 = A0_2._is_init_map3d
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.init_map
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_map_3d_icon_view
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._init_ui_navigation
    L3_2(L4_2)
    A0_2._is_init_map3d = true
  end
  L3_2 = A0_2._sub_mission_id
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_mission_info_detail_view
    L3_2(L4_2)
  else
    L3_2 = A0_2._mapping_info_id
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_mapping_info_detail_view
      L3_2(L4_2)
    else
      L3_2 = A0_2._is_show_player_mark
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._setup_trace_mission_info_detail_view_default
        L3_2(L4_2)
      end
    end
  end
  L3_2 = A0_2._map_box_count_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_maze_map_info_updated = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_symbol_detail_panel
  L1_2(L2_2)
end
L0_1._on_map_deselect_map_icon = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_map_select
  L4_2 = A0_2._on_btn_back_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_symbol_detail
  L4_2 = A0_2._on_btn_close_symbol_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DRotated
  L4_2 = A0_2._on_map3d_rotate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DInitialized
  L4_2 = A0_2._on_map3d_initialized
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DCameraTransformed
  L4_2 = A0_2._on_map3d_camera_transformed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DColliderUpdate
  L4_2 = A0_2._on_map3d_collider_update
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
  L3_2 = L3_2.OnMap3DForceDeselectMapIcon
  L4_2 = A0_2._on_map_deselect_map_icon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_mono_joy_stick
  L2_2 = L1_2
  L1_2 = L1_2.AddJoyStickPointDownEvent
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_joy_stick_point_down
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_mono_joy_stick
  L2_2 = L1_2
  L1_2 = L1_2.AddJoyStickPointUpEvent
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_joy_stick_point_up
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_mono_joy_stick
  L2_2 = L1_2
  L1_2 = L1_2.AddJoyStickDragEvent
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_joy_stick_drag
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_area_select_panel
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = L10_1
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._symbol_detail_panel
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapZoomSliderPanel
  L5_2 = G
  L5_2 = L5_2.MapZoomSliderPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_zoom_slider_panel = L2_2
  L2_2 = A0_2._map_zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_map_zoom_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_slider_value_change_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_slider_value_change
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._map_zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_in_control_press_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapSymbolTitlePanel
  L5_2 = G
  L5_2 = L5_2.MapSymbolTitlePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._symbol_title_panel = L2_2
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_symbol_title_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_symbol_title_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.Map3DIconPanel
  L5_2 = G
  L5_2 = L5_2.Map3DIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_3d_icon_panel = L2_2
  L2_2 = A0_2._map_3d_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icons
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_3d_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.reg_btn_click_call_back
  L4_2 = A0_2
  L5_2 = A0_2._on_map_icon_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanel
  L5_2 = G
  L5_2 = L5_2.MapSymbolDetailPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._symbol_detail_panel = L2_2
  L2_2 = A0_2._symbol_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_symbol_detail_panel
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapVirtualCursorPanel
  L5_2 = G
  L5_2 = L5_2.MapVirtualCursorPanelBinder
  L6_2 = L4_1
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_map_container
  L7_2 = L7_2.transform
  L8_2 = L5_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._map_virtual_cursor_panel = L2_2
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_map_container
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_callback
  L4_2 = A0_2
  L5_2 = A0_2._tick_virtual_cursor_select_object
  L6_2 = A0_2._on_in_control_press_call_back
  L7_2 = A0_2._on_in_control_release_call_back
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MapBoxCountPanel
  L5_2 = G
  L5_2 = L5_2.MapBoxCountPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_box_count_panel = L2_2
  L2_2 = A0_2._map_box_count_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_box_count
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_map3d_rotate = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._map3d_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.reset_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_map3d_initialized = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_all_icons
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.Map_Scale_Lower_Ratio
  L2_2 = L2_2 + A1_2
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Scale_Lower_Ratio
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._map_zoom_slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_slider_value_without_callback
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._symbol_title_panel
  L4_2 = L3_2
  L3_2 = L3_2.is_active
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._cur_select_icon_game_object_info
    if L3_2 then
      L3_2 = A0_2._cur_select_icon_game_object_info
      L3_2 = L3_2.icon_game_object
      if L3_2 then
        L3_2 = A0_2._map_virtual_cursor_panel
        L4_2 = L3_2
        L3_2 = L3_2.get_virtual_cursor_root
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2.transform
        L5_2 = A0_2._cur_select_icon_game_object_info
        L5_2 = L5_2.icon_game_object
        L5_2 = L5_2.transform
        L5_2 = L5_2.localPosition
        L4_2.localPosition = L5_2
        L4_2 = L3_2.localPosition
        L4_2 = L4_2.x
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.UIUtils
        L5_2 = L5_2.UIScaleFactor
        L4_2 = L4_2 * L5_2
        L5_2 = CS
        L5_2 = L5_2.UnityEngine
        L5_2 = L5_2.Screen
        L5_2 = L5_2.width
        L5_2 = L5_2 / 2
        L4_2 = L4_2 + L5_2
        L5_2 = L3_2.localPosition
        L5_2 = L5_2.y
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.UIUtils
        L6_2 = L6_2.UIScaleFactor
        L5_2 = L5_2 * L6_2
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.Screen
        L6_2 = L6_2.height
        L6_2 = L6_2 / 2
        L5_2 = L5_2 + L6_2
        L6_2 = G
        L6_2 = L6_2.NotifyManager
        L6_2 = L6_2.notify
        L7_2 = G
        L7_2 = L7_2.CS
        L7_2 = L7_2.NotifyType
        L7_2 = L7_2.OnMap3DVirtualCursorMove
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.Vector2
        L9_2 = L4_2
        L10_2 = L5_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1._on_map3d_camera_transformed = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_map3d_collider_update = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2._map_3d_icon_panel
  if L3_2 then
    L3_2 = A0_2._map_3d_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_icon_game_object_info_list
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = {}
    end
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = A0_2._map_3d_icon_panel
      L10_2 = L9_2
      L9_2 = L9_2.refresh_icon_node
      L11_2 = L8_2
      L12_2 = A1_2
      L13_2 = A2_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = A0_2._cur_select_icon_game_object_info
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_icon_selected
    L3_2 = L3_2.transform
    L4_2 = A0_2._cur_select_icon_game_object_info
    L4_2 = L4_2.icon_game_object
    L4_2 = L4_2.transform
    L4_2 = L4_2.localPosition
    L3_2.localPosition = L4_2
  end
end
L0_1._refresh_all_icons = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_1.TempShowMapMonsterData = nil
  L2_2 = A0_2
  L1_2 = A0_2._try_close_main_map_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_1.TempShowMapMonsterData = nil
  L2_2 = A0_2
  L1_2 = A0_2._try_open_main_map_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_exit_after_transition
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_back_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map3d_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.reset_map
  L1_2(L2_2)
  L1_2 = A0_2._map3d_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.reset_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._close_symbol_detail_panel
  L1_2(L2_2)
end
L0_1._on_btn_reset_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_symbol_detail_panel
  L1_2(L2_2)
end
L0_1._on_btn_close_symbol_detail_click = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DZoomSliderAlphaChanged
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_slider_value_change = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._sub_mission_id
  if L1_2 then
    L1_2 = A0_2._map_3d_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_icon_game_object_info_list
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = {}
    end
    L2_2 = ipairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.is_can_click
      if L7_2 then
        L7_2 = L6_2.show_type
        L8_2 = MapIconShowType
        L8_2 = L8_2.Mission
        if L7_2 == L8_2 then
          L7_2 = L6_2.rotatable_region_item_map_data
          L7_2 = L7_2.MissionData
          L7_2 = L7_2.SubMissionData
          L7_2 = L7_2.ID
          L8_2 = A0_2._sub_mission_id
          if L7_2 == L8_2 then
            A0_2._cur_select_icon_game_object_info = L6_2
            L8_2 = A0_2
            L7_2 = A0_2._trigger_select_single_icon_game_object_info
            L7_2(L8_2)
            A0_2._sub_mission_id = nil
            return
          end
        end
      end
    end
  end
end
L0_1._setup_mission_info_detail_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._mapping_info_id
  if L1_2 then
    L1_2 = A0_2._map_3d_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_icon_game_object_info_list
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = {}
    end
    L2_2 = ipairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.is_can_click
      if L7_2 then
        L7_2 = L6_2.show_type
        L8_2 = MapIconShowType
        L8_2 = L8_2.MappingInfo
        if L7_2 ~= L8_2 then
          L7_2 = L6_2.show_type
          L8_2 = MapIconShowType
          L8_2 = L8_2.TrackMonster
          if L7_2 ~= L8_2 then
            goto lbl_53
          end
        end
        L7_2 = nil
        L8_2 = L6_2.show_type
        L9_2 = MapIconShowType
        L9_2 = L9_2.MappingInfo
        if L8_2 == L9_2 then
          L8_2 = L6_2.rotatable_region_item_map_data
          L8_2 = L8_2.MappingInfoData
          L7_2 = L8_2.MappingInfoID
        else
          L8_2 = L6_2.show_type
          L9_2 = MapIconShowType
          L9_2 = L9_2.TrackMonster
          if L8_2 == L9_2 then
            L8_2 = L6_2.rotatable_region_item_map_data
            L8_2 = L8_2.TrackMonsterData
            L7_2 = L8_2.MappingInfoID
          end
        end
        L8_2 = A0_2._mapping_info_id
        if L7_2 == L8_2 then
          A0_2._cur_select_icon_game_object_info = L6_2
          L9_2 = A0_2
          L8_2 = A0_2._trigger_select_single_icon_game_object_info
          L8_2(L9_2)
          A0_2._mapping_info_id = nil
          return
        end
      end
      ::lbl_53::
    end
  end
end
L0_1._setup_mapping_info_detail_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._map_3d_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_icon_game_object_info_list
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.is_can_click
    if L7_2 then
      L7_2 = L6_2.show_type
      L8_2 = MapIconShowType
      L8_2 = L8_2.Mission
      if L7_2 == L8_2 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.BigMapUtils
        L7_2 = L7_2.IsTraceSubMission
        L8_2 = L6_2.rotatable_region_item_map_data
        L8_2 = L8_2.MissionData
        L8_2 = L8_2.SubMissionData
        L7_2 = L7_2(L8_2)
        if L7_2 then
          A0_2._cur_select_icon_game_object_info = L6_2
          L8_2 = A0_2
          L7_2 = A0_2._trigger_select_single_icon_game_object_info
          L7_2(L8_2)
          return
        end
      end
    end
  end
end
L0_1._setup_trace_mission_info_detail_view_default = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._nearest_icon_game_object_info_list
  if L2_2 then
    L2_2 = A0_2._nearest_icon_game_object_info_list
    L2_2 = #L2_2
    if 1 < L2_2 then
      L2_2 = A0_2._nearest_icon_game_object_info_list
      L2_2 = L2_2[A1_2]
      A0_2._cur_select_icon_game_object_info = L2_2
      L4_2 = A0_2
      L3_2 = A0_2._trigger_select_single_icon_game_object_info
      L3_2(L4_2)
    end
  end
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_map_symbol_title_click = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._cur_select_icon_game_object_info = A1_2
  L2_2 = A0_2._map_3d_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_icon_game_object_info_list
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.get_nearest_map_3d_icon_node_by_click
  L4_2 = A1_2
  L5_2 = L2_2
  L6_2 = L3_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._nearest_icon_game_object_info_list = L3_2
  L3_2 = A0_2._nearest_icon_game_object_info_list
  L3_2 = #L3_2
  if 1 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._trigger_select_multi_icon_game_object_info
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._trigger_select_single_icon_game_object_info
    L3_2(L4_2)
  end
end
L0_1._on_map_icon_btn_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close_symbol_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entrance_id
  L4_2 = A0_2._nearest_icon_game_object_info_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L1_2 = L1_2.transform
  L2_2 = A0_2._cur_select_icon_game_object_info
  L2_2 = L2_2.icon_game_object
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L1_2.localPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MapSelectBig"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_detail_switch_out
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMap3DSelectMapIcon
  L3_2 = A0_2._cur_select_icon_game_object_info
  L3_2 = L3_2.rotatable_region_item_map_data
  L1_2(L2_2, L3_2)
  A0_2._map_3d_select_map_icon = true
end
L0_1._trigger_select_multi_icon_game_object_info = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_map_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_icon_game_object_info
  L4_2 = A0_2._cur_map_layer_count
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close_symbol_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L1_2 = L1_2.transform
  L2_2 = A0_2._cur_select_icon_game_object_info
  L2_2 = L2_2.icon_game_object
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L1_2.localPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MapSelectNormal"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMap3DSelectMapIcon
  L3_2 = A0_2._cur_select_icon_game_object_info
  L3_2 = L3_2.rotatable_region_item_map_data
  L1_2(L2_2, L3_2)
  A0_2._map_3d_select_map_icon = true
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L1_2(L2_2)
  L1_2 = A0_2._is_show_player_mark
  if L1_2 then
    L1_2 = A0_2._symbol_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_transfer_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_play_detail_switch
  L1_2(L2_2)
end
L0_1._trigger_select_single_icon_game_object_info = L11_1
function L11_1(A0_2, A1_2)
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
L0_1._tick_virtual_cursor_select_object = L11_1
function L11_1(A0_2, A1_2, A2_2)
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
L0_1._on_in_control_press_call_back = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = -A1_2
  L3_2 = L6_1
  L2_2 = L2_2 * L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = 0
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.OnMap3DVirtualCursorDrag
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_left_stick_up_press = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L2_2 = A1_2 * L2_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = 0
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.OnMap3DVirtualCursorDrag
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_left_stick_down_press = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L2_2 = A1_2 * L2_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.OnMap3DVirtualCursorDrag
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_left_stick_left_press = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = -A1_2
  L3_2 = L6_1
  L2_2 = L2_2 * L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.OnMap3DVirtualCursorDrag
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_left_stick_right_press = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._is_show_virtual_cursor
  if L2_2 == false then
    return
  end
  L2_2 = A1_2.localPosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.UIScaleFactor
  L2_2 = L2_2 * L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Screen
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 + L3_2
  L3_2 = A1_2.localPosition
  L3_2 = L3_2.y
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.UIScaleFactor
  L3_2 = L3_2 * L4_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Screen
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.OnMap3DVirtualCursorMove
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = L2_2
  L8_2 = L3_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._map_3d_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_icon_game_object_info_list
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = G
  L5_2 = L5_2.MapUtil
  L5_2 = L5_2.get_nearest_map_3d_icon_node_by_cursor
  L6_2 = A1_2
  L7_2 = L4_2
  L8_2 = L3_1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._nearest_icon_game_object_info_list = L5_2
  L5_2 = A0_2._nearest_icon_game_object_info_list
  L5_2 = #L5_2
  L6_2 = A0_2._nearest_icon_game_object_info_list
  L6_2 = #L6_2
  if 0 < L6_2 then
    L6_2 = A0_2._nearest_icon_game_object_info_list
    L6_2 = L6_2[1]
    A0_2._cur_select_icon_game_object_info = L6_2
    L6_2 = A0_2._nearest_icon_game_object_info_list
    L6_2 = #L6_2
    if 1 < L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._trigger_select_multi_icon_game_object_info
      L6_2(L7_2)
      L6_2 = A0_2._map_virtual_cursor_panel
      L7_2 = L6_2
      L6_2 = L6_2.setup_image_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    else
      L7_2 = A0_2
      L6_2 = A0_2._trigger_select_single_icon_game_object_info
      L6_2(L7_2)
      L6_2 = A0_2._map_virtual_cursor_panel
      L7_2 = L6_2
      L6_2 = L6_2.setup_image_active_by_multiple
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  else
    L7_2 = A0_2
    L6_2 = A0_2._close_symbol_detail_panel
    L6_2(L7_2)
    L6_2 = A0_2._map_virtual_cursor_panel
    L7_2 = L6_2
    L6_2 = L6_2.setup_image_active
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_in_control_release_call_back = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_map_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_map_select
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_detail_switch_out
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close_symbol_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_icon_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._cur_select_icon_game_object_info = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMap3DUnSelectMapIcon
  L1_2(L2_2)
  A0_2._map_3d_select_map_icon = false
end
L0_1._close_symbol_detail_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_can_exit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = A0_2._is_show_virtual_cursor
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_virtual_cursor_show
        L3_2 = false
        L1_2(L2_2, L3_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2.exit
        L1_2(L2_2)
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._in_control_exit_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_box_count_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_expand_panel_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._map_box_count_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide_expand_panel_view
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._close_symbol_detail_panel
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._is_can_exit = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SubMapConfigExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.MapEntranceID
    if L9_2 == A1_2 then
      L9_2 = L8_2.RegionID
      if L9_2 == A2_2 then
        L9_2 = L8_2.ID
        return L9_2
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_sub_map_id = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.NextPage
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Name
    L3_2 = L7_1
    if L2_2 == L3_2 then
      L3_2 = L1_2
      L2_2 = L1_2.Exit
      L2_2(L3_2)
    end
  end
end
L0_1._try_close_main_map_page = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.NextPage
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Name
    L3_2 = L7_1
    if L2_2 ~= L3_2 then
      L2_2 = L1_2.Name
      L3_2 = L8_1
      if L2_2 ~= L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.AdventureStatic
        L3_2 = L2_2
        L2_2 = L2_2.GetCurrentGameModeType
        L2_2 = L2_2(L3_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_ModuleManager
        L3_2 = L3_2.StoryLineModule
        L4_2 = L3_2
        L3_2 = L3_2.IsMainLine
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.GameModeType
          L3_2 = L3_2.Raid
          if L2_2 == L3_2 then
            L3_2 = G
            L3_2 = L3_2.GotoManager
            L3_2 = L3_2.GotoByType
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.GameCore
            L4_2 = L4_2.GotoType
            L4_2 = L4_2.RaidMap
            L4_2 = #L4_2
            L5_2 = {}
            L6_2 = A0_2._entrance_id
            L5_2[1] = L6_2
            L3_2(L4_2, L5_2)
          else
            L3_2 = G
            L3_2 = L3_2.GotoManager
            L3_2 = L3_2.GotoByType
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.GameCore
            L4_2 = L4_2.GotoType
            L4_2 = L4_2.AreaSwitch
            L4_2 = #L4_2
            L5_2 = {}
            L6_2 = A0_2._entrance_id
            L5_2[1] = L6_2
            L3_2(L4_2, L5_2)
          end
        else
          L3_2 = G
          L3_2 = L3_2.GotoManager
          L3_2 = L3_2.GotoByType
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.GotoType
          L4_2 = L4_2.StoryLineAreaSwitch
          L4_2 = #L4_2
          L5_2 = {}
          L6_2 = A0_2._entrance_id
          L5_2[1] = L6_2
          L3_2(L4_2, L5_2)
        end
        L3_2 = true
        return L3_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._try_open_main_map_page = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Raid
  if L1_2 == L2_2 then
    L2_2 = L2_1.CurrentTreasureChallengeSnapShot
    L2_2 = L2_2.CurrentRaidID
    L3_2 = L2_1.CurrentTreasureChallengeSnapShot
    L3_2 = L3_2.CurrentRaidLevel
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RaidConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2.RaidName
      L5_2(L6_2, L7_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_raid_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMap3DVirtualJoyTouchStart
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._close_symbol_detail_panel
  L1_2(L2_2)
end
L0_1._on_joy_stick_point_down = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMap3DVirtualJoyTouchUp
  L1_2(L2_2)
end
L0_1._on_joy_stick_point_up = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DVirtualJoySwipe
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_joy_stick_drag = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_detail_clip_name
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_detail_clip_name
    L2_2 = L9_1
    if L1_2 == L2_2 then
      goto lbl_15
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_area_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
  L1_2 = L9_1
  A0_2._cur_detail_clip_name = L1_2
  ::lbl_15::
end
L0_1._try_play_detail_switch = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._cur_detail_clip_name
    if L1_2 ~= nil then
      L1_2 = A0_2._cur_detail_clip_name
      L2_2 = L10_1
      if L1_2 == L2_2 then
        goto lbl_20
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_area_select_panel
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
    L1_2 = L10_1
    A0_2._cur_detail_clip_name = L1_2
  end
  ::lbl_20::
end
L0_1._try_play_detail_switch_out = L11_1
function L11_1(A0_2)
  local L1_2
  L1_1.TempShowMapMonsterData = nil
end
L0_1._on_dispose = L11_1
return L0_1
