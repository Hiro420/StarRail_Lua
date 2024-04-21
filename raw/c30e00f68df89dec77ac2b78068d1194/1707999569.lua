local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeJumpingTextPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeJumpingTextBuffDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeJumpingTextBuffDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeJumpingTextPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.FixPoint
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_BelowPage
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeJumpingTextPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._tiking_buffs = L1_2
  L1_2 = {}
  A0_2._tiking_numbers = L1_2
  A0_2.block_when_async_load = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = A0_2._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = A0_2._on_buff_show
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = A0_2._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = A0_2._on_buff_show
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._ui_layer = nil
  A0_2._binder = nil
  A0_2._tiking_buffs = nil
  A0_2._tiking_numbers = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._tiking_buffs
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._tiking_buffs
    L8_2 = L8_2[L2_2]
    L9_2 = A0_2._tiking_buffs
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.time
    L9_2 = L9_2 - A1_2
    L8_2.time = L9_2
    L8_2 = A0_2._tiking_buffs
    L8_2 = L8_2[L2_2]
    L8_2 = L8_2.time
    if L8_2 < 0 then
      L9_2 = A0_2
      L8_2 = A0_2.destroy_object
      L10_2 = A0_2._tiking_buffs
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.buff
      L10_2 = L10_2.gameObject
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A0_2._tiking_buffs
      L10_2 = L2_2
      L8_2(L9_2, L10_2)
    else
      L2_2 = L2_2 + 1
    end
  end
  L2_2 = 1
  L4_2 = A0_2._tiking_numbers
  L3_2 = #L4_2
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._tiking_numbers
    L8_2 = L8_2[L2_2]
    L9_2 = A0_2._tiking_numbers
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.time
    L9_2 = L9_2 - A1_2
    L8_2.time = L9_2
    L8_2 = A0_2._tiking_numbers
    L8_2 = L8_2[L2_2]
    L8_2 = L8_2.time
    if L8_2 < 0 then
      L9_2 = A0_2
      L8_2 = A0_2.destroy_object
      L10_2 = A0_2._tiking_numbers
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.number
      L10_2 = L10_2.gameObject
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A0_2._tiking_numbers
      L10_2 = L2_2
      L8_2(L9_2, L10_2)
    else
      L2_2 = L2_2 + 1
    end
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.EntityManagerRef
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetLightTeamEntity
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_2.RuntimeID
  L4_2 = A1_2 == L4_2
  return L4_2
end
L0_1._is_light_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AdventurePhase
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_23
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_23::
  L2_2 = L1_2.CurrentPlayingTeamMember
  return L2_2
end
L0_1._get_local_player_entity = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.EntityManagerRef
  L3_2 = nil
  if L2_2 ~= nil then
    L5_2 = L2_2
    L4_2 = L2_2.GetEntityByRuntimeID
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._is_light_team
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._get_local_player_entity
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  end
  return L3_2
end
L0_1._get_entity_by_runtimeid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.EntityManagerRef
  if A1_2 == nil or L2_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetBuffID
  L3_2 = L3_2(L4_2)
  if L3_2 == 0 then
    return
  end
  L5_2 = A1_2
  L4_2 = A1_2.GetIsBuffCreate
  L4_2 = L4_2(L5_2)
  if L4_2 == false then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_entity_by_runtimeid
  L7_2 = A1_2
  L6_2 = A1_2.GetSourceRuntimeID
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.Visible
    if L5_2 then
      goto lbl_36
    end
  end
  do return end
  ::lbl_36::
  L5_2 = L4_2.EntityType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EntityType
  L6_2 = L6_2.LocalPlayer
  if L5_2 ~= L6_2 then
    L5_2 = L4_2.EntityType
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.EntityType
    L6_2 = L6_2.NPCMonster
    if L5_2 ~= L6_2 then
      L5_2 = L4_2.EntityType
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.EntityType
      L6_2 = L6_2.Team
      if L5_2 ~= L6_2 then
        return
      end
    end
  end
  L5_2 = L4_2.EntityType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EntityType
  L6_2 = L6_2.Team
  if L5_2 == L6_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AdventureStatic
    L5_2 = L5_2.GetLocalPlayer
    L5_2 = L5_2()
    L4_2 = L5_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.GetComponent
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AdventureAbilityComponent
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L5_2 ~= nil then
    L7_2 = L5_2
    L6_2 = L5_2.IsSneaking
    L6_2 = L6_2(L7_2)
    if L6_2 then
      return
    end
  end
  L6_2 = G
  L6_2 = L6_2.BuffUtils
  L6_2 = L6_2.GetMazeBuffData
  L7_2 = L3_2
  L8_2 = 1
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 == nil then
    L7_2 = G
    L7_2 = L7_2.SuperDebug
    L7_2 = L7_2.LogWarningFormatWithTag
    L8_2 = G
    L8_2 = L8_2.LogTag
    L8_2 = L8_2.UI
    L9_2 = "Try to show Maze BUFF UI but the data is nil. BUFF ID: %s"
    L10_2 = tostring
    L11_2 = L3_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    return
  end
  L7_2 = L6_2.BuffEffect
  if L7_2 ~= "" then
    L7_2 = L6_2.IsDisplay
    if L7_2 then
      goto lbl_118
    end
  end
  do return end
  ::lbl_118::
  L8_2 = A0_2
  L7_2 = A0_2.instantiate_object
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_buff
  L9_2 = L9_2.Prefab
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_buff
  L10_2 = L10_2.transform
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.create_panel
  L10_2 = G
  L10_2 = L10_2.MazeJumpingTextBuffDialog
  L11_2 = G
  L11_2 = L11_2.MazeJumpingTextBuffDialogBinder
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L10_2 = L8_2
  L9_2 = L8_2.bind
  L11_2 = L7_2.transform
  L9_2(L10_2, L11_2)
  L10_2 = L4_2
  L9_2 = L4_2.GetComponent
  L11_2 = typeof
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.GameCore
  L12_2 = L12_2.CharacterDataComponent
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2 = nil
  if L9_2 ~= nil then
    L11_2 = L9_2.JsonConfig
    L10_2 = L11_2.BuffPanelOffset
  end
  if L9_2 ~= nil then
    L12_2 = L10_2
    L11_2 = L10_2.Equals
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.Client
    L13_2 = L13_2.MVector3
    L13_2 = L13_2.positiveInfinity
    L11_2 = L11_2(L12_2, L13_2)
    if not L11_2 then
      goto lbl_197
    end
  end
  L11_2 = L4_2.UnityGO
  L12_2 = L11_2
  L11_2 = L11_2.GetComponent
  L13_2 = typeof
  L14_2 = CS
  L14_2 = L14_2.RPG
  L14_2 = L14_2.Client
  L14_2 = L14_2.AttachPointMapping
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L13_2 = L11_2
  L12_2 = L11_2.FindAttachPoint
  L14_2 = "CameraRootSpine"
  L12_2 = L12_2(L13_2, L14_2)
  if L12_2 == nil then
    L14_2 = L11_2
    L13_2 = L11_2.FindAttachPoint
    L15_2 = "SelectRoot"
    L13_2 = L13_2(L14_2, L15_2)
    L12_2 = L13_2
  end
  if L12_2 ~= nil then
    L13_2 = L12_2.localPosition
    L14_2 = CS
    L14_2 = L14_2.UnityEngine
    L14_2 = L14_2.Vector3
    L15_2 = 0
    L16_2 = 0.2
    L17_2 = 0
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L10_2 = L13_2 + L14_2
  else
    L13_2 = CS
    L13_2 = L13_2.UnityEngine
    L13_2 = L13_2.Vector3
    L14_2 = 0
    L15_2 = 1.2
    L16_2 = 0
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L10_2 = L13_2
  end
  ::lbl_197::
  L12_2 = L8_2
  L11_2 = L8_2.init_view
  L13_2 = L4_2.UnityGO
  L14_2 = L10_2
  L15_2 = L6_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = A0_2._tiking_buffs
  L13_2 = {}
  L13_2.buff = L7_2
  L13_2.time = 5
  L13_2.panel = L8_2
  L11_2(L12_2, L13_2)
end
L0_1._on_buff_show = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_adventure_phase_end = L3_1
return L0_1
