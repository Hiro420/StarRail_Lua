local L0_1, L1_1
L0_1 = {}
TriggerMazeMapUITaskHack = L0_1
L0_1 = xlua
L0_1 = L0_1.private_accessible
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.TriggerMazeMapUITask
L0_1(L1_1)
L0_1 = TriggerMazeMapUITaskHack
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "LuaHack System -- ConfirmCheckpointRecoverTaskHack -- Start"
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsCsType
    L4_2 = L2_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AdventurePhase
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.LockPlayerControl
      L3_2(L4_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Maze.MazeTeamRestDialog"
  L3_2(L4_2)
  L3_2 = A1_2._TaskContext
  L3_2 = L3_2.OwnerEntity
  if L3_2 ~= nil then
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "LuaHack System -- Hack -- OwnerEntity: %s"
    L6_2 = L3_2.Name
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormat
    L6_2 = L4_2
    L5_2(L6_2)
  end
  L4_2 = A1_2._TaskContext
  L4_2 = L4_2.OwnerGraph
  if L4_2 ~= nil then
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "LuaHack System -- Hack -- OwnerGraph: %s"
    L7_2 = L4_2.ConfigPath
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = G
    L6_2 = L6_2.SuperDebug
    L6_2 = L6_2.LogFormat
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L6_2 = L2_2
  L5_2 = L2_2.UnLockPlayerControl
  L5_2(L6_2)
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.UIPileToastMessage
  L7_2 = "\233\148\154\231\130\185\228\188\160\233\128\129\229\138\159\232\131\189\230\154\130\230\151\182\229\133\179\233\151\173"
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TaskState
  L5_2 = L5_2.Success
  A1_2._TaskState = L5_2
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormat
  L6_2 = "LuaHack System -- ConfirmCheckpointRecoverTaskHack -- End"
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
L0_1.start_task_begin = L1_1
L0_1 = TriggerMazeMapUITaskHack
return L0_1
