local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapRaidProgressItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapRaidProgressItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapRaidDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_raid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ghost_fire_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_progress
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = A0_2._on_progress_info_changed
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_progress
  L3_2 = L2_2
  L2_2 = L2_2.ClearAll
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MappingInfoType
  L3_2 = L3_2.RAID_ENTRANCE
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_mapping_info_raid_view
    L2_2(L3_2)
  else
    L2_2 = A0_2.param_data
    L2_2 = L2_2.map_icon_data
    L2_2 = L2_2.MappingInfoRow
    L2_2 = L2_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MappingInfoType
    L3_2 = L3_2.HELIOBUS_RAID
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_mapping_info_heliobus_raid_view
      L2_2(L3_2)
    end
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
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
L0_1._on_btn_game_pad_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_challenge
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
  L1_2 = L1_2.node_progress_rogue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_raid_progress_data_list
  L1_2 = L1_2(L2_2)
  A0_2._raid_progress_data_list = L1_2
  L1_2 = A0_2._raid_progress_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_raid
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_progress
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._raid_progress_data_list
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_progress
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_raid
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_mapping_info_raid_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.ShowType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MappingInfoShowType
  L4_2 = L4_2.Prop
  if L3_2 == L4_2 then
    L3_2 = A0_2.param_data
    L3_2 = L3_2.map_icon_data
    L3_2 = L3_2.MapPropDef
    L2_2 = L3_2.RaidID
  else
    L3_2 = A0_2.param_data
    L3_2 = L3_2.map_icon_data
    L3_2 = L3_2.MapNpcDef
    L2_2 = L3_2.RaidID
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetTreasureChallengeValidLevels
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = L3_2.Count
  if 0 < L5_2 then
    L5_2 = 0
    L6_2 = L3_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2[L8_2]
      L10_2 = {}
      L10_2.level = L9_2
      L11_2 = L1_1
      L12_2 = L11_2
      L11_2 = L11_2.IsTreasureChallengeCompleted
      L13_2 = L2_2
      L14_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.is_level_completed = L11_2
      L11_2 = L1_1
      L12_2 = L11_2
      L11_2 = L11_2.IsTreasureChallengeLevelLocked
      L13_2 = L2_2
      L14_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.is_locked = L11_2
      L11_2 = L1_1
      L12_2 = L11_2
      L11_2 = L11_2.GetTreasureRewardDisplayDatas
      L13_2 = L2_2
      L14_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.rewards = L11_2
      L10_2.raidID = L2_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L1_2
      L14_2 = L10_2
      L12_2(L13_2, L14_2)
      L12_2 = L10_2.is_level_completed
      if L12_2 == false and L11_2 then
        L12_2 = G
        L12_2 = L12_2.RewardUtils
        L12_2 = L12_2.get_sorted_items_by_item_config_list
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = ipairs
        L14_2 = L12_2
        L13_2, L14_2, L15_2 = L13_2(L14_2)
        for L16_2, L17_2 in L13_2, L14_2, L15_2 do
          L18_2 = L17_2.ItemID
          L4_2[L18_2] = true
        end
      end
    end
  end
  L5_2 = {}
  A0_2._reward_item_list = L5_2
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._reward_item_list
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
  end
  return L1_2
end
L0_1._get_raid_progress_data_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_challenge
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
  L1_2 = L1_2.node_progress_rogue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_trace
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_heliobus_raid_data_list
  L1_2 = L1_2(L2_2)
  A0_2._raid_progress_data_list = L1_2
  L1_2 = A0_2._raid_progress_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_raid
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_progress
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._raid_progress_data_list
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_progress
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_raid
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._heliobus_raid_show_reddot
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_red_dot_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_red_dot_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityRedDot_New"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_mapping_info_heliobus_raid_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.HeliobusModule
  if L2_2 == nil then
    L3_2 = {}
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetNewUnlockChallengeRaidLevel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Count
  L4_2 = 0 < L4_2
  A0_2._heliobus_raid_show_reddot = L4_2
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.HeliobusChallengeRaidExcelTable
  L5_2 = L5_2.GetEnumerator
  L5_2 = L5_2()
  while true do
    L7_2 = L5_2
    L6_2 = L5_2.MoveNext
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      break
    end
    L6_2 = L5_2.Current
    L7_2 = L6_2.RaidID
    L8_2 = {}
    L8_2.level = 0
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.IsTreasureChallengeCompleted
    L11_2 = L7_2
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.is_level_completed = L9_2
    L9_2 = L2_1
    L10_2 = L9_2
    L9_2 = L9_2.TryGetQuestData
    L11_2 = L6_2.UnlockQuestID
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.Status
    L11_2 = CS
    L11_2 = L11_2.BLHLCHNAJKK
    L11_2 = L11_2.CDJHHIHBNMN
    L11_2 = L10_2 ~= L11_2
    L8_2.is_locked = L11_2
    L11_2 = L1_1
    L12_2 = L11_2
    L11_2 = L11_2.GetTreasureRewardDisplayDatas
    L13_2 = L7_2
    L14_2 = 0
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L8_2.rewards = L11_2
    L8_2.raidID = L7_2
    L8_2.IsHeliobusRaid = true
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L1_2
    L14_2 = L8_2
    L12_2(L13_2, L14_2)
    L12_2 = L8_2.is_level_completed
    if L12_2 == false and L11_2 then
      L12_2 = G
      L12_2 = L12_2.RewardUtils
      L12_2 = L12_2.get_sorted_items_by_item_config_list
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = ipairs
      L14_2 = L12_2
      L13_2, L14_2, L15_2 = L13_2(L14_2)
      for L16_2, L17_2 in L13_2, L14_2, L15_2 do
        L18_2 = L17_2.ItemID
        L4_2[L18_2] = true
      end
    end
  end
  L6_2 = {}
  A0_2._reward_item_list = L6_2
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._reward_item_list
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
  end
  return L1_2
end
L0_1._get_heliobus_raid_data_list = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MapRaidProgressItem
    L8_2 = G
    L8_2 = L8_2.MapRaidProgressItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._raid_progress_data_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_progress_info_changed = L3_1
return
