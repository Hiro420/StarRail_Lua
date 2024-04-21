local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.EvaluateInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.EvaluateInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvaluatePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.EvaluateInfoPanel
  L4_2 = G
  L4_2 = L4_2.EvaluateInfoPanelBinder
  L5_2 = "Contents/DetailEvaluateInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.evaluate_avatar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.EvaluateInfoPanel
  L4_2 = G
  L4_2 = L4_2.EvaluateInfoPanelBinder
  L5_2 = "Contents/SkillEvaluateInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.evaluate_skill_tree_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.EvaluateInfoPanel
  L4_2 = G
  L4_2 = L4_2.EvaluateInfoPanelBinder
  L5_2 = "Contents/LightconeEvaluateInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.evaluate_light_core_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.EvaluateInfoPanel
  L4_2 = G
  L4_2 = L4_2.EvaluateInfoPanelBinder
  L5_2 = "Contents/RelicEvaluateInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.evaluate_relic_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TipsPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1
