local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RogueEndlessActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 215
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RogueModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ActivityStateEnum
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.View
  L2_2 = #L2_2
  if A1_2 == L2_2 then
  end
end
L0_1._on_in_control_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 33
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueAreaIDs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._area_ids = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_condition
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L2_2(L3_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limit_reward
  L4_2 = A0_2._on_btn_limit_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueEndlessTimeLimitedReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_limit_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueEndlessEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_panel
  L1_2(L2_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_title
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_title_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_reward_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_status
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._get_condition = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.IsPreMissionComplete
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
  end
end
L0_1._refresh_btn_status = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
L0_1._bind_reddot = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_explain = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.Reward.RogueEndlessRewardPage"
  L1_2(L2_2)
end
L0_1._on_btn_limit_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L2_2 = L3_1.PreGuide
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_guide_condition_mission_id
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = G
      L3_2 = L3_2.GotoManager
      L3_2 = L3_2.GotoByType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.GotoType
      L4_2 = L4_2.Mission
      L4_2 = #L4_2
      L5_2 = {}
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MainMissionType
      L6_2 = L6_2.None
      L6_2 = #L6_2
      L7_2 = L2_2
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "\231\138\182\230\128\129\229\136\135\230\141\162\233\157\162\230\157\191\239\188\154\232\183\179\232\189\172\229\188\149\229\175\188\228\187\187\229\138\161\229\164\177\232\180\165\239\188\129\239\188\129\239\188\140\230\180\187\229\138\168PanelID: "
      L5_2 = A0_2._activity_data
      L5_2 = L5_2.PanelID
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2._record_seen
    L3_2(L4_2)
    return
  else
    L2_2 = L3_1.InProgress
    if L1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessActivityMainPage"
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_go = L4_1
function L4_1(A0_2)
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
L0_1._get_guide_condition_mission_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.RogueEndlessGetAreaData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2.IsUnlocked
    if L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.RogueEndlessUtils
      L6_2 = L6_2.RecordAreaSeen
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueEndlessRefreshRedDotNew
  L1_2(L2_2)
end
L0_1._record_seen = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L4_1
return L0_1
