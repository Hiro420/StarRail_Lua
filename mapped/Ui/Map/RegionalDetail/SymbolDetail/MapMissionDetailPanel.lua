local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardFilter.DefaultRewardFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapMissionDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TransferModule
L2_1 = G
L2_1 = L2_1.MapModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.BigMapModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.PlayerModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.StoryLineModule
function L6_1(A0_2)
  local L1_2
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._mission_trace_click_callback_obj = A1_2
  A0_2._mission_trace_click_callback_func = A2_2
end
L0_1.reg_mission_trace_click_call_back = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
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
  L6_2 = "UIText_AdventurePrize_Info"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_items
  L5_2 = L4_2
  L4_2 = L4_2.init
  L6_2 = A0_2
  L7_2 = 0
  L8_2 = A0_2._on_reward_item_change
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_mission_view
  L4_2(L5_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.is_teleport_unlock
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_mission_btn_transfer_click
    L1_2(L2_2)
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
L0_1._on_btn_transfer_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_mission_btn_trace_click
  L1_2(L2_2)
end
L0_1._on_btn_trace_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
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
L0_1._on_btn_game_pad_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_is_can_transfer
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_map_connection_mapping_info
    L2_2 = L2_2(L3_2)
    L3_2 = nil
    L4_2 = nil
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MappingInfoExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2.param_data
    L6_2 = L6_2.map_icon_data
    L6_2 = L6_2.MappingInfoID
    L7_2 = L4_1.PlayerData
    L7_2 = L7_2.WorldLevel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 == nil then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MappingInfoExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2.param_data
      L7_2 = L7_2.map_icon_data
      L7_2 = L7_2.MappingInfoID
      L8_2 = 0
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    end
    if L2_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MappingInfoConnectionExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2.entrance_id
      L8_2 = A0_2.param_data
      L8_2 = L8_2.map_icon_data
      L8_2 = L8_2.MappingInfoID
      L6_2 = L6_2(L7_2, L8_2)
      L3_2 = L6_2.TargetEntranceID
      L4_2 = L6_2.TargetMappingInfoID
    else
      L3_2 = A0_2.entrance_id
      L4_2 = L5_2.ID
    end
    L6_2 = L5_2.EntranceID
    if 0 < L6_2 then
      L3_2 = L5_2.EntranceID
      L4_2 = 0
    end
    L6_2 = G
    L6_2 = L6_2.StoryLineUtils
    L6_2 = L6_2.show_switch_line_check_on_demand
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.Transfer
      L2_3 = L3_2
      L3_3 = L4_2
      L4_3 = L1_2
      L5_3 = A0_2._dimension_id
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L8_2 = L1_2
    L6_2(L7_2, L8_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._teleport_to_neighbouring
    L2_2(L3_2)
  end
end
L0_1._on_mission_btn_transfer_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._try_temp_teleport_by_mission_id
      L1_3 = L1_3(L2_3)
      if L1_3 then
        return
      end
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.get_blackboard
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3
      L1_3 = L1_3.query
      L3_3 = "SubMapID"
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = 0
      end
      L2_3 = G
      L2_3 = L2_3.MapUtil
      L2_3 = L2_3.try_get_nearest_teleport_id
      L3_3 = A0_2._target_layer
      L4_3 = A0_2._target_position
      L5_3 = A0_2._cur_map_layer_count
      L6_3 = A0_2._map_container_panel
      L7_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.get_blackboard
      L3_3 = L3_3(L4_3)
      L4_3 = L3_3
      L3_3 = L3_3.query
      L5_3 = "StoryLineID"
      L3_3 = L3_3(L4_3, L5_3)
      if 0 < L2_3 then
        L4_3 = L1_1
        L5_3 = L4_3
        L4_3 = L4_3.Transfer
        L6_3 = A0_2.entrance_id
        L7_3 = L2_3
        L8_3 = L3_3
        L9_3 = A0_2._dimension_id
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
      else
        L4_3 = G
        L4_3 = L4_3.NotifyManager
        L4_3 = L4_3.notify
        L5_3 = G
        L5_3 = L5_3.CS
        L5_3 = L5_3.NotifyType
        L5_3 = L5_3.UIPileToastMessageTextID
        L6_3 = "UIText_MappingInfo_Track_Toast_NoTeleportNearby"
        L4_3(L5_3, L6_3)
      end
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._teleport_to_neighbouring = L6_1
function L6_1(A0_2)
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
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.IsStoryLine
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = "UIText_MappingInfo_Dialog_Desc_TeleportToNearby"
    return L2_2
  else
    L2_2 = "UIText_StoryLine_Switch_Line_Confirm"
    return L2_2
  end
end
L0_1._get_transfer_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoID
  if 0 < L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MappingInfoExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L4_2 = L4_1.PlayerData
    L4_2 = L4_2.WorldLevel
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MappingInfoExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L1_2
      L5_2 = 0
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    if L2_2 ~= nil then
      L3_2 = L2_2.IsTeleport
      if not L3_2 then
        L3_2 = L2_2.EntranceID
        L3_2 = 0 < L3_2
      end
      return L3_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_can_transfer = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.IsTraceSubMission
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.SubMissionData
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.MutuallySetTrackingMission
    L3_2 = 0
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.MutuallySetTrackingMission
    L3_2 = A0_2.param_data
    L3_2 = L3_2.map_icon_data
    L3_2 = L3_2.SubMissionData
    L3_2 = L3_2.Row
    L3_2 = L3_2.MainMissionID
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_trace_btn
  L1_2(L2_2)
  L1_2 = A0_2._mission_trace_click_callback_func
  if L1_2 then
    L1_2 = A0_2._mission_trace_click_callback_func
    L2_2 = A0_2._mission_trace_click_callback_obj
    L3_2 = A0_2.entrance_id
    L4_2 = A0_2.param_data
    L4_2 = L4_2.map_icon_data
    L4_2 = L4_2.SubMissionData
    L4_2 = L4_2.Row
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnMapMissionTraceChange
  L1_2(L2_2)
end
L0_1._on_mission_btn_trace_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
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
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.SubMissionData
  L4_2 = L4_2.Row
  L4_2 = L4_2.MainMissionID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.exit
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentGameModeType
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameModeType
  L4_2 = L4_2.AetherDivide
  L4_2 = L3_2 == L4_2
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.IsStoryLine
  L7_2 = L1_2
  L5_2 = not L4_2 and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_refresh_time
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_sub_mission_target
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_transfer
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_trace
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.in_control_tip_trace
  L7_2 = L6_2
  L6_2 = L6_2.SetInControlTipKey
  L8_2 = "Menu_UnchangeX"
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._check_is_can_transfer
  L6_2 = L6_2(L7_2)
  if L6_2 == false then
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_transfer
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_MappingInfo_Btn_Goto"
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2.param_data
  L6_2 = L6_2.map_icon_data
  L6_2 = L6_2.SubMissionData
  L6_2 = L6_2.Row
  L6_2 = L6_2.TargetText
  L8_2 = L6_2
  L7_2 = L6_2.IsEmpty
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L8_2 = L2_2
    L7_2 = L2_2.GetSubMissionGroups
    L7_2 = L7_2(L8_2)
    A0_2._submission_group_list = L7_2
    L7_2 = A0_2._submission_group_list
    L7_2 = L7_2.Count
    if 0 < L7_2 then
      L7_2 = A0_2._submission_group_list
      L7_2 = L7_2[0]
      L6_2 = L7_2.HintText
    end
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_sub_mission_target
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_desc
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reward_panel
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.param_data
  L7_2 = L7_2.map_icon_data
  L7_2 = L7_2.MapIconType
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.MiniMapIconExcelTable
  L8_2 = L8_2.GetData
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L9_2 = L8_2.IconPath
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._async_load_sprite_to
      L11_2 = A0_2._binder
      L11_2 = L11_2.image_title
      L12_2 = L8_2.IconPath
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_title
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetTextID
  L11_2 = L2_2.Row
  L11_2 = L11_2.Name
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.param_data
  L9_2 = L9_2.map_icon_data
  L9_2 = L9_2.SubMissionData
  L9_2 = L9_2.Row
  L9_2 = L9_2.DescrptionText
  L11_2 = L9_2
  L10_2 = L9_2.IsEmpty
  L10_2 = L10_2(L11_2)
  if L10_2 then
    L10_2 = A0_2._submission_group_list
    if not L10_2 then
      L11_2 = L2_2
      L10_2 = L2_2.GetSubMissionGroups
      L10_2 = L10_2(L11_2)
    end
    A0_2._submission_group_list = L10_2
    L10_2 = A0_2._submission_group_list
    L10_2 = L10_2.Count
    if 0 < L10_2 then
      L10_2 = A0_2._submission_group_list
      L10_2 = L10_2[0]
      L9_2 = L10_2.Description
    end
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.text_desc
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetTextID
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2.reward_filter
  if not L10_2 then
    L10_2 = G
    L10_2 = L10_2.New
    L11_2 = G
    L11_2 = L11_2.DefaultRewardFilter
    L10_2 = L10_2(L11_2)
  end
  A0_2.reward_filter = L10_2
  L10_2 = G
  L10_2 = L10_2.RewardUtils
  L10_2 = L10_2.CreateRewardItemTableSortedWithFilter
  L11_2 = L2_2.Row
  L11_2 = L11_2.DisplayRewardID
  L12_2 = {}
  L13_2 = A0_2.reward_filter
  L12_2[1] = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2._refresh_mission_reward
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2._refresh_mission_trace_btn
  L11_2(L12_2)
  L11_2 = {}
  A0_2._reward_item_list = L11_2
  L11_2 = ipairs
  L12_2 = L10_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = A0_2._reward_item_list
    L18_2 = L15_2.ItemID
    L16_2(L17_2, L18_2)
  end
  A0_2._submission_group_list = nil
end
L0_1._setup_mission_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._reward_item_table = L2_2
  L2_2 = A0_2._reward_item_table
  L2_2 = #L2_2
  if L2_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
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
  end
end
L0_1._refresh_mission_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.IsTraceSubMission
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.SubMissionData
  L2_2 = L2_2.Row
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
L0_1._refresh_mission_trace_btn = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change_common
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._reward_item_table
  L8_2 = true
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_reward_item_change = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
L0_1._on_reward_item_change_common = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoConnectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.entrance_id
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MappingInfoExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2
    L5_2 = L4_1.PlayerData
    L5_2 = L5_2.WorldLevel
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MappingInfoExcelTable
      L4_2 = L4_2.GetData
      L5_2 = L1_2
      L6_2 = 0
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
    L4_2 = L3_2.IsTeleport
    if not L4_2 then
      L4_2 = L3_2.EntranceID
      L4_2 = 0 < L4_2
    end
    return L4_2
  end
  L3_2 = false
  return L3_2
end
L0_1._is_map_connection_mapping_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.SubMissionData
  L1_2 = L1_2.ID
  if L1_2 == 802220101 then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.query
    L3_2 = "SubMapID"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = 0
    end
    L2_2 = G
    L2_2 = L2_2.MapUtil
    L2_2 = L2_2.try_get_nearest_teleport_id
    L3_2 = A0_2._target_layer
    L4_2 = A0_2._target_position
    L5_2 = A0_2._cur_map_layer_count
    L6_2 = A0_2._map_container_panel
    L7_2 = L1_2
    L8_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.query
    L5_2 = "StoryLineID"
    L3_2 = L3_2(L4_2, L5_2)
    if 0 < L2_2 then
      L4_2 = L1_1
      L5_2 = L4_2
      L4_2 = L4_2.Transfer
      L6_2 = A0_2.entrance_id
      L7_2 = L2_2
      L8_2 = L3_2
      L9_2 = A0_2._dimension_id
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    else
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = "UIText_MappingInfo_Track_Toast_NoTeleportNearby"
      L4_2(L5_2, L6_2)
    end
    L4_2 = true
    return L4_2
  end
  L1_2 = false
  return L1_2
end
L0_1._try_temp_teleport_by_mission_id = L6_1
return
