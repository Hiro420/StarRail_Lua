local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnemyPreMatchInfoBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.custom_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxLevel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.info_level_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxLevel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.info_level_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "PropertyPanel/PropertyIcon"
  L6_2 = "Ui.Monster.MonsterDamageTypePanel"
  L7_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.info_damage_types = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxTips/TxTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.series_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
