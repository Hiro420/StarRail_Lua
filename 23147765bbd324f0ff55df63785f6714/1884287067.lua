local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.AssetsPage.Components.ActivityMonopolyAreaAssetsPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyAreaAssetDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityMonopolyAreaAssetDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyBlockDetailDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panels
  L1_2(L2_2)
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2.area_panels = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.area_panels
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityMonopolyAreaAssetsPanel
  L6_2 = G
  L6_2 = L6_2.ActivityMonopolyAreaAssetsPanelBinder
  L7_2 = A0_2.area_root_1
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.area_panels
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityMonopolyAreaAssetsPanel
  L6_2 = G
  L6_2 = L6_2.ActivityMonopolyAreaAssetsPanelBinder
  L7_2 = A0_2.area_root_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.area_panels
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityMonopolyAreaAssetsPanel
  L6_2 = G
  L6_2 = L6_2.ActivityMonopolyAreaAssetsPanelBinder
  L7_2 = A0_2.area_root_3
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.area_panels
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityMonopolyAreaAssetsPanel
  L6_2 = G
  L6_2 = L6_2.ActivityMonopolyAreaAssetsPanelBinder
  L7_2 = A0_2.area_root_4
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._create_panels = L2_1
return L0_1
