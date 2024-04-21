local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestWorkInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestWorkInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestPhotoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerWorkBookPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.DrinkMakerWorkBookDialogIndex"
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = 1
L4_1 = 3
L5_1 = 6
L6_1 = 2
L7_1 = 5
L8_1 = 4
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerWorkBookDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_guest_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.DrinkMakerGuestWorkInfoPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerGuestWorkInfoPanelBinder
  L5_2 = A0_2.node_guest_info
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.info_panel = L1_2
end
L0_1._on_bind = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.guest_list = L1_2
  L1_2 = ipairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.node_guest_list
    L7_2 = L6_2
    L6_2 = L6_2.GetChild
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2._create_panel_with_root_trans
    L9_2 = G
    L9_2 = L9_2.DrinkMakerGuestPhotoPanel
    L10_2 = G
    L10_2 = L10_2.DrinkMakerGuestPhotoPanelBinder
    L11_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.guest_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._create_guest_list = L3_1
return L0_1
