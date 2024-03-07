local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.NormalAvatarEnergyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.NormalAvatarEnergyBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarEnergyBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NormalAvatarEnergyBarPanel
  L4_2 = G
  L4_2 = L4_2.NormalAvatarEnergyBarPanelBinder
  L5_2 = "TitlePanel/PassiveSkill"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.normal_energy_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TitlePanel/SpecialPassiveSkill"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_special_energy_bar = L1_2
end
L0_1._on_bind = L1_1
return L0_1
