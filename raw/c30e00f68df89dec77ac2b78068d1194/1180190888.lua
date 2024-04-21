local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPageListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AssembleSkilItemListArea/DescTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AssembleSkilItemListArea/AssembleSkilItemArea/ItemListEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AssembleSkilItemListArea/AssembleSkilItemArea/ItemList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "TogSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_simple_desc_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "OrderPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_order_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterPanelBinder
  L5_2 = "OrderPanel/Root/BtnFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.filter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "AssembleSkilItemListArea/AssembleSkilItemArea/ItemList/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loop_listview_skill_core = L1_2
end
L0_1._on_bind = L1_1
return L0_1
