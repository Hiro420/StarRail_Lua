local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhaseUpgradeDialogBinder"
L0_1(L1_1)
L0_1 = "UIText_Activity_Museum_PhaseMission_Time"
L1_1 = "MuseumMissionStart"
L2_1 = 1
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
L7_1 = "MuseumPhaseUpgradeDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumPhaseUpgradeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_special_above_dialog = true
  A0_2._is_resp_esc = false
  A0_2._is_resp_esc = false
  A0_2._is_can_close = false
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumPhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2 - 1
  L2_2 = L2_2(L3_2)
  A0_2._phase_row_prev = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumPhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._phase_row_next = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._set_close
  L5_2 = L2_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._protected_time_timer = L2_2
  L2_2 = A0_2._phase_row_prev
  L2_2 = L2_2.UnlockMissionID
  if 0 < L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.MissionModule
    L3_2 = L2_2
    L2_2 = L2_2.TryGetMainMissionData
    L4_2 = A0_2._phase_row_prev
    L4_2 = L4_2.UnlockMissionID
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._main_mission_data = L2_2
  end
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.HaveHidePhaseMission
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.GetPageByName
    L3_2 = "MuseumEntrancePage"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L5_1
      L2_2 = L1_2
      L1_2 = L1_2.TryTriggerTutorialMissionPerformance
      L1_2(L2_2)
    end
  end
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_time
  L1_2(L2_2)
  L1_2 = A0_2._protected_time_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._protected_time_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._phase_row_next
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_phase_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._phase_row_prev
  L3_2 = L3_2.PhaseName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_phase_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._phase_row_next
  L3_2 = L3_2.PhaseName
  L1_2(L2_2, L3_2)
end
L6_1._setup_phase = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L5_1
  L4_2 = L3_2
  L3_2 = L3_2.HaveHidePhaseMission
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._main_mission_data
  if L1_2 ~= nil then
    L1_2 = L5_1
    L2_2 = L1_2
    L1_2 = L1_2.HaveHidePhaseMission
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_22
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_22::
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._main_mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_mission_time_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = A0_2._main_mission_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.Name
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L6_1._setup_mission = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_time_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._main_mission_data
  if L1_2 ~= nil then
    L1_2 = L5_1
    L2_2 = L1_2
    L1_2 = L1_2.HaveHidePhaseMission
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_30
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_30::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionScheduleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._main_mission_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.MainMissionID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetScheduleDataByActivityModuleID
    L4_2 = L1_2.ActivityModuleID
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._schedule_data = L2_2
  end
  L2_2 = A0_2._schedule_data
  L2_2 = L2_2 == nil
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_go
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission_time_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_close
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mission_remain_time
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
L6_1._setup_mission_time = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._is_can_close = true
end
L6_1._set_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L6_1._on_btn_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 700
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = A0_2._phase_row_prev
  L5_2 = L5_2.UnlockMissionID
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_UIManager
      L2_3 = L1_3
      L1_3 = L1_3.GetPageByName
      L3_3 = "MuseumEntrancePage"
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = G
        L1_3 = L1_3.Utils
        L1_3 = L1_3.trigger_custom_string
        L2_3 = L1_1
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
  end
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_btn_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_time
  L1_2(L2_2)
end
L6_1._on_timer_time_out = L7_1
return L6_1
