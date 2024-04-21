local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvaluatePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._path_unlock_id = 9906
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._monster_combat_power_ratio = 1
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._battle_game_phase = L1_2
  L1_2 = A0_2._battle_game_phase
  if L1_2 ~= nil then
    L1_2 = A0_2._battle_game_phase
    L1_2 = L1_2.BattleInstanceRef
    L1_2 = L1_2.BattleLineupDataRef
    L1_2 = L1_2.Context
    L1_2 = L1_2.StageID
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CombatPowerUtils
    L2_2 = L2_2.GetMonsterCombatPowerRatio
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    A0_2._monster_combat_power_ratio = L2_2
  end
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._combat_power_list = nil
  A0_2._team_avatar_combat_power = nil
  A0_2._team_skill_tree_combat_power = nil
  A0_2._team_light_cone_combat_power = nil
  A0_2._team_relic_combat_power = nil
  A0_2._target_avatar_combat_power = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._combat_power_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._calculate_team_combat_power
  L2_2(L3_2)
  L2_2 = A0_2._combat_power_list
  if L2_2 ~= nil then
    L2_2 = A0_2._combat_power_list
    L2_2 = L2_2.Length
    if 3 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_target_combat_power
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_avatar
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_skill_tree
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_light_core
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_relic
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_tip
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_combat_power_value
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CombatPowerSource
  L3_2 = L3_2.Avatar
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._team_avatar_combat_power = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_combat_power_value
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CombatPowerSource
  L3_2 = L3_2.SkillTree
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._team_skill_tree_combat_power = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_combat_power_value
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CombatPowerSource
  L3_2 = L3_2.Lightcone
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._team_light_cone_combat_power = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_combat_power_value
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CombatPowerSource
  L3_2 = L3_2.Relic
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._team_relic_combat_power = L1_2
end
L0_1._calculate_team_combat_power = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._combat_power_list
  L1_2 = L1_2[0]
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._monster_combat_power_ratio
  L1_2 = L1_2 * L2_2
  A0_2._target_avatar_combat_power = L1_2
  L1_2 = A0_2._combat_power_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._monster_combat_power_ratio
  L1_2 = L1_2 * L2_2
  A0_2._target_skill_tree_combat_power = L1_2
  L1_2 = A0_2._combat_power_list
  L1_2 = L1_2[2]
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._monster_combat_power_ratio
  L1_2 = L1_2 * L2_2
  A0_2._target_light_cone_combat_power = L1_2
  L1_2 = A0_2._combat_power_list
  L1_2 = L1_2[3]
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._monster_combat_power_ratio
  L1_2 = L1_2 * L2_2
  A0_2._target_relic_combat_power = L1_2
end
L0_1._get_target_combat_power = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0
  L3_2 = A0_2._battle_game_phase
  L3_2 = L3_2.BattleInstanceRef
  L3_2 = L3_2.GameWorldRef
  L3_2 = L3_2.EntityManagerRef
  L5_2 = L3_2
  L4_2 = L3_2.QueryEntities
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.TeamTypeMask
  L6_2 = L6_2.TeamLight
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.EntityTypeMask
  L7_2 = L7_2.Avatar
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.EntityTypeMask
  L8_2 = L8_2.Monster
  L7_2 = L7_2 | L8_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AliveStateMask
  L8_2 = L8_2.Mask_NotDestroyed
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.AliveStateMask
  L9_2 = L9_2.Bit_OnStage
  L8_2 = L8_2 | L9_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.GetComponent
    L12_2 = typeof
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.AvatarDataComponent
    L12_2, L13_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if L10_2 ~= nil then
      L11_2 = L10_2.RowData
      L11_2 = L11_2.AvatarData
      L11_2 = L11_2.CombatPowerData
      L12_2 = L11_2
      L11_2 = L11_2.GetCombatPowerValue
      L13_2 = A1_2
      L11_2 = L11_2(L12_2, L13_2)
      L2_2 = L2_2 + L11_2
    end
  end
  return L2_2
end
L0_1._get_combat_power_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.evaluate_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._team_avatar_combat_power
  L4_2 = A0_2._target_avatar_combat_power
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L0_1._path_unlock_id
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.evaluate_skill_tree_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.evaluate_skill_tree_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._team_skill_tree_combat_power
  L5_2 = A0_2._target_skill_tree_combat_power
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_skill_tree = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.evaluate_light_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._team_light_cone_combat_power
  L4_2 = A0_2._target_light_cone_combat_power
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_light_core = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.evaluate_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._team_relic_combat_power
  L4_2 = A0_2._target_relic_combat_power
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_relic = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleTipUtils
  L1_2 = L1_2.GetOneFailureTip
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.TipContent
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_tip = L1_1
return L0_1
