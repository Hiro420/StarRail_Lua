local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMonsterGuestPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendGuestTrustPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MaxPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_max = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMonsterGuestPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerMonsterGuestPanelBinder
  L5_2 = "IconGuestMonster"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_guest_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ProgressPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_trust = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ProgressPanel/TrustProgress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_trust_point = L1_2
end
L0_1._on_bind = L1_1
return L0_1
