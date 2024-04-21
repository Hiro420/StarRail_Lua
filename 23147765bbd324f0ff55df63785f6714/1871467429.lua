local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LookAtPhonePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._current_phase = nil
  A0_2._current_player = nil
  A0_2._entity_manager = nil
  A0_2._start_level_graph = nil
  A0_2._end_level_graph = nil
  A0_2._end_call_back = nil
  A0_2._closing = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeOpenMobilePhone
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerExitLookAtPhoneLg
  L4_2 = L0_1._end_immediately
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRestartLookAtPhoneLg
  L4_2 = L0_1._on_restart_level_graph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerMapSpringTeleport
  L4_2 = L0_1._end_immediately
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetHeroBasicType
  L4_2 = L0_1._on_character_type_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CharacterTeleport
  L4_2 = L0_1._on_character_teleport
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._closing
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._end_immediately
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeCloseMobilePhone
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._end_level_graph
  if L2_2 ~= nil then
    L2_2 = A0_2._end_level_graph
    L3_2 = L2_2
    L2_2 = L2_2.IsLevelGraphFinish
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._dispose_end_graph
      L2_2(L3_2)
      A0_2._closing = false
      L2_2 = A0_2._end_call_back
      if L2_2 ~= nil then
        L2_2 = A0_2._end_call_back
        L2_2()
      end
    end
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._start_level_graph
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeOpenMobilePhone
  L1_2(L2_2)
  L1_2 = A0_2._start_level_graph
  L2_2 = L1_2
  L1_2 = L1_2.StartLevelGraph
  L1_2(L2_2)
end
L0_1.start_look_at_phone = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._closing
  if L2_2 then
    return
  end
  A0_2._closing = true
  L3_2 = A0_2
  L2_2 = A0_2._dispose_start_graph
  L2_2(L3_2)
  L2_2 = A0_2._end_level_graph
  if L2_2 ~= nil then
    L2_2 = A0_2._end_level_graph
    L3_2 = L2_2
    L2_2 = L2_2.StartLevelGraph
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_tick
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block
    L4_2 = 0.4
    L2_2(L3_2, L4_2)
    A0_2._end_call_back = A1_2
  else
    A0_2._closing = false
    L2_2 = A1_2
    L2_2()
  end
end
L0_1.end_look_at_phone = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_start_graph
  L1_2(L2_2)
  L1_2 = A0_2._end_level_graph
  if L1_2 ~= nil then
    L1_2 = A0_2._closing
    if not L1_2 then
      L1_2 = A0_2._end_level_graph
      L2_2 = L1_2
      L1_2 = L1_2.StartLevelGraph
      L1_2(L2_2)
    end
    L1_2 = A0_2._end_level_graph
    L2_2 = L1_2
    L1_2 = L1_2.FinishImmediately
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._dispose_end_graph
    L1_2(L2_2)
  end
end
L0_1._end_immediately = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._end_immediately
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init
  L1_2(L2_2)
  L1_2 = A0_2._start_level_graph
  if L1_2 ~= nil then
    L1_2 = A0_2._start_level_graph
    L2_2 = L1_2
    L1_2 = L1_2.StartLevelGraph
    L1_2(L2_2)
  end
end
L0_1._restart_level_graph = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._start_level_graph
  if L1_2 ~= nil then
    L1_2 = A0_2._start_level_graph
    L2_2 = L1_2
    L1_2 = L1_2.GetOwnerEntity
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.HasDisposed
    if not L2_2 then
      L2_2 = A0_2._entity_manager
      L2_2 = L2_2.OwnerWorldRef
      L3_2 = L2_2
      L2_2 = L2_2.MakeEntityDie
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    A0_2._start_level_graph = nil
  end
end
L0_1._dispose_start_graph = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._end_level_graph
  if L1_2 ~= nil then
    L1_2 = A0_2._end_level_graph
    L2_2 = L1_2
    L1_2 = L1_2.GetOwnerEntity
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.HasDisposed
    if not L2_2 then
      L2_2 = A0_2._entity_manager
      L2_2 = L2_2.OwnerWorldRef
      L3_2 = L2_2
      L2_2 = L2_2.MakeEntityDie
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    A0_2._end_level_graph = nil
  end
end
L0_1._dispose_end_graph = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._current_phase = L1_2
  L1_2 = A0_2._current_phase
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._current_phase
  L2_2 = L1_2
  L1_2 = L1_2.GetMainWorld
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._current_phase
  L2_2 = L2_2.CurrentPlayingTeamMember
  A0_2._current_player = L2_2
  L2_2 = L1_2.EntityManagerRef
  A0_2._entity_manager = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_current_character_config
  L4_2 = A0_2._current_phase
  L5_2 = A0_2._current_player
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._entity_manager
  L4_2 = L3_2
  L3_2 = L3_2.CreateLevelGraphEntity
  L5_2 = L2_2.LookAtPhoneStartConfigPath
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.LevelGraphComponent
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._start_level_graph = L4_2
  end
  L4_2 = A0_2._entity_manager
  L5_2 = L4_2
  L4_2 = L4_2.CreateLevelGraphEntity
  L6_2 = L2_2.LookAtPhoneEndConfigPath
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.GetComponent
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.LevelGraphComponent
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A0_2._end_level_graph = L5_2
  end
end
L0_1._init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil or A2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetPlayerDataByEntity
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L3_2.AvatarData
  L4_2 = L4_2.AdventureJsonConfigPath
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameCoreConfigLoader
  L5_2 = L5_2.LoadAdventureCharacterConfig
  L6_2 = L4_2
  return L5_2(L6_2)
end
L0_1._get_current_character_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.OldHeroBasicType
  L3_2 = A1_2.NewHeroBasicType
  if L2_2 == L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._restart_level_graph
  L2_2(L3_2)
end
L0_1._on_character_type_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Entity
  L3_2 = L2_2.RuntimeID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L4_2 = L4_2.GetLocalPlayer
  L4_2 = L4_2()
  L4_2 = L4_2.RuntimeID
  if L3_2 ~= L4_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2.is_destroyed
    if L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._restart_level_graph
    L0_3(L1_3)
  end
  L3_2(L4_2)
end
L0_1._on_character_teleport = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2.is_destroyed
    if L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._restart_level_graph
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._on_restart_level_graph = L1_1
return L0_1
