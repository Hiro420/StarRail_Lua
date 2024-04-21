local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearCardPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.EvolvePropCardItemIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/Widget/EvolvePropCardItem.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Root/Contents/PropTypeList"
    L6_2 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanel"
    L7_2 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    A0_2.panel_tags = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Root/Contents/DamageTypeLayout"
    L6_2 = "Ui.Monster.MonsterDamageTypePanel"
    L7_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    A0_2.damage_type_list = L1_2
    return
  end
end
L0_1._on_bind = L2_1
return L0_1
