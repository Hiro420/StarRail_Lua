local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapTeleportDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapMissionDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapMonsterTrackDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapBaseMappingInfoDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapRaidDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapChallengeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapRogueDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapWorldShopDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapActivityDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapDroneDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapRewardCollectionDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapOfferingRewardDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.MapActivityTelevisionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardFilter.DefaultRewardFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapSymbolDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._mission_trace_click_callback_obj = A1_2
  A0_2._mission_trace_click_callback_func = A2_2
  L3_2 = A0_2._map_mission_detail_panel
  if L3_2 then
    L3_2 = A0_2._map_mission_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.reg_mission_trace_click_call_back
    L5_2 = A0_2._mission_trace_click_callback_obj
    L6_2 = A0_2._mission_trace_click_callback_func
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.reg_mission_trace_click_call_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapTeleportDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_teleport_detail_panel = L1_2
  L1_2 = A0_2._map_teleport_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapMissionDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_mission_detail_panel = L1_2
  L1_2 = A0_2._map_mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_mission_trace_click_call_back
  L3_2 = A0_2._mission_trace_click_callback_obj
  L4_2 = A0_2._mission_trace_click_callback_func
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapBaseMappingInfoDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_base_mapping_info_detail_panel = L1_2
  L1_2 = A0_2._map_base_mapping_info_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapMonsterTrackDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_monster_track_detail_panel = L1_2
  L1_2 = A0_2._map_monster_track_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapRaidDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_raid_detail_panel = L1_2
  L1_2 = A0_2._map_raid_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapChallengeDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_challenge_detail_panel = L1_2
  L1_2 = A0_2._map_challenge_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapRogueDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_rogue_detail_panel = L1_2
  L1_2 = A0_2._map_rogue_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapWorldShopDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_world_shop_detail_panel = L1_2
  L1_2 = A0_2._map_world_shop_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapActivityDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_activity_detail_panel = L1_2
  L1_2 = A0_2._map_activity_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapDroneDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_drone_detail_panel = L1_2
  L1_2 = A0_2._map_drone_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapRewardCollectionDetailPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_reward_collection_detail_panel = L1_2
  L1_2 = A0_2._map_reward_collection_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapActivityTelevisionPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._activity_television_detail_panel = L1_2
  L1_2 = A0_2._activity_television_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsObjectNull
  L5_2 = A1_2.icon_game_object
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
    A0_2.param_data = A1_2
    A0_2._cur_map_layer_count = A2_2
    A0_2._map_container_panel = A3_2
    L4_2 = A0_2.param_data
    L4_2 = L4_2.map_icon_data
    L4_2 = L4_2.EntranceID
    A0_2.entrance_id = L4_2
    L4_2 = A0_2.param_data
    L4_2 = L4_2.icon_game_object
    if L4_2 then
      L4_2 = A0_2.param_data
      L4_2 = L4_2.icon_game_object
      L4_2 = L4_2.transform
      L4_2 = L4_2.localPosition
    end
    A0_2._local_position = L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_detail_view
    L4_2(L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_transfer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_btn_transfer_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_schedule_list_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sub_mission_target
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_red_dot_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_prestige
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_desc_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_challenge_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_double_reward_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_double_reward_mark_rogue_chest
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_theme_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_theme_mark_rogue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.special_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel_rogue_all
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_collection_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_offering_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_television_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_tip_trace
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_MapDetailPanel_Btn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_trace
  L1_2.interactable = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_btn_game_pad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.param_data
  L1_2 = L1_2.show_type
  L2_2 = MapIconShowType
  L2_2 = L2_2.Teleport
  if L1_2 == L2_2 then
    L1_2 = A0_2._map_teleport_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2.param_data
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.param_data
    L1_2 = L1_2.show_type
    L2_2 = MapIconShowType
    L2_2 = L2_2.Mission
    if L1_2 == L2_2 then
      L1_2 = A0_2._map_mission_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2.param_data
      L4_2 = A0_2._cur_map_layer_count
      L5_2 = A0_2._map_container_panel
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2.param_data
      L1_2 = L1_2.show_type
      L2_2 = MapIconShowType
      L2_2 = L2_2.TrackMonster
      if L1_2 == L2_2 then
        L1_2 = A0_2._map_base_mapping_info_detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2.param_data
        L4_2 = A0_2._cur_map_layer_count
        L5_2 = A0_2._map_container_panel
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = A0_2._map_monster_track_detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2.param_data
        L4_2 = A0_2._cur_map_layer_count
        L5_2 = A0_2._map_container_panel
        L1_2(L2_2, L3_2, L4_2, L5_2)
      else
        L1_2 = A0_2.param_data
        L1_2 = L1_2.show_type
        L2_2 = MapIconShowType
        L2_2 = L2_2.MappingInfo
        if L1_2 == L2_2 then
          L1_2 = A0_2._map_base_mapping_info_detail_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_view
          L3_2 = A0_2.param_data
          L4_2 = A0_2._cur_map_layer_count
          L5_2 = A0_2._map_container_panel
          L1_2(L2_2, L3_2, L4_2, L5_2)
          L2_2 = A0_2
          L1_2 = A0_2._setup_mapping_info_view_by_type
          L1_2(L2_2)
        end
      end
    end
  end
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
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_btn_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_detail_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoType
  L2_2 = L2_2.CHALLENGE_ENTRANCE
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.param_data
    L1_2 = L1_2.map_icon_data
    L1_2 = L1_2.MappingInfoRow
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MappingInfoType
    L2_2 = L2_2.CHALLENGE_STORY
    if L1_2 ~= L2_2 then
      goto lbl_28
    end
  end
  L1_2 = A0_2._map_challenge_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.param_data
  L1_2(L2_2, L3_2)
  goto lbl_202
  ::lbl_28::
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoType
  L2_2 = L2_2.ROGUE_ENTRANCE
  if L1_2 == L2_2 then
    L1_2 = A0_2._map_rogue_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2.param_data
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.param_data
    L1_2 = L1_2.map_icon_data
    L1_2 = L1_2.MappingInfoRow
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MappingInfoType
    L2_2 = L2_2.RAID_ENTRANCE
    if L1_2 == L2_2 then
      L1_2 = A0_2._map_raid_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2.param_data
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.param_data
      L1_2 = L1_2.map_icon_data
      L1_2 = L1_2.MappingInfoRow
      L1_2 = L1_2.Type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MappingInfoType
      L2_2 = L2_2.WORLD_SHOP_ENTRANCE
      if L1_2 == L2_2 then
        L1_2 = A0_2._map_world_shop_detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2.param_data
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2.param_data
        L1_2 = L1_2.map_icon_data
        L1_2 = L1_2.MappingInfoRow
        L1_2 = L1_2.Type
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.MappingInfoType
        L2_2 = L2_2.ACTIVITY_ENTRANCE
        if L1_2 == L2_2 then
          L1_2 = A0_2._map_activity_detail_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_view
          L3_2 = A0_2.param_data
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2.param_data
          L1_2 = L1_2.map_icon_data
          L1_2 = L1_2.MappingInfoRow
          L1_2 = L1_2.Type
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.MappingInfoType
          L2_2 = L2_2.HELIOBUS_CHALLENGE
          if L1_2 == L2_2 then
            L1_2 = A0_2._map_challenge_detail_panel
            L2_2 = L1_2
            L1_2 = L1_2.setup_view
            L3_2 = A0_2.param_data
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2.param_data
            L1_2 = L1_2.map_icon_data
            L1_2 = L1_2.MappingInfoRow
            L1_2 = L1_2.Type
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.GameCore
            L2_2 = L2_2.MappingInfoType
            L2_2 = L2_2.HELIOBUS_RAID
            if L1_2 == L2_2 then
              L1_2 = A0_2._map_raid_detail_panel
              L2_2 = L1_2
              L1_2 = L1_2.setup_view
              L3_2 = A0_2.param_data
              L1_2(L2_2, L3_2)
            else
              L1_2 = A0_2.param_data
              L1_2 = L1_2.map_icon_data
              L1_2 = L1_2.MappingInfoRow
              L1_2 = L1_2.Type
              L2_2 = CS
              L2_2 = L2_2.RPG
              L2_2 = L2_2.GameCore
              L2_2 = L2_2.MappingInfoType
              L2_2 = L2_2.DRONE_ENTRANCE
              if L1_2 == L2_2 then
                L1_2 = A0_2._map_drone_detail_panel
                L2_2 = L1_2
                L1_2 = L1_2.setup_view
                L3_2 = A0_2.param_data
                L1_2(L2_2, L3_2)
              else
                L1_2 = A0_2.param_data
                L1_2 = L1_2.map_icon_data
                L1_2 = L1_2.MappingInfoRow
                L1_2 = L1_2.Type
                L2_2 = CS
                L2_2 = L2_2.RPG
                L2_2 = L2_2.GameCore
                L2_2 = L2_2.MappingInfoType
                L2_2 = L2_2.REWARD_COLLECTION
                if L1_2 == L2_2 then
                  L1_2 = A0_2._map_reward_collection_detail_panel
                  L2_2 = L1_2
                  L1_2 = L1_2.setup_view
                  L3_2 = A0_2.param_data
                  L1_2(L2_2, L3_2)
                else
                  L1_2 = A0_2.param_data
                  L1_2 = L1_2.map_icon_data
                  L1_2 = L1_2.MappingInfoRow
                  L1_2 = L1_2.Type
                  L2_2 = CS
                  L2_2 = L2_2.RPG
                  L2_2 = L2_2.GameCore
                  L2_2 = L2_2.MappingInfoType
                  L2_2 = L2_2.ACTIVITY_TELEVISION
                  if L1_2 == L2_2 then
                    L1_2 = A0_2._activity_television_detail_panel
                    L2_2 = L1_2
                    L1_2 = L1_2.setup_view
                    L3_2 = A0_2.param_data
                    L1_2(L2_2, L3_2)
                  else
                    L1_2 = A0_2.param_data
                    L1_2 = L1_2.map_icon_data
                    L1_2 = L1_2.MappingInfoRow
                    L1_2 = L1_2.Type
                    L2_2 = CS
                    L2_2 = L2_2.RPG
                    L2_2 = L2_2.GameCore
                    L2_2 = L2_2.MappingInfoType
                    L2_2 = L2_2.OFFERING_REWARD
                    if L1_2 == L2_2 then
                      L1_2 = A0_2._map_offering_reward_panel
                      if L1_2 == nil then
                        L2_2 = A0_2
                        L1_2 = A0_2.create_panel
                        L3_2 = G
                        L3_2 = L3_2.MapOfferingRewardDetailPanel
                        L4_2 = G
                        L4_2 = L4_2.MapSymbolDetailPanelBinder
                        L1_2 = L1_2(L2_2, L3_2, L4_2)
                        A0_2._map_offering_reward_panel = L1_2
                        L1_2 = A0_2._map_offering_reward_panel
                        L2_2 = L1_2
                        L1_2 = L1_2.bind
                        L3_2 = A0_2._binder
                        L3_2 = L3_2.root
                        L1_2(L2_2, L3_2)
                      end
                      L1_2 = A0_2._map_offering_reward_panel
                      L2_2 = L1_2
                      L1_2 = L1_2.setup_view
                      L3_2 = A0_2.param_data
                      L1_2(L2_2, L3_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_202::
end
L0_1._setup_mapping_info_view_by_type = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_btn_game_pad_click = L1_1
return L0_1
