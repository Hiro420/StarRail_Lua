local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MultipleDropUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L4_2 = L3_2.GetTopData
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.GetMultipleDropTimesData
  L6_2 = A0_2
  L7_2 = L4_2.Multiplier
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A2_2
  L6_2 = A2_2.SafeSetText
  L8_2 = L5_2.TotalTimes
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.SafeSetText
  L8_2 = L5_2.RemainTimes
  L6_2(L7_2, L8_2)
  L6_2 = L0_1.set_remain_num_text_color
  L7_2 = A1_2
  L8_2 = L5_2.RemainTimes
  L6_2(L7_2, L8_2)
end
L0_1.setup_tips_num = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 0 then
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#eb4d3d"
    L2_2 = L2_2(L3_2)
    A0_2.color = L2_2
  else
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#000000"
    L2_2 = L2_2(L3_2)
    A0_2.color = L2_2
  end
end
L0_1.set_remain_num_text_color = L1_1
