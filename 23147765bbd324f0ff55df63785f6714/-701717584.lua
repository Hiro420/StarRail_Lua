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
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MapChallengeDetailPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Map.RegionalDetail.SymbolDetail.Challenge.MapChallengeDetailItemPanel"
  L6_2 = "Ui.Map.RegionalDetail.SymbolDetail.Challenge.MapChallengeDetailItemPanelBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._panel_challenge_list = L1_2
  L1_2 = A0_2._panel_challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_schedule_list_root
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
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
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MappingInfoType
  L3_2 = L3_2.CHALLENGE_ENTRANCE
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_mapping_info_challenge_view
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
    L3_2 = L3_2.CHALLENGE_STORY
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_mapping_info_challenge_story_view
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
      L3_2 = L3_2.HELIOBUS_CHALLENGE
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_mapping_info_heliobus_challenge_view
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._bind_btn_callback
        L4_2 = A0_2._binder
        L4_2 = L4_2.btn_game_pad
        L5_2 = A0_2._on_btn_game_pad_click
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
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
L1_1._on_btn_game_pad_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L1_2 = L1_2.node_progress_rogue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableScheduleChallengeGroupDataList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = L1_2[1]
      L3_2 = L2_2
      L2_2 = L2_2.IsAvailable
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = table
        L2_2 = L2_2.sort
        L3_2 = L1_2
        function L4_2(A0_3, A1_3)
          local L2_3, L3_3
          L2_3 = A0_3.ID
          L3_3 = A1_3.ID
          L2_3 = L2_3 > L3_3
          return L2_3
        end
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_text_title
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.safe_set_active
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_progress_challenge_lock
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_reward_panel
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.get_panel_by_index
        L4_2 = 1
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L4_2 = L2_2
          L3_2 = L2_2.set_show_title
          L5_2 = true
          L6_2 = "UIText_MappingInfo_Latest"
          L3_2(L4_2, L5_2, L6_2)
          L4_2 = L2_2
          L3_2 = L2_2.set_show_remain_timer
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
        L3_2 = 2
        L4_2 = #L1_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = A0_2._panel_challenge_list
          L8_2 = L7_2
          L7_2 = L7_2.get_panel_by_index
          L9_2 = L6_2
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 ~= nil then
            L9_2 = L7_2
            L8_2 = L7_2.set_show_title
            L10_2 = L6_2 == 2
            L11_2 = "UIText_MappingInfo_TimeCountDown"
            L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2
            L8_2 = L7_2.set_show_remain_timer
            L10_2 = true
            L8_2(L9_2, L10_2)
          end
        end
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_ModuleManager
        L3_2 = L3_2.ChallengeModule
        L4_2 = L3_2
        L3_2 = L3_2.HasNewScheduleMemoryGroupUnlock
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.node_red_dot_tip
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetActive
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._binder
          L3_2 = L3_2.text_red_dot_tip
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetTextID
          L5_2 = "UIText_ActivityAlley_Airline_NewContentTitle"
          L3_2(L4_2, L5_2)
        end
    end
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_challenge_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_progress_challenge_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_challenge_lock_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Handbook_MazeTitle02"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_challenge_lock_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.ChallengeUtils
    L4_2 = L4_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips
    L4_2 = L4_2()
    L5_2 = G
    L5_2 = L5_2.ChallengeUtils
    L5_2 = L5_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips_param
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L1_1._setup_mapping_info_challenge_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L1_2 = L1_2.node_progress_rogue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableStoryGroupData
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = L1_2[1]
      L3_2 = L2_2
      L2_2 = L2_2.IsAvailable
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = table
        L2_2 = L2_2.sort
        L3_2 = L1_2
        function L4_2(A0_3, A1_3)
          local L2_3, L3_3
          L2_3 = A0_3.ID
          L3_3 = A1_3.ID
          L2_3 = L2_3 > L3_3
          return L2_3
        end
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_text_title
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.safe_set_active
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_progress_challenge_lock
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_reward_panel
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._panel_challenge_list
        L3_2 = L2_2
        L2_2 = L2_2.get_panel_by_index
        L4_2 = 1
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L4_2 = L2_2
          L3_2 = L2_2.set_show_title
          L5_2 = true
          L6_2 = "UIText_MappingInfo_Latest"
          L3_2(L4_2, L5_2, L6_2)
          L4_2 = L2_2
          L3_2 = L2_2.set_show_remain_timer
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
        L3_2 = 2
        L4_2 = #L1_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = A0_2._panel_challenge_list
          L8_2 = L7_2
          L7_2 = L7_2.get_panel_by_index
          L9_2 = L6_2
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 ~= nil then
            L9_2 = L7_2
            L8_2 = L7_2.set_show_title
            L10_2 = L6_2 == 2
            L11_2 = "UIText_MappingInfo_TimeCountDown"
            L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2
            L8_2 = L7_2.set_show_remain_timer
            L10_2 = true
            L8_2(L9_2, L10_2)
          end
        end
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_ModuleManager
        L3_2 = L3_2.ChallengeModule
        L4_2 = L3_2
        L3_2 = L3_2.HasNewStoryChallengeGroup
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.node_red_dot_tip
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetActive
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._binder
          L3_2 = L3_2.text_red_dot_tip
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetTextID
          L5_2 = "UIText_ActivityAlley_Airline_NewContentTitle"
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L1_1._setup_mapping_info_challenge_story_view = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._get_heliobus_challenge_progress_data_list
  L1_2 = L1_2(L2_2)
  A0_2._heliobus_challenge_progress_data_list = L1_2
  L1_2 = A0_2._heliobus_challenge_progress_data_list
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
    L3_2 = A0_2._heliobus_challenge_progress_data_list
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
  L1_2 = A0_2._heliobus_challenge_show_reddot
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
L1_1._setup_mapping_info_heliobus_challenge_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  A0_2._heliobus_challenge_show_reddot = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.HeliobusModule
  if L1_2 == nil then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MapPropDef
  L3_2 = L3_2.MapCustomParameter
  if L3_2 == nil then
    L4_2 = {}
    return L4_2
  end
  L4_2 = L3_2.ChallengeID
  if L4_2 == nil or L4_2 == 0 then
    L5_2 = {}
    return L5_2
  end
  L6_2 = L1_2
  L5_2 = L1_2.GetNewUnlockChallengeGroupLevel
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.ContainsKey
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = L5_2[L4_2]
    L7_2 = L6_2.Count
    L7_2 = 0 < L7_2
    A0_2._heliobus_challenge_show_reddot = L7_2
  end
  L6_2 = {}
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.create_lua_table_from_cs_list
  L9_2 = L1_2
  L8_2 = L1_2.GetChallengeGroup
  L10_2 = L4_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = 1
  L9_2 = #L7_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L7_2[L11_2]
    L13_2 = {}
    L14_2 = L11_2 - 1
    L13_2.level = L14_2
    L14_2 = L12_2.IsChallengeFinished
    L13_2.is_level_completed = L14_2
    L14_2 = L11_2 - 1
    L14_2 = L7_2[L14_2]
    L14_2 = L14_2.IsChallengeFinished
    L14_2 = L11_2 ~= 1 and L14_2
    L13_2.is_locked = L14_2
    L14_2 = L12_2.ChallengeData
    L14_2 = L14_2.RewardID
    L13_2.reward_id = L14_2
    L13_2.heliobus_challenge_group_id = L4_2
    L14_2 = G
    L14_2 = L14_2.Utils
    L14_2 = L14_2.create_lua_table_from_cs_list
    L15_2 = L12_2.ChallengeTargets
    L14_2 = L14_2(L15_2)
    L13_2.targets = L14_2
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L2_2
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = L13_2.is_level_completed
    if L14_2 == false then
      L14_2 = L13_2.reward_id
      if L14_2 then
        L14_2 = G
        L14_2 = L14_2.RewardUtils
        L14_2 = L14_2.CreateRewardItemTableSorted
        L15_2 = L13_2.reward_id
        L14_2 = L14_2(L15_2)
        L15_2 = ipairs
        L16_2 = L14_2
        L15_2, L16_2, L17_2 = L15_2(L16_2)
        for L18_2, L19_2 in L15_2, L16_2, L17_2 do
          L20_2 = L19_2.ItemID
          L6_2[L20_2] = true
        end
      end
    end
  end
  L8_2 = {}
  A0_2._reward_item_list = L8_2
  L8_2 = pairs
  L9_2 = L6_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = A0_2._reward_item_list
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
  end
  return L2_2
end
L1_1._get_heliobus_challenge_progress_data_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L7_2 = A0_2._heliobus_challenge_progress_data_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L1_1._on_progress_info_changed = L2_1
return L1_1
