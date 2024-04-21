local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapMonsterTrackDetailPanel"
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
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.param_data = A1_2
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.EntranceID
  A0_2.entrance_id = L4_2
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
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_reward_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_Cocoon_RewardInfo"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_transfer
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
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
  L4_2 = A0_2._refresh_track_monster_info_trace_btn
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_btn_transfer_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_track_monster_info_btn_trace_click
  L1_2(L2_2)
end
L0_1._on_btn_trace_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.TrackingMapMonsterData
  if L1_2 then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    if L1_2 == L2_2 then
      L2_1.TrackingMapMonsterData = nil
      L3_2 = A0_2
      L2_2 = A0_2._refresh_track_monster_info_trace_btn
      L2_2(L3_2)
  end
  else
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.IsInCurrentScene
    if L2_2 then
      L2_2 = A0_2.param_data
      L2_2 = L2_2.map_icon_data
      L2_1.TrackingMapMonsterData = L2_2
      L3_2 = A0_2
      L2_2 = A0_2._refresh_track_monster_info_trace_btn
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.BigMapUtils
      L2_2 = L2_2.IsInRotatableRegion
      L3_2 = A0_2.entrance_id
      L4_2 = A0_2.param_data
      L4_2 = L4_2.map_icon_data
      L4_2 = L4_2.GroupID
      L5_2 = A0_2.param_data
      L5_2 = L5_2.map_icon_data
      L5_2 = L5_2.DimensionID
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.ConfirmDialogUtil
        L2_2 = L2_2.ShowOkCancelHint
        L3_2 = "UIText_MappingInfo_Dialog_Desc_TeleportToNearby_2"
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
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowOkCancelHint
      L3_2 = "UIText_MazeMainPage_Dialog_TransferAndTrack"
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
end
L0_1._on_track_monster_info_btn_trace_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.TrackingMapMonsterData
  if L1_2 then
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    if L2_2 == L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_trace
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_AdventureMissionPage_Tracked"
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_trace
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_AdventureMissionPage_StartTrack"
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_track_monster_info_trace_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.is_teleport_unlock
  L1_2 = L1_2()
  if L1_2 then
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
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
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
    L4_2 = L4_2.TransferAndTraceMonster
    L6_2 = A0_2.param_data
    L6_2 = L6_2.map_icon_data
    L7_2 = L2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
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
L0_1._transfer_nearest_mapping_info_id = L3_1
return L0_1
