local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._native_filter = nil
  L2_2 = A0_2
  L1_2 = A0_2._init_native_filter
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "MissionChronicle"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_native_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.MissionChronicleUtils
  L1_2 = L1_2.check_is_chronicle_available
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_reddot
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.MissionChronicleNewPathIDList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "MissionChronicleIsNew"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.MissionChronicleNewPathIDList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IsEntryNew
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "MissionChronicleIsEntryNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.CanTakeMissionPathIDList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "MissionChronicleCanTake"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.CanTakeMissionPathIDList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_new_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionChronicleModule
  L1_2 = L1_2.MissionChronicleRedDotFilter
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionChronicleModule
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MissionChronicleRedDotFilter
    L2_2 = L2_2()
    L1_2.MissionChronicleRedDotFilter = L2_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionChronicleModule
    L1_2 = L1_2.MissionChronicleRedDotFilter
    A0_2._native_filter = L1_2
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Init
    L1_2(L2_2)
  end
end
L0_1._init_native_filter = L1_1
return L0_1
