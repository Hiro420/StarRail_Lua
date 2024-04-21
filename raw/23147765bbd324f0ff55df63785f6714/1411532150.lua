local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueDimensionIncrementItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionGraphItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionGraphPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 7
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2.dimension_components = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueDimensionIncrementItem
    L9_2 = G
    L9_2 = L9_2.ChessRogueDimensionIncrementItemBinder
    L10_2 = "Content/PassOverviewInfoItem/PassOverviewInfoItem"
    L11_2 = tostring
    L12_2 = L4_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._create_panel
    L9_2 = G
    L9_2 = L9_2.ChessRogueDimensionGraphItemPanel
    L10_2 = G
    L10_2 = L10_2.ChessRogueDimensionGraphItemPanelBinder
    L11_2 = "Content/QuadDimension/Dimension"
    L12_2 = tostring
    L13_2 = L4_2
    L12_2 = L12_2(L13_2)
    L11_2 = L11_2 .. L12_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L5_2.NumPanel = L6_2
    L5_2.GraphPanel = L7_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.dimension_components
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._on_bind = L2_1
return L0_1
