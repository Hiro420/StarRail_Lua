local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RaidCollectionActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.RaidCollectionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueClientExcelTable
L0_1 = L0_1.GetData
L1_1 = "Activity_RaidCollection_OptionalRewardQuestID"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.UintValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Activity_RaidCollection_MappingInfoID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.QuestModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RaidCollectionActivityPanel"
L6_1 = G
L6_1 = L6_1.TabItem
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2._config_ids = L4_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = L4_1._on_sub_mission_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
end
L4_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_custom_bind
  if not L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._get_panel_prefab_path_by_activity_data
    L3_2 = A0_2._activity_data
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_finish_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_panel_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_condition_met
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activity_reward
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActivityStateEnum
  L3_2 = L3_2.PreGuide
  L4_2 = A0_2._on_btn_guide_mission
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActivityStateEnum
  L3_2 = L3_2.InProgress
  L4_2 = A0_2._on_btn_go
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L4_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  L2_2 = A0_2
  L1_2 = A0_2._is_condition_met
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_reward
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_reward
    L3_2 = L2_2
    L2_2 = L2_2.setup_entry_navigation
    L4_2 = NavigationType
    L4_2 = L4_2.Vertical
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_activity_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IsResidentPanel
  if L3_2 then
    L3_2 = A0_2._activity_data
    L4_2 = L3_2
    L3_2 = L3_2.IsFinishConditionsCompleted
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
end
L4_1._setup_finish_hint = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  return L1_2
end
L4_1._is_condition_met = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "RaidCollectionNew"
    L4_2 = nil
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.reddot_btn_go
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "RaidCollectionDaily"
    L4_2 = nil
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.reddot_btn_go
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._custom_on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L4_1._setup_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTime
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.EndTimeDate
    L5_2 = A0_2._expire_call_back
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L4_1._setup_remain_time = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.SortedDisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._reward_items = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_normal_reward = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
L4_1._on_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RaidCollection.RaidCollectionRewardPage"
  L1_2(L2_2)
end
L4_1._on_btn_reward = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RaidCollectionUtils
  L1_2 = L1_2.go_select_reward_avatar
  L1_2()
end
L4_1._on_btn_reward_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_explain = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.RaidCollectionUtils
  L1_2 = L1_2.refresh_activity_daily_reddot
  L1_2()
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "Start_Activity_802021901"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_guide_condition_mission_id
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.common_jump_to_mission_by_main_mission
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIButtonClick
  L4_2 = A0_2._owner
  L4_2 = L4_2.__name
  L5_2 = A0_2.__name
  L6_2 = "TeleportBtn"
  L7_2 = A0_2._owner
  L7_2 = L7_2.guid
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1._on_btn_guide_mission = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.ConditionConfig
  if L1_2 ~= nil then
    L2_2 = L1_2.GuideConditions
    L3_2 = 0
    L4_2 = L2_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L8_2 = L7_2.Type
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ConditionType
      L9_2 = L9_2.FinishMainMission
      if L8_2 == L9_2 then
        L8_2 = tonumber
        L9_2 = L7_2.Param
        return L8_2(L9_2)
      end
    end
  end
end
L4_1._get_guide_condition_mission_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RaidCollectionUtils
  L1_2 = L1_2.refresh_activity_daily_reddot
  L1_2()
  L1_2 = G
  L1_2 = L1_2.RaidCollectionUtils
  L1_2 = L1_2.goto_area_switch
  L2_2 = L1_1
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L4_1._expire_call_back = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L4_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
end
L4_1._on_quest_updated = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._state
  L3_2 = L4_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_top_page_or_dialog
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_guide_condition_mission_id
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2.MainMissionID
    if L4_2 == L3_2 then
      goto lbl_28
    end
  end
  do return end
  ::lbl_28::
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetMainMissionData
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.MissionUtils
  L5_2 = L5_2.common_jump_to_mission_by_main_mission
  L6_2 = L4_2
  L5_2(L6_2)
end
L4_1._on_sub_mission_taken = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._activity_data
      L2_2 = L2_2.StateData
      L2_2 = L2_2.CurState
      L2_2 = #L2_2
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ActivityStateEnum
      L3_2 = L3_2.PreGuide
      L3_2 = #L3_2
      L2_2 = L2_2 < L3_2
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L4_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_activity_state_switch
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.get_zoom_navigation_target
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 == nil then
        L4_2 = A0_2
        L3_2 = A0_2.get_first_selected_object
        L3_2 = L3_2(L4_2)
        L2_2 = L3_2
      end
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_can_to_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 31
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._activity_data
      L2_2 = L2_2.StateData
      L2_2 = L2_2.CurState
      L2_2 = #L2_2
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ActivityStateEnum
      L3_2 = L3_2.PreGuide
      L3_2 = #L3_2
      if L2_2 < L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = 31
        L2_2(L3_2, L4_2)
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
    end
  end
end
L4_1._refresh_short_cut_hint = L5_1
return L4_1
