local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.IRogueDLCEntranceStateProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousEntranceStateProvider"
L2_1 = G
L2_1 = L2_1.IRogueDLCEntranceStateProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._prepare_chess_rogue_guide
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._prepare_lock_main_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._prepare_activity_module_id
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ScheduleModule
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = A0_2._activity_module_id
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L0_1.is_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_main_mission_id
  L3_2 = A0_2._chess_rogue_guide_main_mission_ids
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil and 0 < L1_2 then
    L2_2 = true
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_cur_main_mission_id
  L4_2 = {}
  L5_2 = A0_2._lock_main_mission_id
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and 0 < L2_2
  return L3_2
end
L0_1.is_locked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L2_2 = L1_2.CurRecordRogueNousArea
  L2_2 = L2_2 ~= nil
  return L2_2
end
L0_1.is_in_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._chess_rogue_guide_main_mission_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueDLC_Guide_MainMissionList"
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Value
  L3_2 = L3_2.ArrayValue
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._chess_rogue_guide_main_mission_ids
    L8_2 = L1_2.Value
    L8_2 = L8_2.ArrayValue
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.UintValue
    L6_2(L7_2, L8_2)
  end
end
L0_1._prepare_chess_rogue_guide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueNous_Entrance_LockMainMission"
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  A0_2._lock_main_mission_id = L2_2
end
L0_1._prepare_lock_main_mission = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.TryGetMainMissionData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.IsStart
      if L9_2 then
        L9_2 = L8_2.IsFinish
        if not L9_2 then
          return L7_2
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_cur_main_mission_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueNous_Module"
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  A0_2._activity_module_id = L2_2
end
L0_1._prepare_activity_module_id = L1_1
return L0_1
