local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAcheronUltraSpInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Battle/Widget/SpecialUltraSP/UltraSPInfo_Acheron.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.sp_nodes = L1_2
  L1_2 = 1
  L2_2 = 9
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "UltraSPInfoNodeList/Node0"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2.sp_nodes
    L6_2[L4_2] = L5_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DisableHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
