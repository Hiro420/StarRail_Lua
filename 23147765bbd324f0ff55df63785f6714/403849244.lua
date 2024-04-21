local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeListTargetsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeSuccessRewardDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/ChallengeLevelBattleResultDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RewardListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Contents/RewardListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/TitlePanel/GlowBg/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnExit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.raid_exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureChallengeTargetsPanel
  L4_2 = G
  L4_2 = L4_2.TreasureChallengeListTargetsPanelBinder
  L5_2 = "Contents/ChallengeTargetListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.targets_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnlockHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.new_level_unlock_hint_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel/BtnRestart"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_restart = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnRestart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_restart = L1_2
end
L0_1._on_bind = L1_1
return L0_1
