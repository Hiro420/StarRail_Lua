local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityResultInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityChallengeMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityChallengeMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.FightActivityUtils
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FightActivityModule
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L2_1.BattleGroupID
  L2_2 = L1_1.GetEndlessRewardWaves
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.BattleInstanceRef
  L4_2 = L4_2.TurnBasedGameModeRef
  L4_2 = L4_2.WaveMonsterCurrentCount
  L5_2 = L1_1.GetCurrentBattleRoundLimit
  L5_2 = L5_2()
  L6_2 = 0
  L7_2 = L2_2.Length
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = A0_2
    L10_2 = A0_2.instantiate_object
    L12_2 = A0_2._binder
    L12_2 = L12_2.prefab_load_meta
    L12_2 = L12_2.MultiPrefabList
    L12_2 = L12_2[1]
    L13_2 = A0_2._binder
    L13_2 = L13_2.root
    L13_2 = L13_2.transform
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L12_2 = A0_2
    L11_2 = A0_2.create_panel
    L13_2 = G
    L13_2 = L13_2.FightActivityResultInfoPanel
    L14_2 = G
    L14_2 = L14_2.FightActivityResultInfoPanelBinder
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L13_2 = L11_2
    L12_2 = L11_2.bind
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
    L13_2 = L11_2
    L12_2 = L11_2.setup_view
    L14_2 = L5_2
    L15_2 = L2_2[L9_2]
    L16_2 = L2_2[L9_2]
    L16_2 = L4_2 > L16_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
