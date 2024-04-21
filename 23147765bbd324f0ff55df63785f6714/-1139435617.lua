local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseUpgradeDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseUpgradeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_SNS_MainMissionTips_CloseDialogPhaseList"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.ArrayValue
L5_1 = "HeliobusStagePromotionDialog_FadeIn"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseUpgradeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L1_1.PopPhase
  A0_2._pop_phase = L1_2
  L1_2 = L1_1.HeliobusSNSAccountBeforeData
  L1_2 = L1_2.PopPhase
  A0_2._pop_before_phase = L1_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to_mission
  L4_2 = A0_2._on_click_go_to_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_phase
  L1_2 = L1_2(L2_2)
  A0_2._next_row = L1_2
  L1_2 = A0_2._next_row
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "HeliobusPopulationPhaseUpgradeDialog _setup_phase_info(): \228\184\141\229\173\152\229\156\168\231\172\172("
    L3_2 = A0_2._pop_phase
    L4_2 = ")\233\152\182\230\174\181\228\186\186\230\176\148\231\173\137\231\186\167"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_before_phase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusPopulationPhaseUpgradeDialog _setup_phase_info(): \228\184\141\229\173\152\229\156\168\231\172\172("
    L4_2 = A0_2._pop_before_phase
    L5_2 = ")\233\152\182\230\174\181\228\186\186\230\176\148\231\173\137\231\186\167"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_prev_phase
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._pop_before_phase
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_next_phase
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._pop_phase
  L2_2(L3_2, L4_2)
end
L0_1._setup_phase_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_mission_start = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_mission_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._next_row
  L3_2 = L3_2.ReceiveMissionID
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_row
  L1_2 = L1_2.ReceiveMissionID
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_no_mission_time
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mission_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    A0_2._is_mission_start = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_bg_exit
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionScheduleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._next_row
  L2_2 = L2_2.ReceiveMissionID
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if L1_2 then
    L3_2 = L1_2.ActivityModuleID
    if L3_2 ~= 0 then
      L3_2 = L2_1
      L4_2 = L3_2
      L3_2 = L3_2.GetScheduleDataByActivityModuleID
      L5_2 = L1_2.ActivityModuleID
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
      if L2_2 == nil then
        L3_2 = G
        L3_2 = L3_2.SuperDebug
        L3_2 = L3_2.LogErrorFormat
        L4_2 = "HeliobusPopulationPhaseUpgradeDialog _setup_phase_info(): \228\184\141\229\173\152\229\156\168\231\172\172("
        L5_2 = L1_2.ActivityModuleID
        L6_2 = ")\231\154\132ActivityModuleID\230\142\146\230\156\159"
        L4_2 = L4_2 .. L5_2 .. L6_2
        L3_2(L4_2)
        return
      else
        L4_2 = L2_2
        L3_2 = L2_2.IsInSchedule
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          A0_2._is_mission_start = false
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_no_mission_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_mission_start
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_mission_start
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to_mission
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_mission_start
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg_exit
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_mission_start
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_mission_start
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_mission_start
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_mission_view
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._check_is_force_close
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_mission_lock_time
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_mission_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = A0_2._next_row
  L3_2 = L3_2.ReceiveMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    if A0_3 == nil then
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogErrorFormat
      L2_3 = "HeliobusPopulationPhaseUpgradeDialog _setup_mission_view(): \230\156\170\232\142\183\229\190\151ID\228\184\186("
      L3_3 = A0_2._next_row
      L3_3 = L3_3.ReceiveMissionID
      L4_3 = ")\231\154\132\228\184\187\228\187\187\229\138\161"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.async_load_sprite_to
    L3_3 = A0_2._binder
    L3_3 = L3_3.img_mission_icon
    L4_3 = A0_3.TrackIconPath
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.txt_mission_name
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetText
    L3_3 = A0_3.NameStr
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_mission_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_mission
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = A1_2.BeginTimeStamp
  L5_2 = A0_2._on_time_up
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_mission_lock_time = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = L4_1.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_1[L4_2]
    L5_2 = L5_2.UintValue
    L6_2 = A0_2._pop_phase
    if L5_2 == L6_2 then
      A0_2._is_force_close = true
      break
    end
  end
  L1_2 = A0_2._is_force_close
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_bg_exit
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._check_is_force_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_info
  L1_2(L2_2)
end
L0_1._on_time_up = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_mission_start
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._next_row
  L3_2 = L3_2.ReceiveMissionID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusPopulationPhaseUpgradeDialog _on_click_go_to_mission(): \230\156\170\232\142\183\229\190\151ID\228\184\186("
    L4_2 = A0_2._next_row
    L4_2 = L4_2.ReceiveMissionID
    L5_2 = ")\231\154\132\228\184\187\228\187\187\229\138\161"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.Mission.MissionPage"
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.GameCore
    L2_3 = L2_3.MainMissionType
    L2_3 = L2_3.None
    L2_3 = #L2_3
    L3_3 = A0_2._next_row
    L3_3 = L3_3.ReceiveMissionID
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = L0_3.LuaTable
    L2_3 = L1_3
    L1_3 = L1_3.set_exit_callback
    L3_3 = A0_2.exit
    L4_3 = A0_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.set_track_mission_with_check
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_go_to_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_mission_start
  if L1_2 then
    L1_2 = A0_2._is_force_close
    if not L1_2 then
      goto lbl_9
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  ::lbl_9::
end
L0_1._on_click_close = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 1
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_unload = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
return L0_1
