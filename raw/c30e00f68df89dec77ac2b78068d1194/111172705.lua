local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapItemDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapSwitchPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_ExitWithCut
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RegionalMapPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._regional_map_space_type = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._cur_show_world_id = A1_2
  A0_2._regional_map_exit_call_back_func = A2_2
  A0_2._regional_map_exit_call_back_obj = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_show_world_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.MapSpaceTypeList
  L2_2 = L2_2.Length
  if 1 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_regional_map_switch
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_map_space_type
    L2_2(L3_2)
    L2_2 = A0_2._regional_map_switch_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._cur_show_world_id
    L5_2 = A0_2._regional_map_space_type
    L6_2 = A0_2._on_regional_map_switch_item_click
    L7_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._regional_map_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_regional_map_space
    L4_2 = A0_2._regional_map_space_type
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_regional_map_switch
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_regional_detail
  L4_2 = A0_2._on_btn_close_regional_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RegionalMapPanel
  L4_2 = G
  L4_2 = L4_2.RegionalMapPanelBinder
  L5_2 = A0_2._cur_show_world_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._regional_map_panel = L1_2
  L1_2 = A0_2._regional_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_arrow_node
  L3_2 = A0_2._binder
  L3_2 = L3_2.arrow_left
  L4_2 = A0_2._binder
  L4_2 = L4_2.arrow_right
  L5_2 = A0_2._binder
  L5_2 = L5_2.arrow_top
  L6_2 = A0_2._binder
  L6_2 = L6_2.arrow_bottom
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._regional_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map_container
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._regional_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_region_item_click_call_back
  L3_2 = A0_2._on_region_item_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._regional_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_regional_detail_close_call_back
  L3_2 = A0_2._on_btn_close_regional_detail_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RegionalMapItemDetailPanel
  L4_2 = G
  L4_2 = L4_2.RegionalMapItemDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._regional_map_item_detail_panel = L1_2
  L1_2 = A0_2._regional_map_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_regional_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._regional_map_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_transfer_click_call_back
  L3_2 = A0_2._on_transfer_btn_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RegionalMapSwitchPanel
  L4_2 = G
  L4_2 = L4_2.RegionalMapSwitchPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._regional_map_switch_panel = L1_2
  L1_2 = A0_2._regional_map_switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_regional_map_switch
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_show_world_id
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.WorldName
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_world_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._regional_map_item_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_current_show_entrance_id
  L2_2 = L2_2(L3_2)
  if L2_2 ~= A1_2 then
    L3_2 = A0_2._regional_map_item_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._cur_show_world_id
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._regional_map_panel
    L4_2 = L3_2
    L3_2 = L3_2.adjust_content_position
    L5_2 = A1_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_regional_detail_parent
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_region_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._regional_map_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_close_regional_detail_panel
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_close_regional_detail_panel
  L1_2(L2_2)
end
L0_1._on_btn_close_regional_detail_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._regional_map_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._regional_map_item_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_fade_out
    L1_2(L2_2)
    L1_2 = A0_2._regional_map_panel
    L2_2 = L1_2
    L1_2 = L1_2.clear_btn_region_item_state
    L1_2(L2_2)
    L1_2 = A0_2._regional_map_panel
    L2_2 = L1_2
    L1_2 = L1_2.reset_content_position
    L1_2(L2_2)
  end
end
L0_1._try_close_regional_detail_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._regional_map_exit_call_back_func
  if L2_2 then
    L2_2 = A0_2._regional_map_exit_call_back_func
    L3_2 = A0_2._regional_map_exit_call_back_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_transfer_btn_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._regional_map_item_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._regional_map_panel
  L3_2 = L2_2
  L2_2 = L2_2.clear_btn_region_item_state
  L2_2(L3_2)
  L2_2 = A0_2._regional_map_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_content_position
  L2_2(L3_2)
  A0_2._regional_map_space_type = A1_2
  L2_2 = A0_2._regional_map_panel
  L3_2 = L2_2
  L2_2 = L2_2.regional_map_switch_space
  L4_2 = A0_2._regional_map_space_type
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._regional_map_switch_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cur_show_world_id
  L5_2 = A0_2._regional_map_space_type
  L6_2 = A0_2._on_regional_map_switch_item_click
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_regional_map_switch_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_show_world_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.MapSpaceTypeList
  L2_2 = L2_2.Length
  if 1 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.MapUtil
    L2_2 = L2_2.get_cur_player_map_space_type
    L3_2 = A0_2._cur_show_world_id
    L2_2 = L2_2(L3_2)
    A0_2._regional_map_space_type = L2_2
  end
end
L0_1._init_map_space_type = L1_1
return L0_1
