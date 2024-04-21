local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapAreaListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.RegionalDetailItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapAreaListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._map_entry_info_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_item_click_call_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_select_map_entry_index
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_map_list
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._cur_select_map_entry_index
    L3_2 = L3_2 - 1
    L1_2 = L1_2(L2_2, L3_2)
  end
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_map_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
    if L1_2 then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      if L2_2 == nil then
        L2_2 = A0_2._binder
        L2_2 = L2_2.scroll_map_list
        L3_2 = L2_2
        L2_2 = L2_2.GetShownItemByItemIndex
        L4_2 = 1
        L2_2 = L2_2(L3_2, L4_2)
        L1_2 = L2_2
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
  A0_2._cur_show_world_id = A1_2
  A0_2._cur_player_map_entry_row = A2_2
  A0_2._cur_select_map_entry_row = A3_2
  A0_2._cur_select_map_entry_index = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._generate_show_map_entry_info_list
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.refresh_map_area_list
  L5_2(L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_map_list
  L2_2 = L1_2
  L1_2 = L1_2.ClearTrackIndex
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_map_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._map_entry_info_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_map_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_symbol_show
  L1_2(L2_2)
end
L0_1.refresh_map_area_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_select_map_entry_index = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_map_list
  L3_2 = L2_2
  L2_2 = L2_2.IsItemWithinViewport
  L4_2 = A0_2._cur_select_map_entry_index
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_map_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = A0_2._cur_select_map_entry_index
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.try_move_panel_to_item_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_map_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_map_list_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._map_entry_info_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RegionalDetailItem
    L9_2 = G
    L9_2 = L9_2.RegionalDetailItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._callback_func
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.register_click_callback
      L8_2 = A0_2._callback_obj
      L9_2 = A0_2._callback_func
      L6_2(L7_2, L8_2, L9_2)
    end
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L9_2 = A0_2._cur_player_map_entry_row
  L10_2 = A0_2._cur_select_map_entry_row
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.scroll_map_list
    L8_2 = L7_2
    L7_2 = L7_2.PushTrackIndex
    L9_2 = A2_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = A0_2._map_entry_info_list
  L8_2 = A2_2 + 2
  L7_2 = L7_2[L8_2]
  if L7_2 then
    L8_2 = L7_2.map_space_type
    L8_2 = #L8_2
    if 0 < L8_2 then
      L9_2 = L5_2
      L8_2 = L5_2.setup_line_active
      L10_2 = false
      L8_2(L9_2, L10_2)
  end
  else
    L9_2 = L5_2
    L8_2 = L5_2.setup_line_active
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.LayoutRebuilder
  L8_2 = L8_2.ForceRebuildLayoutImmediate
  L9_2 = L4_2.transform
  L8_2(L9_2)
  return L4_2
end
L0_1._on_map_list_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BigMapUtils
    L3_2 = L3_2.GetTraceSubMissionByWorldID
    L4_2 = A0_2._cur_show_world_id
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.BigMapUtils
      L4_2 = L4_2.GetTraceSubMissionByEntranceID
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.BigMapUtils
      L5_2 = L5_2.TrainEntranceID
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
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
      L7_2 = A0_2._async_load_sprite_to
      L9_2 = A0_2._binder
      L9_2 = L9_2.image_top_tip
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = A0_2
      L7_2 = A0_2._async_load_sprite_to
      L9_2 = A0_2._binder
      L9_2 = L9_2.image_bottom_tip
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._setup_mission_symbol_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  A0_2._map_entry_info_list = L1_2
  L1_2 = {}
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
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.WorldDataConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._cur_show_world_id
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.MapSpaceTypeList
  L6_2 = L6_2.Length
  if 1 < L6_2 then
    L6_2 = ipairs
    L7_2 = L4_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = G
      L11_2 = L11_2.MapUtil
      L11_2 = L11_2.get_map_space_type
      L12_2 = A0_2._cur_show_world_id
      L13_2 = L10_2.ID
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = L1_2[L11_2]
      if L12_2 ~= nil then
        L12_2 = L1_2[L11_2]
        if L12_2 ~= false then
          goto lbl_51
        end
      end
      L1_2[L11_2] = true
      goto lbl_56
      ::lbl_51::
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.MapSpaceType
      L11_2 = L12_2.Unknow
      ::lbl_56::
      L12_2 = {}
      L12_2.map_space_type = L11_2
      L13_2 = L10_2.ID
      L12_2.entrance_id = L13_2
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = A0_2._map_entry_info_list
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  else
    L6_2 = ipairs
    L7_2 = L4_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = {}
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.MapSpaceType
      L12_2 = L12_2.Unknow
      L11_2.map_space_type = L12_2
      L12_2 = L10_2.ID
      L11_2.entrance_id = L12_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._map_entry_info_list
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
end
L0_1._generate_show_map_entry_info_list = L2_1
return L0_1
