local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffPropertyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffPropertyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumExhibitItemBaseInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "PropertyList/PropertyInfoItem1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_a_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "PropertyList/PropertyInfoItem2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_b_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "PropertyList/PropertyInfoItem3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_c_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "SkillList"
  L6_2 = "Ui.Museum.MuseumExhibitSkillItemPanel"
  L7_2 = "Ui.Museum.MuseumExhibitSkillItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.skill_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
