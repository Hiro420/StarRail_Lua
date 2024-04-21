local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = "UIText_Activity_Museum_PhaseMission_Time"
L1_1 = "UIText_Activity_Museum_PhaseMission"
L2_1 = "UIText_ActivityMuseum_ForceCompleteDesc"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ScheduleModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_TimeManager
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MuseumModule
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "MuseumMissionPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._reach_limit = false
  A0_2._main_mission_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetMainMissionRow
  L4_2 = A0_2._main_mission_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._main_mission_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionScheduleExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._main_mission_id
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L3_1
    L4_2 = L3_2
    L3_2 = L3_2.GetScheduleDataByActivityModuleID
    L5_2 = L2_2.ActivityModuleID
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._schedule_data = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._reach_limit = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMuseum_MissionFullTips"
  L1_2(L2_2, L3_2)
end
L6_1.setup_reach_limit_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip
  L2_2.IsShowTip = A1_2
end
L6_1.set_mono_in_control_tip_active = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._schedule_data
  L1_2 = L1_2 == nil
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2._main_mission_row
  L3_2 = L3_2.Name
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  if L1_2 then
    L3_2 = L5_1.IsForceMissionTaken
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_tip
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_1
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_tip
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L1_1
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L0_1
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_time
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = A0_2._schedule_data
    L5_2 = L5_2.BeginTimeStamp
    L6_2 = A0_2._on_timer_time_out
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L6_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = A0_2._reach_limit
  if L2_2 then
    L1_2 = L5_1.MuseumMissionChapterID
  end
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.Goto
  L3_2 = 700
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.None
  L5_2 = #L5_2
  L6_2 = A0_2._main_mission_id
  function L7_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.Utils
      L1_3 = L1_3.trigger_custom_string
      L2_3 = "MuseumMissionStart"
      L1_3(L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_UIManager
      L2_3 = L1_3
      L1_3 = L1_3.BackToFirstPage
      L1_3(L2_3)
    end
  end
  L8_2 = L1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L2_2(L3_2, L4_2)
end
L6_1._on_btn_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L6_1._on_timer_time_out = L7_1
return L6_1
