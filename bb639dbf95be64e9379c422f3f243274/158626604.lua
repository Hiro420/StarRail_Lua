local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapBaseMappingInfoDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.MapModule
L1_1 = L1_1.Instance
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
L3_1 = L3_1.TransferModule
L4_1 = 2367
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "MappingInfo_Track_RangeMin"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.StoryLineModule
function L7_1(A0_2)
  local L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.param_data = A1_2
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.EntranceID
  A0_2.entrance_id = L4_2
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.DimensionID
  A0_2._dimension_id = L4_2
  A0_2._cur_map_layer_count = A2_2
  A0_2._map_container_panel = A3_2
  L4_2 = A0_2.param_data
  L4_2 = L4_2.icon_game_object
  if L4_2 then
    L4_2 = A0_2.param_data
    L4_2 = L4_2.icon_game_object
    L4_2 = L4_2.transform
    L4_2 = L4_2.localPosition
  end
  A0_2._target_position = L4_2
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MapLayer
  A0_2._target_layer = L4_2
  L4_2 = {}
  A0_2._reward_item_list = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_transfer
  L7_2 = A0_2._on_btn_transfer_click
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_trace
  L7_2 = A0_2._on_btn_trace_click
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_game_pad
  L7_2 = A0_2._on_btn_game_pad_click
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_reward_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_Cocoon_RewardInfo"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_items
  L5_2 = L4_2
  L4_2 = L4_2.init
  L6_2 = A0_2
  L7_2 = 0
  L8_2 = A0_2._on_reward_item_change
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_transfer
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_mapping_info_view
  L4_2(L5_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "SubMapID"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_can_transfer
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_mapping_info_btn_transfer_click
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._transfer_nearest_teleport_by_sub_map
      L2_2(L3_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_can_transfer
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_mapping_info_btn_transfer_click
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._transfer_nearest_teleport
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_transfer_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_mapping_info_btn_trace_click
  L1_2(L2_2)
end
L0_1._on_btn_trace_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MapLayer
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.try_get_nearest_teleport_id
  L3_2 = L1_2
  L4_2 = A0_2._target_position
  L5_2 = A0_2._cur_map_layer_count
  L6_2 = A0_2._map_container_panel
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._transfer_with_story_line_check
  L5_2 = A0_2.entrance_id
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._transfer_nearest_teleport = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_nearest_teleport_id_by_sub_map
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._transfer_with_story_line_check
  L4_2 = A0_2.entrance_id
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._transfer_nearest_teleport_by_sub_map = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.query
  L5_2 = "StoryLineID"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L6_1
  L5_2 = L4_2
  L4_2 = L4_2.IsStoryLine
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = G
    L4_2 = L4_2.StoryLineUtils
    L4_2 = L4_2.show_switch_line_check_on_demand
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L3_1
      L1_3 = L0_3
      L0_3 = L0_3.Transfer
      L2_3 = A1_2
      L3_3 = A2_2
      L4_3 = L3_2
      L5_3 = A0_2._dimension_id
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConfirmDialogUtil
    L4_2 = L4_2.ShowOkCancelHint
    L5_2 = "UIText_MappingInfo_Dialog_Desc_TeleportToNearby"
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextID
    L6_2 = L6_2.empty
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      if A0_3 then
        L1_3 = L3_1
        L2_3 = L1_3
        L1_3 = L1_3.Transfer
        L3_3 = A1_2
        L4_3 = A2_2
        L5_3 = L3_2
        L6_3 = A0_2._dimension_id
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._transfer_with_story_line_check = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 == false then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_reward_panel_rogue_all
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    if L1_2 == false then
      return
    end
  end
  L1_2 = A0_2._reward_item_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_item_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_game_pad_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MapPropDef
  if L2_2 then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.MapPropDef
    L1_2 = L2_2.FarmCocoonID
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.ShowType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MappingInfoShowType
  L5_2 = L5_2.AssistWaypoint
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_can_transfer
  L2_2 = L2_2(L3_2)
  if L2_2 then
    if 0 < L1_2 then
      L2_2 = A0_2.param_data
      L2_2 = L2_2.map_icon_data
      L2_2 = L2_2.PropState
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.PropState
      L3_2 = L3_2.CheckPointEnable
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_transfer
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_trace
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_trace
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2.param_data
      L2_2 = L2_2.map_icon_data
      L2_2 = L2_2.PropState
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.PropState
      L3_2 = L3_2.CheckPointDisable
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_trace
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_transfer
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_trace
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_trace
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoRow
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoRow
  L4_2 = L4_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MapIconType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MiniMapIconExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.IconPath
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.image_title
      L7_2 = L3_2.IconPath
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoRow
  L4_2 = L4_2.Type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MappingInfoType
  L5_2 = L5_2.ACTIVITY_ENTRANCE
  if L4_2 ~= L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_mapping_info_reward
    L6_2 = A0_2.param_data
    L6_2 = L6_2.map_icon_data
    L6_2 = L6_2.MappingInfoRow
    L6_2 = L6_2.DisplayItemList
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_mapping_info_trace_btn
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  if 0 < L1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.PlayerModule
    L4_2 = L4_2.PlayerData
    L4_2 = L4_2.WorldLevel
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.CocoonExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L1_2
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2.CocoonType
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.CocoonType
      L7_2 = L7_2.TYPE_WEEK
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._setup_challenge_count
        L6_2(L7_2)
      else
        L6_2 = L5_2.OpenDate
        L6_2 = L6_2.Length
        if 0 < L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2._setup_challenge_time
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_multiple_drop_tip
  L6_2 = A0_2.param_data
  L6_2 = L6_2.map_icon_data
  L6_2 = L6_2.MappingInfoRow
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_show_red_dot_tip
  L4_2(L5_2)
end
L0_1._setup_mapping_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_mapping_info_tracking
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_trace
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AdventureMissionPage_Tracked"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_trace
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AdventureMissionPage_StartTrack"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_mapping_info_trace_btn = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mapping_info_reward_by_item_table
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_sorted_items_by_item_config_list
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_mapping_info_reward = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #A1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  A0_2._reward_item_table = A1_2
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L2_2 = A0_2._reward_item_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_items
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._reward_item_table
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_items
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = ipairs
    L3_2 = A0_2._reward_item_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_item_list
      L9_2 = L6_2.ItemID
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_mapping_info_reward_by_item_table = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cocoon_mapping_info
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.param_data
    L1_2 = L1_2.map_icon_data
    L1_2 = L1_2.MappingInfoRow
    L1_2 = L1_2.IsTeleport
    if not L1_2 then
      goto lbl_24
    end
  end
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.PropState
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PropState
  L2_2 = L2_2.CheckPointDisable
  L1_2 = L1_2 ~= L2_2
  do return L1_2 end
  ::lbl_24::
  L2_2 = A0_2
  L1_2 = A0_2._is_map_connection_mapping_info
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.IsTeleport
  if not L2_2 then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.MappingInfoRow
    L2_2 = L2_2.EntranceID
    L2_2 = 0 < L2_2 or L2_2
  end
  return L2_2
end
L0_1._is_can_transfer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoConnectionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.entrance_id
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.MappingInfoRow
    L2_2 = L2_2.IsTeleport
    if not L2_2 then
      L2_2 = A0_2.param_data
      L2_2 = L2_2.map_icon_data
      L2_2 = L2_2.MappingInfoRow
      L2_2 = L2_2.EntranceID
      L2_2 = 0 < L2_2
    end
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_map_connection_mapping_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.TrackingMapMappingInfoData
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.EntranceID
    L3_2 = A0_2.param_data
    L3_2 = L3_2.map_icon_data
    L3_2 = L3_2.EntranceID
    L2_2 = L2_2 == L3_2
  end
  return L2_2
end
L0_1._is_mapping_info_tracking = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change_common
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._reward_item_table
  L8_2 = true
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_reward_item_change = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLite
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLiteBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A2_2 + 1
  L7_2 = A3_2[L7_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view_by_reward_item
  L10_2 = L7_2
  L11_2 = A4_2
  L8_2(L9_2, L10_2, L11_2)
  return L5_2
end
L0_1._on_reward_item_change_common = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_day
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.WeekCocoonCount
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Cocoon_Weekly_Limit_Times"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  L3_2 = L2_2 - L1_2
  if not (0 <= L3_2) or not L3_2 then
    L3_2 = 0
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_finish_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_bg_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 == 0
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_bg_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= 0
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_week_limit
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_challenge_count = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_challenge_day
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.OpenDate
  L3_2 = "UIText_Daily_Cocoon_Hint_"
  L4_2 = L2_2.Length
  L3_2 = L3_2 .. L4_2
  L4_2 = L2_2.Length
  if L4_2 == 3 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_challenge_day
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2
    L8_2 = A0_2
    L7_2 = A0_2._get_active_day_text
    L9_2 = L2_2[0]
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2._get_active_day_text
    L10_2 = L2_2[1]
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._get_active_day_text
    L11_2 = L2_2[2]
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L4_2 = L2_2.Length
    if L4_2 == 4 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_challenge_day
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2
      L8_2 = A0_2
      L7_2 = A0_2._get_active_day_text
      L9_2 = L2_2[0]
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2._get_active_day_text
      L10_2 = L2_2[1]
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2
      L9_2 = A0_2._get_active_day_text
      L11_2 = L2_2[2]
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = A0_2
      L10_2 = A0_2._get_active_day_text
      L12_2 = L2_2[3]
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1._setup_challenge_time = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L2_2 = L2_2.GetMultipleDropTypeByFarmType
  L3_2 = A1_2.FarmType
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.FarmType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FarmTypeConfig
  L4_2 = L4_2.NONE
  if L3_2 == L4_2 then
    L3_2 = A1_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MappingInfoType
    L4_2 = L4_2.ROGUE_ENTRANCE
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MultipleDropTypeConfig
      L2_2 = L3_2.ROGUE
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_double_reward_mark
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_double_reward_mark_rogue_chest
    if L3_2 ~= nil then
      goto lbl_38
    end
  end
  do return end
  ::lbl_38::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_double_reward_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_double_reward_mark_rogue_chest
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_theme_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_theme_mark_rogue
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L4_2 = L3_2.GetTopData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.Theme
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MultipleDropTypeConfig
  L6_2 = L6_2.ROGUE
  if L2_2 == L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_double_reward_mark_rogue_chest
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 == nil
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_theme_mark_rogue
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 ~= nil
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.double_reward_mark_rogue_chest_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L4_2.LabelText
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.theme_mark_rogue_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L4_2.LabelText
    L6_2(L7_2, L8_2)
    if L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.theme_mark_rogue_icon
      L9_2 = L5_2.IconPath
      L6_2(L7_2, L8_2, L9_2)
    end
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_double_reward_mark
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 == nil
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_theme_mark
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 ~= nil
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.double_reward_mark_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L4_2.LabelText
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.theme_mark_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L4_2.LabelText
    L6_2(L7_2, L8_2)
    if L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.theme_mark_icon
      L9_2 = L5_2.IconPath
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_desc_tip
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = L3_2.GetSignIconPath
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2.MappingInfoBannerText
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.icon_multiple_drop
  L11_2 = L6_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_description
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.special_bg
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2.Multiplier
  L10_2 = L10_2 == 3
  L8_2(L9_2, L10_2)
  L8_2 = G
  L8_2 = L8_2.MultipleDropUtils
  L8_2 = L8_2.setup_tips_num
  L9_2 = L2_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.text_multiple_drop_cur_num
  L11_2 = A0_2._binder
  L11_2 = L11_2.text_multiple_drop_total_num
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_theme_mark_banner
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L5_2 ~= nil
  L8_2(L9_2, L10_2)
  if L5_2 then
    L9_2 = A0_2
    L8_2 = A0_2._async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.theme_mark_banner_icon
    L11_2 = L5_2.IconPath
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._set_multiple_drop_tip = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_Daily_Cocoon_Weekly_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  return L2_2(L3_2)
end
L0_1._get_active_day_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._is_map_connection_mapping_info
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  if L1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MappingInfoConnectionExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2.entrance_id
    L6_2 = A0_2.param_data
    L6_2 = L6_2.map_icon_data
    L6_2 = L6_2.MappingInfoRow
    L6_2 = L6_2.ID
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2.TargetEntranceID
    L3_2 = L4_2.TargetMappingInfoID
  else
    L2_2 = A0_2.entrance_id
    L4_2 = A0_2.param_data
    L4_2 = L4_2.map_icon_data
    L4_2 = L4_2.MappingInfoRow
    L3_2 = L4_2.ID
  end
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoRow
  L4_2 = L4_2.EntranceID
  if 0 < L4_2 then
    L4_2 = A0_2.param_data
    L4_2 = L4_2.map_icon_data
    L4_2 = L4_2.MappingInfoRow
    L2_2 = L4_2.EntranceID
    L3_2 = 0
  end
  L5_2 = A0_2
  L4_2 = A0_2.get_blackboard
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.query
  L6_2 = "StoryLineID"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.StoryLineUtils
  L5_2 = L5_2.show_switch_line_check_on_demand
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L3_1
    L1_3 = L0_3
    L0_3 = L0_3.Transfer
    L2_3 = L2_2
    L3_3 = L3_2
    L4_3 = L4_2
    L5_3 = A0_2._dimension_id
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = true
    L1_3 = A0_2.param_data
    if L1_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.BigMapUtils
      L1_3 = L1_3.IsInCurrentScene
      L2_3 = L2_2
      L3_3 = A0_2.param_data
      L3_3 = L3_3.map_icon_data
      L3_3 = L3_3.DimensionID
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L0_3 = nil
      end
    end
    L1_3 = G
    L1_3 = L1_3.NotifyManager
    L1_3 = L1_3.notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.PlayerMapTelepot
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._on_mapping_info_btn_transfer_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.IsInCurrentScene
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_distance
    L1_2 = L1_2(L2_2)
    L2_2 = L5_1
    if L1_2 > L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_mapping_info_tracking
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.UIHideMappingInfoTrace
        L3_2 = A0_2.param_data
        L3_2 = L3_2.map_icon_data
        L1_2(L2_2, L3_2)
      else
        L2_1.TrackingMapMonsterData = nil
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.UIShowMappingInfoTrace
        L3_2 = A0_2.param_data
        L3_2 = L3_2.map_icon_data
        L1_2(L2_2, L3_2)
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.BigMapUtils
        L1_2 = L1_2.IsInRotatableRegion
        L2_2 = A0_2.entrance_id
        L3_2 = A0_2.param_data
        L3_2 = L3_2.map_icon_data
        L3_2 = L3_2.GroupID
        L4_2 = A0_2.param_data
        L4_2 = L4_2.map_icon_data
        L4_2 = L4_2.DimensionID
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if not L1_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.ConfirmDialogUtil
          L1_2 = L1_2.ShowOkCancelHint
          L2_2 = "UIText_MappingInfo_Dialog_Desc_TeleportToNearby_2"
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.TextID
          L3_2 = L3_2.empty
          function L4_2(A0_3)
            local L1_3, L2_3
            if A0_3 then
              L1_3 = A0_2
              L2_3 = L1_3
              L1_3 = L1_3._transfer_nearest_mapping_info_id
              L1_3(L2_3)
            end
          end
          L1_2(L2_2, L3_2, L4_2)
        end
      end
      L2_2 = A0_2
      L1_2 = A0_2._refresh_mapping_info_trace_btn
      L1_2(L2_2)
    else
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UICenterToastMessageTextID
      L3_2 = "UIText_MappingInfo_Track_Toast_TargetTooClose"
      L1_2(L2_2, L3_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_transfer_tips
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkCancelHint
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    function L5_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._transfer_nearest_mapping_info_id
        L1_3(L2_3)
      end
    end
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_mapping_info_btn_trace_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.IsStoryLine
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = "UIText_MazeMainPage_Dialog_TransferAndTrack"
    return L2_2
  else
    L2_2 = "UIText_StoryLine_Switch_Line_Confirm"
    return L2_2
  end
end
L0_1._get_transfer_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2.ID
  L2_2 = L4_1
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_show_train_visitor_reward_tip
    L1_2(L2_2)
  end
end
L0_1._try_show_red_dot_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TrainModule
  L2_2 = L1_2
  L1_2 = L1_2.HasUnclaimedCompensationReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_red_dot_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_red_dot_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityRedDot_Reward"
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_show_train_visitor_reward_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.TeamManager
    if L2_2 then
      L2_2 = L1_2.TeamManager
      L2_2 = L2_2.CurrentTeamLeader
    end
  end
  L3_2 = L2_2.UnityGO
  L3_2 = L3_2.transform
  L4_2 = L3_2.Position
  if not L4_2 then
    L4_2 = L3_2.position
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MapRotationUtils
  L5_2 = L5_2.LocalToWorld
  L6_2 = A0_2.param_data
  L6_2 = L6_2.map_icon_data
  L6_2 = L6_2.MapPosition
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2 - L5_2
  L6_2 = L6_2.magnitude
  return L6_2
end
L0_1._get_distance = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MapPropDef
  if L2_2 then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.MapPropDef
    L1_2 = L2_2.FarmCocoonID
  end
  L2_2 = 0 < L1_2
  return L2_2
end
L0_1._is_cocoon_mapping_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.is_teleport_unlock
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = nil
    L3_2 = A0_2
    L2_2 = A0_2.get_blackboard
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.query
    L4_2 = "SubMapID"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_nearest_teleport_id_by_sub_map
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.param_data
      L2_2 = L2_2.map_icon_data
      L2_2 = L2_2.NearestTeleportMappingInfoID
      if 0 < L2_2 then
        L2_2 = A0_2.param_data
        L2_2 = L2_2.map_icon_data
        L1_2 = L2_2.NearestTeleportMappingInfoID
      else
        L2_2 = G
        L2_2 = L2_2.MapUtil
        L2_2 = L2_2.try_get_nearest_teleport_id
        L3_2 = A0_2._target_layer
        L4_2 = A0_2._target_position
        L5_2 = A0_2._cur_map_layer_count
        L6_2 = A0_2._map_container_panel
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L1_2 = L2_2
      end
    end
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIShowMappingInfoTrace
    L4_2 = A0_2.param_data
    L4_2 = L4_2.map_icon_data
    L2_2(L3_2, L4_2)
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
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.TransferAndTraceMappingInfo
    L5_2 = A0_2.param_data
    L5_2 = L5_2.map_icon_data
    L6_2 = L1_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Mappinginfo_Teleport_UnlockDesc"
    L1_2(L2_2, L3_2)
  end
end
L0_1._transfer_nearest_mapping_info_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "SubMapID"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.SubMapConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.NearbyTeleportMappingInfoID
    if 0 < L3_2 then
      L3_2 = L2_2.NearbyTeleportMappingInfoID
      return L3_2
    else
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
      L4_2 = L2_1
      L5_2 = L4_2
      L4_2 = L4_2.GetBigMapData
      L6_2 = A0_2.entrance_id
      L7_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L6_2 = L4_2
      L5_2 = L4_2.GetNearestTeleportIDBySubMapID
      L7_2 = L1_2
      return L5_2(L6_2, L7_2)
    end
  end
end
L0_1._get_nearest_teleport_id_by_sub_map = L7_1
return
