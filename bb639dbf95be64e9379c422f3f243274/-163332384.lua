local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.Map2DView.Map2DViewRegionalDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapContainerPanel"
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
L1_1 = "Ui.Map.RegionalDetail.MapFloorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapBoxCountPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map2DViewRegionalDetailPanel"
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
  A0_2._cur_map_layer_count = 1
  A0_2._cur_map_show_layer = 1
  A0_2._cur_player_layer = 1
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L5_2 = A0_2._refresh_map_detail
  L5_2(L6_2)
  if A3_2 or A4_2 then
    L5_2 = A0_2._map_container_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_default_show_info
    L7_2 = A3_2
    L8_2 = A4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._map_container_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_map_view
  L7_2 = A0_2._cur_select_map_entry_row
  L7_2 = L7_2.ID
  L8_2 = A0_2._cur_map_show_layer
  L9_2 = A0_2._cur_map_layer_count
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_symbol_detail_panel
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2._map_container_panel
  L6_2 = L5_2
  L5_2 = L5_2.update_virtual_cursor_image_active
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._on_hide_symbol_panel
  L5_2(L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._symbol_detail_active_callback_obj = A1_2
  A0_2._symbol_detail_active_callback_func = A2_2
end
L0_1.reg_symbol_detail_active_call_back = L3_1
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_symbol_panel
  L4_2 = A0_2._on_hide_symbol_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_map_floor
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_symbol_detail_parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
end
L0_1._on_load = L3_1
function L3_1(A0_2)
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
  L2_2 = A0_2._cur_map_entry_id
  if L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetBigMapData
    L4_2 = A0_2._cur_map_entry_id
    L5_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L3_2 = A0_2._map_box_count_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_maze_map_info_updated = L3_1
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
function L3_1(A0_2, A1_2)
  A0_2._cur_map_show_layer = A1_2
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
    L2_2 = A0_2._map_container_panel
    L3_2 = L2_2
    L2_2 = L2_2.reset_content_rect_transform
    L2_2(L3_2)
  end
end
L0_1._setup_symbol_detail_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_map_layer_info
  L1_2(L2_2)
end
L0_1._refresh_map_detail = L3_1
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
      L3_2 = A0_2._map_container_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_map_view
      L5_2 = A0_2._cur_select_map_entry_row
      L5_2 = L5_2.ID
      L6_2 = A0_2._cur_map_show_layer
      L7_2 = A0_2._cur_map_layer_count
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_symbol_detail_panel
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  L3_2 = A0_2._map_container_panel
  L4_2 = L3_2
  L3_2 = L3_2.show_symbol_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.to_first_zoom
  L3_2(L4_2)
end
L0_1._on_map_symbol_title_click = L3_1
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
    L1_2 = A0_2._on_hide_symbol_panel
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1.is_can_exit = L3_1
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
end
L0_1._on_hide_symbol_panel = L3_1
return L0_1
