local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionIncrementIconBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionIncrementIcon"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._data = A1_2
  L2_2 = L1_1.ChessRogueDimensionData
  L2_2 = L2_2.DimensionInfo
  L2_2 = L2_2.ChessRogueDimensionDict
  L3_2 = A0_2._data
  L3_2 = L3_2.DimensionID
  L2_2 = L2_2[L3_2]
  A0_2._dimension_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A0_2._dimension_data
  L5_2 = L5_2.DimensionSmallIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.increment_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A0_2._data
  L6_2 = L6_2.Increments
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L2_1
return L0_1
