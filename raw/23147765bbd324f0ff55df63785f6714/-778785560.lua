local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffPropertyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffPropertyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumRandomEventStaffPanelBinder"
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
  L3_2 = L3_2.Image
  L4_2 = "ImgPanel/RarityLine"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rarity_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ImgPanel/AvatarMask/AvatarImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_staff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "ImgPanel/PropertyList/PropertyInfoItem1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stat_a_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "ImgPanel/PropertyList/PropertyInfoItem2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stat_b_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "ImgPanel/PropertyList/PropertyInfoItem3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stat_c_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
