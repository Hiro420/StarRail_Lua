local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildMixConditionItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EvolveProps"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_prop_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_gear_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnmPanel/Unm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnmPanel/Unm2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_max_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnmPanel/Slash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_slash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnmPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_text_level = L1_2
end
L0_1._on_bind = L1_1
return L0_1
