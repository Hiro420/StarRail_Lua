local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MathUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 and A0_2 == 1 and A1_2 == 2 then
    L3_2 = 1
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.fmod
  L4_2 = A0_2 - 1
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2 or L4_2
  if L3_2 ~= 0 or not A1_2 then
    L4_2 = L3_2
  end
  return L4_2
end
L0_1.get_pre_circular_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 and A0_2 == 2 and A1_2 == 2 then
    L3_2 = 2
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.fmod
  L4_2 = A0_2 + 1
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2 or L4_2
  if L3_2 ~= 0 or not A1_2 then
    L4_2 = L3_2
  end
  return L4_2
end
L0_1.get_next_circular_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  elseif A2_2 < A0_2 then
    return A2_2
  else
    return A0_2
  end
end
L0_1.get_clamp = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = 1 - A2_2
  L3_2 = A0_2 * L3_2
  L4_2 = A1_2 * A2_2
  L3_2 = L3_2 + L4_2
  return L3_2
end
L0_1.lerp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2 - A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 < 0.001
  return L2_2
end
L0_1.float_equal = L1_1
function L1_1(A0_2)
  local L1_2
  if 0 <= A0_2 then
    L1_2 = 1
    return L1_2
  else
    L1_2 = -1
    return L1_2
  end
end
L0_1.get_sign = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.digit_num
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if -1 == L2_2 then
    L3_2 = -1
    return L3_2
  elseif A0_2 <= L2_2 then
    L3_2 = tostring
    L4_2 = A1_2
    return L3_2(L4_2)
  else
    L3_2 = ""
    L4_2 = 1
    L5_2 = A0_2 - L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2
      L9_2 = "0"
      L3_2 = L8_2 .. L9_2
    end
    L4_2 = L3_2
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    return L4_2
  end
end
L0_1.add_zero_front_num = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= A0_2 or A0_2 < 0 then
    L1_2 = -1
    return L1_2
  elseif 0 == A0_2 then
    L1_2 = 1
    return L1_2
  else
    L1_2 = 0
    while 0 < A0_2 do
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = A0_2 / 10
      L2_2 = L2_2(L3_2)
      A0_2 = L2_2
      L1_2 = L1_2 + 1
    end
    return L1_2
  end
end
L0_1.digit_num = L1_1
return L0_1
