local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionMonsterTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/Widget/EvolveCollectionEnemyPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "MainPanel/Root/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.monster_list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MainPanel/Root/TipsPanel/Root/ValuePanel/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_collected_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MainPanel/Root/TipsPanel/Root/ValuePanel/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_collected_num = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L2_2 = L1_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.tab_btn_root
  L5_2 = "Selected/TextPanel/TabText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_tab_select = L2_2
  L2_2 = L1_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.tab_btn_root
  L5_2 = "Selected/TabIcon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.img_tab_selected = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt_in_btn
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Transform
  L5_2 = "RedDot"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.red_dot = L2_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
