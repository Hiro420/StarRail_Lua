local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapRogueDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = "UIText_Rogue_Score_Reward_Title"
L3_1 = "InfoText_RogueRelicBox_Title"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CDILNDGFPDB
  L4_2 = L0_1._on_cmd_get_rogue_info_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = {}
  A0_2._chest_reward_item_list = L2_2
  L2_2 = {}
  A0_2._score_reward_item_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_items_rogue_score
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = A0_2._on_score_reward_item_change
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_items_rogue_chest
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = A0_2._on_chest_reward_item_change
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mapping_info_rogue_view
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._score_reward_item_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._chest_reward_item_list
      L1_2 = #L1_2
      if 0 < L1_2 then
        L1_2 = {}
        L2_2 = {}
        L3_2 = L2_1
        L4_2 = L3_1
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L1_2.multi_drop_title = L2_2
        L2_2 = {}
        L3_2 = A0_2._score_reward_item_list
        L4_2 = A0_2._chest_reward_item_list
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L1_2.multi_drop_items = L2_2
        L2_2 = G
        L2_2 = L2_2.InventoryUtils
        L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
        L3_2 = L1_2
        L2_2(L3_2)
      else
        L1_2 = {}
        L2_2 = A0_2._score_reward_item_list
        L1_2.items = L2_2
        L2_2 = G
        L2_2 = L2_2.InventoryUtils
        L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
        L3_2 = L1_2
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_btn_game_pad_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  L3_2 = false
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueScoreRewardData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rogue_remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2.EndTimeStamp
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rogue_cur_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_rogue_max_score_and_reward_list
  L4_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 and 0 < L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_rogue
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_rogue_cur_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L1_2.Score
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_rogue_max_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_reward_panel_rogue_all
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_rogue
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_reward_panel_rogue_all
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = {}
  A0_2._score_reward_item_list = L4_2
  L4_2 = #L3_2
  if 0 < L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_reward_title_rogue_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_reward_panel_rogue_score
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.System
    L4_2 = L4_2.Collections
    L4_2 = L4_2.Generic
    L4_2 = L4_2.List
    L5_2 = CS
    L5_2 = L5_2.System
    L5_2 = L5_2.UInt32
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2()
    L5_2 = ipairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L11_2 = L4_2
      L10_2 = L4_2.Add
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L5_2 = G
    L5_2 = L5_2.RewardUtils
    L5_2 = L5_2.GetDistinctRewardTableByRewardList
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    A0_2._score_reward_item_table = L5_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_items_rogue_score
    L7_2 = L6_2
    L6_2 = L6_2.SetListItemCount
    L8_2 = A0_2._score_reward_item_table
    L8_2 = #L8_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_items_rogue_score
    L7_2 = L6_2
    L6_2 = L6_2.RefreshAllShownItem
    L6_2(L7_2)
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._score_reward_item_list
      L13_2 = L10_2.ItemID
      L11_2(L12_2, L13_2)
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.RogueModule
  L5_2 = L4_2
  L4_2 = L4_2.GetMaxDiffUnlockAreaData
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_reward_panel_rogue_chest
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.get_sorted_items_by_item_config_list
  L6_2 = L4_2.RogueAreaRow
  L6_2 = L6_2.MapDisplayItemList
  L5_2 = L5_2(L6_2)
  A0_2._chest_reward_item_table = L5_2
  L5_2 = A0_2._chest_reward_item_table
  if L5_2 ~= nil then
    L5_2 = A0_2._chest_reward_item_table
    L5_2 = #L5_2
    if L5_2 ~= 0 then
      goto lbl_198
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reward_panel_rogue_chest
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  do return end
  ::lbl_198::
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reward_panel_rogue_chest
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_reward_title_rogue_chest
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_1
  L5_2(L6_2, L7_2)
  L5_2 = {}
  A0_2._chest_reward_item_list = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_items_rogue_chest
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._chest_reward_item_table
  L7_2 = #L7_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_items_rogue_chest
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
  L5_2 = ipairs
  L6_2 = A0_2._chest_reward_item_table
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._chest_reward_item_list
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
end
L0_1._setup_mapping_info_rogue_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L4_2 = A1_2
  L3_2 = A1_2.GetMaxScore
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.GetCurScoreRewardRows
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = #L2_2
    L11_2 = L11_2 + 1
    L12_2 = L4_2[L8_2]
    L12_2 = L12_2.Reward
    L9_2(L10_2, L11_2, L12_2)
  end
  L5_2 = L3_2
  L6_2 = L2_2
  return L5_2, L6_2
end
L0_1._get_rogue_max_score_and_reward_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change_common
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._score_reward_item_table
  L8_2 = A0_2._is_show_count
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_score_reward_item_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change_common
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._chest_reward_item_table
  L8_2 = false
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_chest_reward_item_change = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
L0_1._on_reward_item_change_common = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.param_data
  if L1_2 then
    L1_2 = A0_2.param_data
    L1_2 = L1_2.map_icon_data
    if L1_2 then
      L1_2 = A0_2.param_data
      L1_2 = L1_2.map_icon_data
      L1_2 = L1_2.MappingInfoRow
      if L1_2 then
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
          L2_2 = A0_2
          L1_2 = A0_2._setup_mapping_info_rogue_view
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._on_cmd_get_rogue_info_sc_rsp = L4_1
return L0_1
