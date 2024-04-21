local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrongChallengeUtil"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.Length
  if not L1_2 then
    L1_2 = #A0_2
    if not L1_2 then
      L1_2 = A0_2.Count
    end
  end
  return L1_2
end
L0_1.array_length = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "userdata" then
    L1_2 = 0
    return L1_2
  else
    L1_2 = 1
    return L1_2
  end
end
L0_1.start_index = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    A2_2 = L1_1.RANK_TEXTS
  end
  L3_2 = L0_1.start_index
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.start_index
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L0_1.array_length
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = L0_1.array_length
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L3_2 + L9_2
    L10_2 = A1_2[L10_2]
    if A0_2 >= L10_2 then
      L10_2 = L4_2 + L9_2
      L10_2 = A2_2[L10_2]
      return L10_2
    end
  end
  L6_2 = ""
  return L6_2
end
L0_1.rank_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    A2_2 = L1_1.RANK_BGS
  end
  L3_2 = L0_1.start_index
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.start_index
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L0_1.array_length
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = L0_1.array_length
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L3_2 + L9_2
    L10_2 = A1_2[L10_2]
    if A0_2 >= L10_2 then
      L10_2 = L4_2 + L9_2
      L10_2 = A2_2[L10_2]
      return L10_2
    end
  end
  L6_2 = L4_2 + L5_2
  L6_2 = L6_2 - 1
  L6_2 = A2_2[L6_2]
  return L6_2
end
L0_1.rank_bg = L2_1
return L0_1
