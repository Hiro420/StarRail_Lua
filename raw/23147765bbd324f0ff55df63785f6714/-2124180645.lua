local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumAreaInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAreaInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumUpgradeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumUpgradeItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumUpgradeDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Museum/MuseumLevelUpDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/RightPanel/BtnPanel/BtnUpgrade"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_upgrade = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopPanel/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumAreaInfoPanel
  L4_2 = G
  L4_2 = L4_2.MuseumAreaInfoPanelBinder
  L5_2 = "Root/PanelContent/LeftPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.area_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeItemPanel
  L4_2 = G
  L4_2 = L4_2.MuseumUpgradeItemPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/UpgradeItemList/ListView/UpgradeItem1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.phase_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeItemPanel
  L4_2 = G
  L4_2 = L4_2.MuseumUpgradeItemPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/UpgradeItemList/ListView/UpgradeItem2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stats_A_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeItemPanel
  L4_2 = G
  L4_2 = L4_2.MuseumUpgradeItemPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/UpgradeItemList/ListView/UpgradeItem3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stats_B_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeItemPanel
  L4_2 = G
  L4_2 = L4_2.MuseumUpgradeItemPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/UpgradeItemList/ListView/UpgradeItem4"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stats_C_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
