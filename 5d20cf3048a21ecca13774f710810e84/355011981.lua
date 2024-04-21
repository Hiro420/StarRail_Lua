local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeData"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.Row = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.AssertFormat
  L3_2 = A0_2.Row
  L3_2 = L3_2 ~= nil
  L4_2 = "MazeExcelTable no ID: "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  A0_2.MaxFinishedDifficulty = 0
end
L0_1.ctor = L1_1
return L0_1
