local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.FeverTimeActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FeverTimeActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ActivityStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueCommonExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Fever_Time_First_MainMissionID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ActivityFeverTimeModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.ActivityModule
L5_1 = L5_1.ActivityType
L5_1 = L5_1.FeverTime
function L6_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
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
L0_1._is_can_to_zoom = L6_1
function L6_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
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
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
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
L0_1._on_added = L6_1
function L6_1(A0_2)
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
  L4_2 = "ActivityFeverTimeQuestRewardTab"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_btn_reward
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_reward
  L5_2 = A0_2._on_btn_reward
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_activity_state_switch
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._activity_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.IsPreMissionComplete
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_activity_state_switch
  L3_2 = L2_2
  L2_2 = L2_2.register_customized_btn_callback
  L4_2 = L1_1.PreGuide
  L5_2 = A0_2._on_btn_guide_mission
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_activity_state_switch
  L3_2 = L2_2
  L2_2 = L2_2.register_customized_btn_callback
  L4_2 = L1_1.InProgress
  L5_2 = A0_2._on_btn_go
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.IsPreGuideComplete
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityFeverTimeGoToEveryDay"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_btn_go
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
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
      goto lbl_90
    end
  end
  L4_2 = 1
  ::lbl_90::
  L2_2(L3_2, L4_2)
end
L0_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.MissionUtils
    L2_2 = L2_2.common_jump_to_mission_by_main_mission
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.cancel_mission_and_everyday_red_dot
  L2_2(L3_2)
end
L0_1._on_btn_guide_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityFeverTime.ActivityFeverTimeMainPage"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.cancel_mission_and_everyday_red_dot
  L1_2(L2_2)
end
L0_1._on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityFeverTime.Reward.ActivityFeverTimeQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = L4_1
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
    L3_2 = L5_1
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
L0_1.cancel_mission_and_everyday_red_dot = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L6_1
return L0_1
