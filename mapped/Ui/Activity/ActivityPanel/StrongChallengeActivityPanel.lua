local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.StrongChallengeActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityModule
L0_1 = L0_1.ActivityType
L0_1 = L0_1.StrongChallengeActivity
L1_1 = 4000
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Strong_Challenge_Mapinfo"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Strong_Challenge_PrePhoneMessage_GroupID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Strong_Challenge_PrePhoneMessage_SubmissionID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = G
L5_1 = L5_1.SuperDebug
L5_1 = L5_1.LogFormat
L6_1 = "[StrongChallenge] _MAPPING_INFO_ID=%d, _GUIDE_MESSAGE_ID=%d, _GUIDE_MESSAGE_SUB_MISSION_ID=%d"
L7_1 = L2_1
L8_1 = L3_1
L9_1 = L4_1
L5_1(L6_1, L7_1, L8_1, L9_1)
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.ActivityStateEnum
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.MissionModule
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "StrongChallengeActivityPanel"
L9_1 = G
L9_1 = L9_1.TabItem
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.StateData
  L4_2 = L4_2.ConditionConfig
  L6_2 = A0_2
  L5_2 = A0_2._create_lua_table_from_condition_param
  L7_2 = L4_2.PreConditions
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._pre_mission_list = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._create_lua_table_from_condition_param
  L7_2 = L4_2.GuideConditions
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._guide_mission_list = L5_2
end
L7_1.ctor = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = tonumber
      L11_2 = L7_2.Param
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L2_2
end
L7_1._create_lua_table_from_condition_param = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
end
L7_1._on_added = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_explain
  L5_2 = A0_2._on_btn_explain_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_limited_reward
  L5_2 = A0_2._on_btn_limit_reward_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityConditionPanel
  L5_2 = G
  L5_2 = L5_2.ActivityConditionPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._condition_panel = L2_2
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_condition_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._pre_mission_list
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_config_ids
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityStrongChallengeRewardButton"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reward_btn_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityStrongChallengeEntrance"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_go_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "[StrongChallenge] RedDot ActivityStrongChallengeRewardButton binded!"
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_condition
  L2_2(L3_2)
end
L7_1._on_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L7_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L3_2 = L5_1.PreGuide
  L4_2 = A0_2._on_btn_goto_in_guide
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L5_1.InProgress
  L4_2 = A0_2._on_btn_goto_in_progress
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L2_2 = L1_2.CurState
  L3_2 = L5_1.Locked
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_desc_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L6_1
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionDataWithPromise
  L5_2 = L4_1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_3.IsFinish
      A0_2._is_guide_message_sub_mission_finish = L1_3
    else
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogErrorFormat
      L2_3 = "StrongChallengeActivityPanel: \230\156\170\232\142\183\229\190\151\231\159\173\228\191\161\229\188\149\229\175\188\229\173\144\228\187\187\229\138\161id: "
      L3_3 = L4_1
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      A0_2._is_guide_message_sub_mission_finish = nil
    end
  end
  L3_2(L4_2, L5_2)
end
L7_1._get_condition = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_enable_click_condition
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
  L1_2 = A0_2._is_guide_message_sub_mission_finish
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = L1_1
    L3_2 = {}
    L4_2 = L3_1
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
    return
  else
    L2_2 = A0_2
    L1_2 = A0_2._open_guide_mission_page
    L1_2(L2_2)
  end
end
L7_1._on_btn_goto_in_guide = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  if L2_2 ~= nil then
    L3_2 = L2_2.GuideConditions
    L4_2 = 0
    L5_2 = L3_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = L8_2.Type
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ConditionType
      L10_2 = L10_2.FinishMainMission
      if L9_2 == L10_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = tonumber
        L12_2 = L8_2.Param
        L11_2, L12_2 = L11_2(L12_2)
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetMainMissionData
    L9_2 = L1_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.IsFinish
    if not L8_2 then
      L8_2 = G
      L8_2 = L8_2.MissionUtils
      L8_2 = L8_2.common_jump_to_mission_by_main_mission
      L9_2 = L7_2
      L8_2(L9_2)
      return
    end
  end
end
L7_1._open_guide_mission_page = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L7_1._check_enable_click_condition = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.open_map_by_map_info_id
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
end
L7_1._on_btn_goto_in_progress = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil or not A1_2 then
    A1_2 = L2_1
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "StrongChallenge: mapInfoID="
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MapEntryExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.BigMapUtils
    L10_2 = L10_2.IsShowAreaMap
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = L2_2.FloorID
      L11_2 = L9_2.FloorID
      if L10_2 == L11_2 then
        L4_2 = L9_2.ID
        break
      end
    end
  end
  if L4_2 == 0 then
    return
  end
  L5_2 = G
  L5_2 = L5_2.GotoManager
  L5_2 = L5_2.GotoByType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GotoType
  L6_2 = L6_2.AreaSwitch
  L6_2 = #L6_2
  L7_2 = {}
  L8_2 = L4_2
  L9_2 = A1_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L5_2(L6_2, L7_2)
end
L7_1.open_map_by_map_info_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._on_unselect = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
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
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 31
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L7_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._condition_panel
      L3_2 = L2_2
      L2_2 = L2_2._is_can_to_zoom
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
L7_1._is_can_to_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = G
  L2_2 = L2_2.StrongChallengeMainPage
  L1_2(L2_2)
end
L7_1._on_btn_go_click = L8_1
function L8_1(A0_2)
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
L7_1._on_btn_explain_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = G
  L2_2 = L2_2.StrongChallengeQuestRewardPage
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_limit_reward_click = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "Strong Challenge Activity Panel: _on_item_changed"
  L3_2(L4_2)
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_26
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
  ::lbl_26::
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
L7_1._on_item_changed = L8_1
function L8_1(A0_2)
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
L7_1._setup_tab_panel = L8_1
function L8_1(A0_2)
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
  L1_2 = L1_2.panel_desc_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L7_1._setup_text = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "Strong Challenge Activity Panel: setup reward"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.SortedDisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._reward_items = L1_2
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
L7_1._setup_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  function L4_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.exit
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L7_1._setup_remain_time = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
end
L7_1._setup_config_ids = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._setup_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L2_2 = L0_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.NowTimeStamp
  L1_2[L2_2] = L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L7_1._refresh_every_day_go_to_reddot = L8_1
return L7_1
