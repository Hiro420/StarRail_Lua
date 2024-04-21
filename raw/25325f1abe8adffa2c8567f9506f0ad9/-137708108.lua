local L0_1, L1_1
L0_1 = {}
LuaHackConfig = L0_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartTaskBeginNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndTaskBeginNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartTaskResetNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndTaskResetNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartTaskTickNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndTaskTickNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartTaskSkipNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndTaskSkipNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartConsiderationAxisSetupNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndConsiderationAxisSetupNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartConsiderationAxisScoreNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndConsiderationAxisScoreNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartGamePhaseEnterNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndGamePhaseEnterNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartGamePhaseTickNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndGamePhaseTickNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartGamePhaseLateUpdateNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndGamePhaseLateUpdateNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.StartGamePhaseLeaveNames = L1_1
L0_1 = LuaHackConfig
L1_1 = {}
L0_1.EndGamePhaseLeaveNames = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskResetNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskResetNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_task_reset = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskResetNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskResetNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_task_reset = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskBeginNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskBeginNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_task_begin = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskBeginNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskBeginNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_task_begin = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskTickNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskTickNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_task_tick = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskTickNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskTickNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_task_tick = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskSkipNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartTaskSkipNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_task_skip = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskSkipNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndTaskSkipNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_task_skip = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartConsiderationAxisSetupNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartConsiderationAxisSetupNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_consideration_setup = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndConsiderationAxisSetupNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndConsiderationAxisSetupNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_consideration_setup = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartConsiderationAxisScoreNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartConsiderationAxisScoreNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_consideration_score = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndConsiderationAxisScoreNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndConsiderationAxisScoreNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_consideration_score = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseEnterNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseEnterNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_phase_enter = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseEnterNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseEnterNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_phase_enter = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseTickNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseTickNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_phase_tick = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseTickNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseTickNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_phase_tick = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseLateUpdateNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseLateUpdateNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_phase_lateupdate = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseLateUpdateNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseLateUpdateNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_phase_lateupdate = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseLeaveNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.StartGamePhaseLeaveNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_start_phase_leave = L1_1
L0_1 = LuaHackConfig
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseLeaveNames
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuaHackConfig
  L3_2 = L3_2.EndGamePhaseLeaveNames
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.get_end_phase_leave = L1_1
L0_1 = LuaHackConfig
return L0_1
