local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MissionChronicleUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionChronicleModule
L3_1 = 49
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.FuncEntranceConfigExcelTable
L4_1 = L4_1.GetData
L5_1 = L3_1
L4_1 = L4_1(L5_1)
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.AdventureStatic
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentGameModeType
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameModeType
  L1_2 = L1_2.Raid
  if L0_2 == L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L4_1.UnlockID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  return L2_2
end
L0_1.check_is_chronicle_available = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.UnKnown
  if L1_2 == L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.Prediction
  if L1_2 == L2_2 then
    L1_2 = A0_2.IsPredictionShowType
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionScheduleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.MainMissionID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ScheduleDataID
    if L2_2 ~= 0 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.ScheduleModule
      L3_2 = L2_2
      L2_2 = L2_2.GetScheduleDataByID
      L4_2 = L1_2.ScheduleDataID
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.IsInSchedule
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = false
          return L3_2
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.check_is_path_data_available = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = L6_2.NodeType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ChronicleNodeType
    L8_2 = L8_2.ChapterMain
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.NodeType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ChronicleNodeType
      L8_2 = L8_2.MissionMain
      if L7_2 ~= L8_2 then
        goto lbl_40
      end
    end
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ChronicleStatus
    L8_2 = L8_2.Prediction
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.MainMissionType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MainMissionType
      L8_2 = L8_2.Companion
      if L7_2 ~= L8_2 then
        L1_2 = L6_2.ID
      end
    end
    ::lbl_40::
  end
  return L1_2
end
L0_1.get_last_locate_path_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = A0_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChronicleStatus
    L2_2 = L2_2.Prediction
    L1_2 = A0_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChronicleNodeType
    L2_2 = L2_2.ChapterToBeContinue
    L1_2 = A0_2.IsSkipType
    L1_2 = L1_2 ~= L2_2 and L1_2
  end
  return L1_2
end
L0_1.check_is_path_can_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.IsBaseLine
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2.ConnectionList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.ConnectionList
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.PathData
    if L5_2 then
      L6_2 = L5_2.Status
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.ChronicleStatus
      L7_2 = L7_2.UnKnown
      if L6_2 ~= L7_2 then
        L6_2 = L5_2.Status
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.ChronicleStatus
        L7_2 = L7_2.Prediction
        if L6_2 ~= L7_2 then
          L6_2 = true
          return L6_2
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.check_is_line_node_unlock = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.Locked
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.CheckIsCanTakeMission
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 0
      return L1_2
    else
      L1_2 = 1
      return L1_2
    end
  else
    L1_2 = A0_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChronicleStatus
    L2_2 = L2_2.Processing
    if L1_2 == L2_2 then
      L1_2 = 2
      return L1_2
    else
      L1_2 = A0_2.Status
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ChronicleStatus
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = 3
        return L1_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_path_status_report_value = L5_1
return L0_1
