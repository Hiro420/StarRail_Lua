local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityTelevisionActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ActivityStateEnum
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ActivityModule
L4_1 = L4_1.ActivityType
L4_1 = L4_1.ActivityTelevision
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_condition_panel
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = A0_2
    L4_2 = A0_2._is_can_to_zoom
    L6_2 = NavigationZoneType
    L6_2 = L6_2.Zone2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = 31
      if L4_2 then
        goto lbl_25
      end
    end
    L4_2 = 1
    ::lbl_25::
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  if L1_2 then
    L1_2 = nil
    return L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_activity_state_switch
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L5_1
function L5_1(A0_2)
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
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityTelevisionQuestRewardTab"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_btn_reward
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.CurState
  L3_2 = L2_1.Locked
  if L2_2 == L3_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.IsShowEveryDayRedDot
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L2_2 = L2_2.ActivityGoToTimeStamp
      L3_2 = L4_1
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TimeManager
      L4_2 = L4_2.Instance
      L4_2 = L4_2.NowTimeStamp
      L2_2[L3_2] = L4_2
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.ActivityForceRefreshRedDot
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_condition
  L2_2(L3_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IsPreMissionComplete
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L2_1.PreGuide
  L4_2 = A0_2._on_btn_guide_mission
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L2_1.InProgress
  L4_2 = A0_2._on_btn_go
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IsPreGuideComplete
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityTelevisionLevelUnlock"
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
    L3_2 = "ActivityTelevisionLevelUnlock"
    L4_2 = 0
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.reddot_btn_go
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = A0_2
  L3_2 = A0_2._is_can_to_zoom
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = 31
    if L3_2 then
      goto lbl_74
    end
  end
  L3_2 = 1
  ::lbl_74::
  L1_2(L2_2, L3_2)
end
L0_1._get_condition = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoButton_ActivityTelevision"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityTelevision.ActivityTelevisionMainPage"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.cancel_mission_and_everyday_red_dot
  L1_2(L2_2)
end
L0_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityTelevision.Reward.ActivityTelevisionQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoButton_ActivityTelevision"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.GuideMissionID
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.common_jump_to_mission_by_main_mission
  L4_2 = L2_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.cancel_mission_and_everyday_red_dot
  L3_2(L4_2)
end
L0_1._on_btn_guide_mission = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ActivityTelevisionLevelSeenID
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.ActivityTelevisionLevelSeenID
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L1_2 = true
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsShowEveryDayRedDot
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.ActivityGoToTimeStamp
    L3_2 = L4_1
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TimeManager
    L4_2 = L4_2.Instance
    L4_2 = L4_2.NowTimeStamp
    L2_2[L3_2] = L4_2
    L1_2 = true
  end
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ActivityForceRefreshRedDot
    L2_2(L3_2)
  end
end
L0_1.cancel_mission_and_everyday_red_dot = L5_1
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
L0_1._expire_call_back = L5_1
return L0_1
