local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityResultInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityResultInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityBattleResultInBattleDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ChallengePanel/QuestChallengeResultDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/TitlePanel/TurnPanel/IconBg/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_round_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/TitlePanel/WavePanel/IconBg/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_wave_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/TitlePanel/TurnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_round_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/TitlePanel/WavePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wave_panel = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Deco/Light1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Deco/Light2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Deco/Light3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.light = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/GlowBg/Level/Level1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/GlowBg/Level/Level2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/GlowBg/Level/Level3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.glow_bg_level = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/Effect/Effect_Level1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/Effect/Effect_Level1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Contents/TitlePanel/Effect/Effect_Level1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/ScoreListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/Contents/ScoreListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta_result_info = L1_2
end
L0_1._on_bind = L1_1
return L0_1
