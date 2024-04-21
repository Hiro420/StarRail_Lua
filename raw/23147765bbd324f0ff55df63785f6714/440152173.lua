local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.PenaconyGiftActivityTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityMonsterResearchConstExcelTable
L1_1 = L1_1.GetData
L2_1 = "PenaconyGift_Phone_Message_SubMission"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ActivityMonsterResearchConstExcelTable
L2_1 = L2_1.GetData
L3_1 = "PenaconyGift_Phone_Message_Group"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ActivityMonsterResearchConstExcelTable
L3_1 = L3_1.GetData
L4_1 = "PenaconyGift_FirstMission"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ActivityStateEnum
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.ActivityModule
L5_1 = L5_1.ActivityType
L5_1 = L5_1.PenaconyGiftActivity
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PenaconyGiftActivityTabPanel"
L8_1 = G
L8_1 = L8_1.TabItem
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
  A0_2._is_custom_bind = false
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L6_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
end
L6_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.ConditionConfig
  L3_2 = A0_2
  L2_2 = A0_2._create_lua_table_from_condition_param
  L4_2 = L1_2.PreConditions
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._pre_mission_list = L2_2
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
  L3_2 = A0_2
  L2_2 = A0_2._check_pre_mission
  L2_2(L3_2)
end
L6_1._custom_on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_bg
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._is_can_to_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.MainMissionDataPromised
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = L3_1
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 == nil then
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogErrorFormat
      L2_3 = "PenaconyGiftActivityTabPanel: \230\137\190\228\184\141\229\136\176\233\166\150\230\151\165\228\187\187\229\138\161ID: "
      L3_3 = L3_1
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = L0_3.IsFinish
    if L1_3 then
      L1_3 = G
      L1_3 = L1_3.UIManager
      L1_3 = L1_3.load_and_async_show
      L2_3 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftMainPage"
      L3_3 = ""
      L4_3 = false
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.GetSubMissionDataWithPromise
      L3_3 = L1_1
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = L1_3
      L1_3 = L1_3.ThenLuaActionOneParam
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 == nil then
          L1_4 = G
          L1_4 = L1_4.SuperDebug
          L1_4 = L1_4.LogErrorFormat
          L2_4 = "PenaconyGiftActivityTabPanel: \230\137\190\228\184\141\229\136\176\231\159\173\228\191\161\229\188\149\229\175\188\229\173\144\228\187\187\229\138\161ID: "
          L3_4 = L1_1
          L2_4 = L2_4 .. L3_4
          L1_4(L2_4)
          return
        end
        L1_4 = A0_4.IsFinish
        if L1_4 then
          L1_4 = L0_1
          L2_4 = L1_4
          L1_4 = L1_4.TryGetMainMissionData
          L3_4 = L3_1
          L1_4 = L1_4(L2_4, L3_4)
          L2_4 = L1_4.IsFinish
          if not L2_4 then
            L2_4 = G
            L2_4 = L2_4.MissionUtils
            L2_4 = L2_4.common_jump_to_mission_by_main_mission
            L3_4 = L1_4
            L2_4(L3_4)
          end
        else
          L1_4 = G
          L1_4 = L1_4.GotoManager
          L1_4 = L1_4.Goto
          L2_4 = 4000
          L3_4 = {}
          L4_4 = L2_1
          L3_4[1] = L4_4
          L1_4(L2_4, L3_4)
        end
      end
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_go = L7_1
function L7_1(A0_2)
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
L6_1._on_btn_explain = L7_1
function L7_1(A0_2)
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
L6_1._expire_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L6_1._setup_tab_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L6_1._setup_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._setup_remain_time = L7_1
function L7_1(A0_2)
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
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L6_1._setup_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_warning_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L6_1._setup_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  A0_2._is_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_panel_reddot
  L1_2(L2_2)
end
L6_1._check_pre_mission = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityQuest"
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tab_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L6_1._bind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PenaconyGiftActivityGoto"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_goto_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._bind_panel_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L2_2 = L5_1
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
L6_1._refresh_every_day_go_to_reddot = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._create_lua_table_from_condition_param = L7_1
return L6_1
