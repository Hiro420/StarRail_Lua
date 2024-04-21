local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QingqueAvatarEnergyBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Battle/Widget/PassiveSkill/SpecialPassive1201.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillDotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tiles = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Goal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rong = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Refresh"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_touch = L1_2
end
L0_1._on_bind = L1_1
return L0_1
