local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.DefaultRogueMenuDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EndlessRogueMenuDataProvider"
L2_1 = G
L2_1 = L2_1.DefaultRogueMenuDataProvider
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "RogueEndless_Activity_PM_RogueAreaID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
function L2_1(A0_2)
  local L1_2
  L1_2 = "RogueMenuPage"
  return L1_2
end
L0_1._get_res_bar_key = L2_1
return L0_1
