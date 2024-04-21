local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreeDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._path = A1_2
  A0_2._tree_point_datas = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._path
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2.node_skill_tree_point_list = L1_2
  L1_2 = {}
  A0_2.nodes_tree_line = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._tree_point_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.node_skill_tree_point_list
    L7_2 = L5_2.PointID
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = "SkillTreeList/"
    L11_2 = L5_2.Anchor
    L10_2 = L10_2 .. L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L6_2[L7_2] = L8_2
    L6_2 = tonumber
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = L5_2.Anchor
    L9_2 = -2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = A0_2.nodes_tree_line
    L8_2 = L5_2.PointID
    L10_2 = A0_2
    L9_2 = A0_2._safe_get_cmpt
    L11_2 = CS
    L11_2 = L11_2.UnityEngine
    L11_2 = L11_2.CanvasGroup
    L12_2 = "SkillTreeList/SkillTreeLine/Line"
    L13_2 = L6_2
    L12_2 = L12_2 .. L13_2
    L13_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L7_2[L8_2] = L9_2
  end
end
L0_1._on_bind = L1_1
return L0_1
