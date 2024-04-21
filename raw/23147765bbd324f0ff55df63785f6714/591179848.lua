local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSkillTextDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.text_skill_01 = nil
  A0_2.text_skill_02 = nil
  A0_2.node_light = nil
  A0_2.node_dark = nil
end
L0_1._on_dispose = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/Widget/SkillNameHUD.prefab"
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
  L3_2 = L3_2.Text
  L4_2 = "Frame/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_01 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FrameEnemy/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_02 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FrameEnemy"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dark = L1_2
end
L0_1._on_bind = L1_1
return L0_1
