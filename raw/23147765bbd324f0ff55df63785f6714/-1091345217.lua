local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionGraphPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = "Root/MainPanel/Content/DiceSkillShowRoot/BtnGroup/BtnOverviewInfo"
  L2_2 = {}
  A0_2.dimension_btn_roots = L2_2
  L2_2 = 1
  L3_2 = 7
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = L1_2
    L9_2 = tostring
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2 .. L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.dimension_btn_roots
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDimensionGraphPanel
  L5_2 = G
  L5_2 = L5_2.ChessRogueDimensionGraphPanelBinder
  L6_2 = "Root/MainPanel/Content/DiceSkillShowRoot/DiceSkillShowMainPanel"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.graph_panel = L2_2
end
L0_1._on_bind = L1_1
return L0_1
