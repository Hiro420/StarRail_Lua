local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePropertyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePropertyBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterResistListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterResistListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMonsterInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/ViewMode/Widget/MonsterInfo.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "MonsterHPPanel/DamageTypePanel/DamageTypeLayout"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_weak_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePropertyBarPanel
  L4_2 = G
  L4_2 = L4_2.BattlePropertyBarPanelBinder
  L5_2 = "MonsterHPPanel/HPBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hp_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "MonsterHPPanel/HPBar/Progress/TenacityProgress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_stance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterResistListPanel
  L4_2 = G
  L4_2 = L4_2.MonsterResistListPanelBinder
  L5_2 = "ResistancePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.resist_list_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
