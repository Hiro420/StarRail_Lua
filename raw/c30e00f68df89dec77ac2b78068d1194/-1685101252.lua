local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.AssetsPage.Components.ActivityMonopolyAssetLevelDescPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyAssetLevelDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityMonopoly_AssetPage_LevelDesc"
  L5_2 = A1_2.TaxValue
  L6_2 = A1_2.BonusValue
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
return L0_1
