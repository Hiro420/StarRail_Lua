local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapZoomSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.WorldSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapAreaListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapBoxCountPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapFloorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.WorldMapBtnPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
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
L2_1 = L2_1.StoryLineModule
function L3_1(A0_2)
  local L1_2
  A0_2._cur_map_entry_id = nil
  A0_2._cur_player_map_entry_row = nil
  A0_2._cur_select_map_entry_row = nil
  A0_2._cur_map_layer_count = 1
  A0_2._cur_map_show_layer = 1
  A0_2._cur_player_layer = 1
  L1_2 = {}
  A0_2._unlock_map_entry_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._symbol_detail_active_callback_obj = A1_2
  A0_2._symbol_detail_active_callback_func = A2_2
end
L0_1.reg_symbol_detail_active_call_back = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._symbol_title_active_callback_obj = A1_2
  A0_2._symbol_title_active_callback_func = A2_2
end
L0_1.reg_symbol_title_active_call_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_area_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._map_area_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._symbol_title_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
    L2_2 = false
    return L2_2
  end
end
L0_1.is_can_to_zoom = L3_1
function L3_1(A0_2)
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
L0_1.get_zoom2_selected_object = L3_1
function L3_1(A0_2)
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
    L1_2 = A0_2.hide_symbol_panel
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1.is_can_exit = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_symbol_detail_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.custom_set_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_hide_symbol_panel
  L1_2(L2_2)
end
L0_1.hide_symbol_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_box_count_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_expand_panel_view
  L1_2(L2_2)
end
L0_1.hide_map_box_expand_panel_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_virtual_cursor_image_active
  L1_2(L2_2)
end
L0_1.update_virtual_cursor_image_active = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._cur_show_world_id = A2_2
  A0_2._cur_map_entry_id = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MapEntryExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._cur_map_entry_id
  L5_2 = L5_2(L6_2)
  A0_2._cur_select_map_entry_row = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._init_map_entry_data
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_map_detail
  L5_2(L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.WorldDataConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._cur_show_world_id
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.WorldName
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_world_title
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if A3_2 or A4_2 then
    L6_2 = A0_2._map_container_panel
    L7_2 = L6_2
    L6_2 = L6_2.setup_default_show_info
    L8_2 = A3_2
    L9_2 = A4_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = A0_2._map_floor_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._cur_select_map_entry_row
  L9_2 = A0_2._cur_map_layer_count
  L10_2 = A0_2._cur_map_show_layer
  L11_2 = A0_2._cur_player_layer
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A0_2._world_map_btn_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._cur_show_world_id
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._world_switch_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._cur_show_world_id
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_index_by_select_map_entry_row
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._map_area_list_panel
  L8_2 = L7_2
  L7_2 = L7_2.safe_set_active
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._map_area_list_panel
  L8_2 = L7_2
  L7_2 = L7_2.setup_view
  L9_2 = A0_2._cur_show_world_id
  L10_2 = A0_2._cur_player_map_entry_row
  L11_2 = A0_2._cur_select_map_entry_row
  L12_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = A0_2._map_area_list_panel
  L8_2 = L7_2
  L7_2 = L7_2.try_move_panel_to_item_index
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._map_box_count_panel
  L8_2 = L7_2
  L7_2 = L7_2.hide_expand_panel_view
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._on_hide_symbol_panel
  L7_2(L8_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.GetMapEntryRow
  L3_2 = L1_2.PlaneID
  L4_2 = L1_2.FloorID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_player_map_entry_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "StoryLineID"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetMapEntryListByStoryLineID
  L4_2 = A0_2._cur_show_world_id
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.cs_list_to_table
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._unlock_map_entry_list = L4_2
  L4_2 = A0_2._cur_select_map_entry_row
  if L4_2 == nil then
    L4_2 = A0_2._cur_player_map_entry_row
    A0_2._cur_select_map_entry_row = L4_2
  end
end
L0_1._init_map_entry_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._update_map_layer_info
  L1_2(L2_2)
  L1_2 = A0_2._map_floor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_map_entry_row
  L4_2 = A0_2._cur_map_layer_count
  L5_2 = A0_2._cur_map_show_layer
  L6_2 = A0_2._cur_player_layer
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_area_detail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_maze_map_info_updated
  L1_2(L2_2)
end
L0_1._refresh_map_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_select_map_entry_row
  if L1_2 then
    L1_2 = A0_2._map_container_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_map_view
    L3_2 = A0_2._cur_select_map_entry_row
    L3_2 = L3_2.ID
    L4_2 = A0_2._cur_map_show_layer
    L5_2 = A0_2._cur_map_layer_count
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_area_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetMapLayerManager
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cur_select_map_entry_row
  L3_2 = L3_2.ID
  L5_2 = L2_2
  L4_2 = L2_2.GetLayerNumberInOtherMap
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._cur_map_layer_count = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.get_blackboard
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.query
  L6_2 = "StoryLineID"
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = G
  L5_2 = L5_2.MapUtil
  L5_2 = L5_2.is_in_current_entrance
  L6_2 = A0_2._cur_select_map_entry_row
  L6_2 = L6_2.ID
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L2_2
    L5_2 = L2_2.GetLocalAvatarLayer
    L5_2 = L5_2(L6_2)
    A0_2._cur_map_show_layer = L5_2
    L5_2 = A0_2._cur_map_show_layer
    A0_2._cur_player_layer = L5_2
  else
    L6_2 = L2_2
    L5_2 = L2_2.GetDefaultLayerInOtherMap
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2._cur_map_show_layer = L5_2
  end
end
L0_1._update_map_layer_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_symbol_detail_parent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._symbol_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_area_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._symbol_detail_active_callback_func
  if L2_2 then
    L2_2 = A0_2._symbol_detail_active_callback_func
    L3_2 = A0_2._symbol_detail_active_callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 116
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._symbol_title_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 122
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 116
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_zoom1_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_symbol_detail_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation_control_type
  L4_2 = CS
  L4_2 = L4_2.InControl
  L4_2 = L4_2.InControlInputModule
  L4_2 = L4_2.NavigationControlType
  L4_2 = L4_2.DPad
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = 0.1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._owner
    if L0_3 then
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.to_first_zoom
        L0_3(L1_3)
        L0_3 = A1_2
        if L0_3 then
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.set_navigation_target
          L2_3 = nil
          L0_3(L1_3, L2_3)
        else
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.set_navigation_target
          L2_3 = A0_2._map_area_list_panel
          L3_3 = L2_3
          L2_3 = L2_3.get_first_selected_object
          L2_3, L3_3 = L2_3(L3_3)
          L0_3(L1_3, L2_3, L3_3)
        end
      end
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_zoom1_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.OnOpenSubMapPage
  L4_2 = A0_2._on_hide_symbol_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_symbol_panel
  L4_2 = A0_2._on_hide_symbol_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WorldMapBtnPanel
  L4_2 = G
  L4_2 = L4_2.WorldMapBtnPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._world_map_btn_panel = L1_2
  L1_2 = A0_2._world_map_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_regional_map
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WorldSwitchPanel
  L4_2 = G
  L4_2 = L4_2.WorldSwitchPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._world_switch_panel = L1_2
  L1_2 = A0_2._world_switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_world_switch
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapAreaListPanel
  L4_2 = G
  L4_2 = L4_2.MapAreaListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_area_list_panel = L1_2
  L1_2 = A0_2._map_area_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_area_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_area_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_item_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_map_area_list_item_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapBoxCountPanel
  L4_2 = G
  L4_2 = L4_2.MapBoxCountPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_box_count_panel = L1_2
  L1_2 = A0_2._map_box_count_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_box_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_box_count_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapFloorPanel
  L4_2 = G
  L4_2 = L4_2.MapFloorPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_floor_panel = L1_2
  L1_2 = A0_2._map_floor_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_floor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_floor_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_btn_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_floor_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapZoomSliderPanel
  L4_2 = G
  L4_2 = L4_2.MapZoomSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_zoom_slider_panel = L1_2
  L1_2 = A0_2._map_zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_zoom_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_slider_value_change_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_slider_value_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapContainerPanel
  L4_2 = G
  L4_2 = L4_2.MapContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_container_panel = L1_2
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_container
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_prop_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_prop_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_refresh_map_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_refresh_map_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_map_scale_change_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_map_scale_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_change_navigation_type_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = "SwitchAreaPage"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapSymbolTitlePanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolTitlePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._symbol_title_panel = L1_2
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_symbol_title_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_btn_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_map_symbol_title_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapSymbolDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._symbol_detail_panel = L1_2
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_symbol_detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_mission_trace_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_mission_trace_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_symbol_detail_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_map_symbol_detail_panel
  L3_2 = A0_2._symbol_detail_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L3_2 = A0_2._cur_map_entry_id
  if L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetBigMapData
    L5_2 = A0_2._cur_map_entry_id
    L6_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L4_2 = A0_2._map_box_count_panel
      L5_2 = L4_2
      L4_2 = L4_2.setup_view
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_maze_map_info_updated = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.is_out_most_zoom
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  A0_2._cur_map_show_layer = A1_2
  L2_2 = A0_2._map_floor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cur_select_map_entry_row
  L5_2 = A0_2._cur_map_layer_count
  L6_2 = A0_2._cur_map_show_layer
  L7_2 = A0_2._cur_player_layer
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_symbol_detail_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_container_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_map_view
  L4_2 = A0_2._cur_select_map_entry_row
  L4_2 = L4_2.ID
  L5_2 = A0_2._cur_map_show_layer
  L6_2 = A0_2._cur_map_layer_count
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_floor_btn_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_map_show_layer = A1_2
  L2_2 = A0_2._map_floor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cur_select_map_entry_row
  L5_2 = A0_2._cur_map_layer_count
  L6_2 = A0_2._cur_map_show_layer
  L7_2 = A0_2._cur_player_layer
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_refresh_map_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.on_map_scale_change
  L1_2(L2_2)
end
L0_1._on_map_scale_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._map_container_panel
  L3_2 = L2_2
  L2_2 = L2_2._setup_map_scale_by_value
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map_Scale_Lower_Ratio
  L4_2 = L4_2 + A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_slider_value_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    A0_2.symbol_detail_data_list = nil
    L3_2 = A0_2
    L2_2 = A0_2._on_hide_symbol_panel
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 116
    L2_2(L3_2, L4_2)
  else
    A0_2.symbol_detail_data_list = A1_2
    L2_2 = A0_2.symbol_detail_data_list
    L2_2 = #L2_2
    if 1 < L2_2 then
      L2_2 = A0_2._symbol_title_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._cur_select_map_entry_row
      L4_2 = L4_2.ID
      L5_2 = A0_2.symbol_detail_data_list
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_symbol_detail_active
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._symbol_title_active_callback_func
      if L2_2 then
        L2_2 = A0_2._symbol_title_active_callback_func
        L3_2 = A0_2._symbol_title_active_callback_obj
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2._symbol_title_panel
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._symbol_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2.symbol_detail_data_list
      L4_2 = L4_2[1]
      L5_2 = A0_2._cur_map_layer_count
      L6_2 = A0_2._map_container_panel
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_symbol_detail_active
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_prop_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._map_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_symbol_panel
  L1_2(L2_2)
  L1_2 = A0_2._symbol_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._symbol_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_symbol_detail_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._map_box_count_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_expand_panel_view
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_map_message_panel_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_hide_symbol_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._map_container_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_node_icon_selected_position
  L4_2 = A0_2.symbol_detail_data_list
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.map_icon_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._symbol_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._symbol_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2.symbol_detail_data_list
  L4_2 = L4_2[A1_2]
  L5_2 = A0_2._cur_map_layer_count
  L6_2 = A0_2._map_container_panel
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_symbol_detail_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.symbol_detail_data_list
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MapLayer
  L3_2 = A0_2._cur_map_layer_count
  if 1 < L3_2 then
    L3_2 = A0_2._cur_map_show_layer
    if L2_2 ~= L3_2 then
      A0_2._cur_map_show_layer = L2_2
      L3_2 = A0_2._map_floor_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = A0_2._cur_select_map_entry_row
      L6_2 = A0_2._cur_map_layer_count
      L7_2 = A0_2._cur_map_show_layer
      L8_2 = A0_2._cur_player_layer
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = A0_2._map_container_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_map_view
      L5_2 = A0_2._cur_select_map_entry_row
      L5_2 = L5_2.ID
      L6_2 = A0_2._cur_map_show_layer
      L7_2 = A0_2._cur_map_layer_count
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L3_2 = A0_2._map_container_panel
  L4_2 = L3_2
  L3_2 = L3_2.show_symbol_panel
  L3_2(L4_2)
end
L0_1._on_map_symbol_title_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._map_area_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._map_area_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh_map_area_list
  L3_2(L4_2)
  L3_2 = A0_2._map_container_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh_mission_view
  L3_2(L4_2)
  L3_2 = A0_2._map_area_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.IsShowSubMissionInMap
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == false then
    L5_2 = A0_2
    L4_2 = A0_2._on_hide_symbol_panel
    L4_2(L5_2)
  end
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2._update_world_map_mission_icon
  L4_2(L5_2)
end
L0_1._on_mission_trace_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._cur_select_map_entry_row
  if L2_2 then
    L2_2 = A0_2._cur_select_map_entry_row
    if L2_2 ~= A1_2 then
      A0_2._cur_select_map_entry_row = A1_2
      L2_2 = A0_2._cur_select_map_entry_row
      L2_2 = L2_2.ID
      A0_2._cur_map_entry_id = L2_2
      L2_2 = A0_2._map_container_panel
      L3_2 = L2_2
      L2_2 = L2_2.clear_old_entrance_id_by_player
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._refresh_map_detail
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._get_index_by_select_map_entry_row
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._map_area_list_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = A0_2._cur_show_world_id
      L6_2 = A0_2._cur_player_map_entry_row
      L7_2 = A0_2._cur_select_map_entry_row
      L8_2 = L2_2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = A0_2._symbol_title_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._map_box_count_panel
      L4_2 = L3_2
      L3_2 = L3_2.hide_expand_panel_view
      L3_2(L4_2)
      L3_2 = A0_2._owner
      L4_2 = L3_2
      L3_2 = L3_2.set_map_message_panel_view
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_map_container_panel
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "MapContainer_Switch"
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_map_area_list_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._unlock_map_entry_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cur_select_map_entry_row
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = 1
  return L1_2
end
L0_1._get_index_by_select_map_entry_row = L3_1
return L0_1
