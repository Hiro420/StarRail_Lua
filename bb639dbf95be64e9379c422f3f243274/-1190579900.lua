local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityStateEnum
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CommonActivityStateBtnPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMainMissionAccepted
  L4_2 = A0_2._on_main_mission_accepted
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._customized_btn_callback = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._activity_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_go
  L5_2 = A0_2._on_btn_go
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._customized_btn_callback = A1_2
end
L1_1.register_customized_btn_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_common_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_common_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1.show_common_tips = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L2_2 = L1_2.CurState
  L4_2 = L1_2
  L3_2 = L1_2.IsInDelayedForExchange
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.show_common_tips
    L5_2 = true
    L6_2 = "UIText_ActivityExpedition_Finish"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_pre_condition_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_go
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.show_common_tips
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_pre_condition_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L0_1.Locked
  L5_2 = L2_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._activity_data
  L5_2 = L5_2.IsPreMissionComplete
  L3_2(L4_2, L5_2)
end
L1_1._setup_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ActivityDataUtils
    L1_2 = L1_2.UpdateDailyGotoClickRedDot
    L2_2 = A0_2._activity_data
    L1_2(L2_2)
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L3_2 = A0_2
  L2_2 = A0_2._should_switch_story_line
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_invoke_customized_callback
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_default_handle
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_go = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.InProgress
  if A1_2 ~= L2_2 then
    L2_2 = G
    L2_2 = L2_2.StoryLineUtils
    L2_2 = L2_2.should_switch_line_in_activity
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.PanelID
    return L2_2(L3_2)
  else
    L2_2 = A0_2._activity_data
    L2_2 = L2_2.IsSkipSwitchStoryLine
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.StoryLineUtils
      L2_2 = L2_2.should_switch_line_in_activity
      L3_2 = A0_2._activity_data
      L3_2 = L3_2.PanelID
      return L2_2(L3_2)
    else
      L2_2 = false
      return L2_2
    end
  end
end
L1_1._should_switch_story_line = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._customized_btn_callback
  if L2_2 then
    L2_2 = A0_2._customized_btn_callback
    L2_2 = L2_2[A1_2]
  end
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = L2_2.CallbackFunc
    L5_2 = L2_2.CallbackSelf
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end
L1_1._try_invoke_customized_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  L3_2 = L0_1.PreGuide
  if A1_2 == L3_2 then
    L3_2 = L2_2.GuideTakeMission
    if 0 < L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_main_mission_not_taken
      L5_2 = L2_2.GuideTakeMission
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._take_and_goto_main_mission
        L5_2 = L2_2.GuideTakeMission
        L3_2(L4_2, L5_2)
        L3_2 = G
        L3_2 = L3_2.CommonActivityStateUtils
        L3_2 = L3_2.report_activity_panel_btn_go_click
        L4_2 = A0_2._activity_data
        L5_2 = G
        L5_2 = L5_2.CommonActivityStateUtils
        L5_2 = L5_2.ReportGuideType
        L5_2 = L5_2.GuideTakeMission
        L6_2 = L2_2.GuideTakeMission
        L7_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    else
      L3_2 = L2_2.GuideGoto
      if 0 < L3_2 then
        L3_2 = G
        L3_2 = L3_2.GotoManager
        L3_2 = L3_2.Goto
        L4_2 = L2_2.GuideGoto
        L3_2(L4_2)
        L3_2 = G
        L3_2 = L3_2.CommonActivityStateUtils
        L3_2 = L3_2.report_activity_panel_btn_go_click
        L4_2 = A0_2._activity_data
        L5_2 = G
        L5_2 = L5_2.CommonActivityStateUtils
        L5_2 = L5_2.ReportGuideType
        L5_2 = L5_2.GuideGoto
        L6_2 = 0
        L7_2 = L2_2.GuideGoto
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._goto_by_guide_condition_missions
        L3_2(L4_2)
      end
    end
  else
    L3_2 = L0_1.InProgress
    if A1_2 == L3_2 then
      L3_2 = L2_2.ActivityGoto
      if 0 < L3_2 then
        L3_2 = G
        L3_2 = L3_2.GotoManager
        L3_2 = L3_2.Goto
        L4_2 = L2_2.ActivityGoto
        L3_2(L4_2)
        L3_2 = G
        L3_2 = L3_2.CommonActivityStateUtils
        L3_2 = L3_2.report_activity_panel_btn_go_click
        L4_2 = A0_2._activity_data
        L5_2 = G
        L5_2 = L5_2.CommonActivityStateUtils
        L5_2 = L5_2.ReportGuideType
        L5_2 = L5_2.ActivityGoto
        L6_2 = 0
        L7_2 = L2_2.ActivityGoto
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L1_1._on_btn_default_handle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.IADPLACFLMF
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.AcceptMainMission
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._take_and_goto_main_mission = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  L3_2 = L2_2.GuideTakeMission
  if 0 < L3_2 then
    L3_2 = L2_2.GuideTakeMission
    if A1_2 == L3_2 then
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
      L7_2 = L2_2.GuideTakeMission
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._on_main_mission_accepted = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_guide_condition_mission_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.Mission
    L3_2 = #L3_2
    L4_2 = {}
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = L1_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "\231\138\182\230\128\129\229\136\135\230\141\162\233\157\162\230\157\191\239\188\154\232\183\179\232\189\172\229\188\149\229\175\188\228\187\187\229\138\161\229\164\177\232\180\165\239\188\129\239\188\129\239\188\140\230\180\187\229\138\168PanelID: "
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelID
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
end
L1_1._goto_by_guide_condition_missions = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L4_2 = L2_2
  L3_2 = L2_2.TryGetMainMissionData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.IsStart
  L4_2 = L3_2.IsFinish
  L4_2 = L3_2 == nil or L4_2
  return L4_2
end
L1_1._is_main_mission_not_taken = L2_1
function L2_1(A0_2)
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
L1_1._get_guide_condition_mission_id = L2_1
return L1_1
