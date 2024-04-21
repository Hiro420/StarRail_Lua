local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StaminaTipPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/Widget/StaminaPopUpTip.prefab"
  return L1_2
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
  L4_2 = "Content/Item1/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_stamina_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/Item1/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_stamina_total_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/Item2/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_reserve_stamina_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/Item1/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_stamina = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/Item2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_reserve_stamina = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Item1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_stamina = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Item2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reserve_stamina = L1_2
end
L0_1._on_bind = L1_1
return L0_1
