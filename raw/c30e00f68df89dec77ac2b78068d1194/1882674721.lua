local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.Map2DView.Map2DViewPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.Map2DView.Map2DViewRegionalDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map2DViewPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Ui.Map.SwitchAreaPage"
L2_1 = "SwitchAreaPage"
function L3_1(A0_2)
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
  A0_2._is_show_map_select = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.Map2DViewPageBinder
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
end
L0_1.ctor = L3_1
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._map_2d_view_regional_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_zoom2_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._map_2d_view_regional_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_can_to_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
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
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = A0_2
  L6_2 = A0_2._init_map_entry_info
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2
  L6_2 = A0_2.get_blackboard
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.update
  L8_2 = "SubMapID"
  L9_2 = A5_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  A0_2._story_line_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.update
  L4_2 = "StoryLineID"
  L5_2 = A0_2._story_line_id
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_story_line_id = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.AdventureModule
  L5_2 = L5_2.MapDef
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = L5_2.CurMapEntryID
  end
  A0_2._entrance_id = L6_2
  A0_2._mapping_info_id = A2_2
  A0_2._sub_mission_id = A3_2
  L6_2 = A0_2._entrance_id
  if L6_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.BigMapUtils
    L6_2 = L6_2.GetWorldIDByEntranceID
    L7_2 = A0_2._entrance_id
    L6_2 = L6_2(L7_2)
  end
  A0_2._cur_show_world_id = L6_2
  L6_2 = A0_2._cur_show_world_id
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.BigMapUtils
  L7_2 = L7_2.TrainWorldID
  if L6_2 == L7_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.BigMapUtils
    L6_2 = L6_2.GetCurWorldID
    L6_2 = L6_2()
    A0_2._cur_show_world_id = L6_2
  end
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = 0
  end
  A0_2._story_line_id = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.get_blackboard
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.update
  L8_2 = "StoryLineID"
  L9_2 = A0_2._story_line_id
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._init_map_entry_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._map_2d_view_regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entrance_id
  L4_2 = A0_2._cur_show_world_id
  L5_2 = A0_2._mapping_info_id
  L6_2 = A0_2._sub_mission_id
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MapEntryExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._entrance_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeFloorExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.FloorID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.FloorName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
  L3_2 = 0
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.AdventureModule
  L4_2 = L4_2.MapDef
  L5_2 = L4_2.CurMapEntryID
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.StoryLineModule
  L7_2 = L6_2
  L6_2 = L6_2.IsMainLine
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = A0_2._entrance_id
    if L6_2 == L5_2 then
      L3_2 = L4_2.DimensionID
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.get_blackboard
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.query
  L8_2 = "StoryLineID"
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = G
  L7_2 = L7_2.MapUtil
  L7_2 = L7_2.check_is_show_player_icon
  L8_2 = A0_2._entrance_id
  L9_2 = L6_2
  L10_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_close_button
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._setup_close_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 116
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
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
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.Map2DViewRegionalDetailPanel
  L4_2 = G
  L4_2 = L4_2.Map2DViewRegionalDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_2d_view_regional_detail_panel = L1_2
  L1_2 = A0_2._map_2d_view_regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_regional_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_2d_view_regional_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_symbol_detail_active_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_symbol_detail_active
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_map_select
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_map_select
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_show_map_select
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_symbol_detail_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_2d_view_regional_detail_panel
  if L1_2 then
    L1_2 = A0_2._map_2d_view_regional_detail_panel
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
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_close_main_map_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
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
L0_1._on_btn_back_click = L3_1
function L3_1(A0_2)
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
    L3_2 = L2_1
    if L2_2 == L3_2 then
      L3_2 = L1_2
      L2_2 = L1_2.Exit
      L2_2(L3_2)
    end
  end
end
L0_1._try_close_main_map_page = L3_1
function L3_1(A0_2)
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
    L3_2 = L2_1
    if L2_2 ~= L3_2 then
      L2_2 = G
      L2_2 = L2_2.new
      L3_2 = L1_1
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2._get_main_map_entrance_id
      L3_2 = L3_2(L4_2)
      L5_2 = L2_2
      L4_2 = L2_2.init
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L5_2 = L2_2
      L4_2 = L2_2.set_story_line_id
      L6_2 = A0_2._story_line_id
      L4_2(L5_2, L6_2)
      L5_2 = L2_2
      L4_2 = L2_2.async_show
      L4_2(L5_2)
      L4_2 = true
      return L4_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._try_open_main_map_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MapEntryExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._entrance_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeFloorExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.FloorID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.BaseFloorID
  L4_2 = L1_2.FloorID
  if L3_2 ~= L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BigMapUtils
    L3_2 = L3_2.GetEntranceIDByFloorID
    L4_2 = L2_2.BaseFloorID
    return L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.query
  L5_2 = "SubMapID"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetEntranceIDByFloorID
    L5_2 = L2_2.BaseFloorID
    return L4_2(L5_2)
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_main_map_entrance_id = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SubMapConfigExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MapEntranceID
    if L8_2 == A1_2 then
      L8_2 = L7_2.Type
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.MinimapAreaType
      L9_2 = L9_2.AnotherFloor
      if L8_2 == L9_2 then
        L8_2 = L7_2.ID
        return L8_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_sub_map_id = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
