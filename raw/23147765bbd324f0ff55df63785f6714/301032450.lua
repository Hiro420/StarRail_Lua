local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.WinAndLosePage.MultipleDropBattleResultInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultipleDropBattleResultInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = A1_2.MultipleActivityID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityFarmMultipleDropExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormat
    L6_2 = "wrong multipledrop id"
    L5_2(L6_2)
  else
    L2_2 = L4_2.HintText
  end
  L5_2 = nil
  L6_2 = A1_2.TimesData
  L6_2 = L6_2.RemainTimes
  if L6_2 == 0 then
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "<color=\"#eb4d3d\">%s</color>"
    L8_2 = A1_2.TimesData
    L8_2 = L8_2.RemainTimes
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  else
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "<color=\"#f29e38\">%s</color>"
    L8_2 = A1_2.TimesData
    L8_2 = L8_2.RemainTimes
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_tips
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L2_2
  L9_2 = A1_2.UsedTimes
  L10_2 = L5_2
  L11_2 = A1_2.TimesData
  L11_2 = L11_2.TotalTimes
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_view = L1_1
return L0_1
