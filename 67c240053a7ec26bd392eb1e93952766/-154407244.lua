local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.max_chunk_size = 24
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = A1_2 + 1
  L5_2 = A2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2
    L9_2 = A0_2[L7_2]
    L10_2 = L7_2
    L11_2 = A1_2 + 1
    L12_2 = -1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = A3_2
      L15_2 = L9_2
      L16_2 = L13_2 - 1
      L16_2 = A0_2[L16_2]
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L14_2 = L13_2 - 1
        L14_2 = A0_2[L14_2]
        A0_2[L13_2] = L14_2
      else
        L8_2 = L13_2
        break
      end
    end
    A0_2[L8_2] = L9_2
  end
end
L0_1.insertion_sort_impl = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L6_2 = 1
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = A0_2[L12_2]
    A1_2[L6_2] = L13_2
    L6_2 = L6_2 + 1
  end
  L6_2 = 1
  L7_2 = A3_2 + 1
  L8_2 = A2_2
  while not (L7_2 <= L8_2) and not (A4_2 < L7_2) do
    L9_2 = A5_2
    L10_2 = A0_2[L7_2]
    L11_2 = A1_2[L6_2]
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = A0_2[L7_2]
      A0_2[L8_2] = L9_2
      L7_2 = L7_2 + 1
    else
      L9_2 = A1_2[L6_2]
      A0_2[L8_2] = L9_2
      L6_2 = L6_2 + 1
    end
    L8_2 = L8_2 + 1
  end
  L9_2 = L8_2
  L10_2 = L7_2 - 1
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = A1_2[L6_2]
    A0_2[L12_2] = L13_2
    L6_2 = L6_2 + 1
  end
end
L0_1.merge = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = A3_2 - A2_2
  L6_2 = L0_1.max_chunk_size
  if L5_2 <= L6_2 then
    L5_2 = L0_1.insertion_sort_impl
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = A2_2 + A3_2
    L6_2 = L6_2 / 2
    L5_2 = L5_2(L6_2)
    L6_2 = L0_1.merge_sort_impl
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = L5_2
    L11_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = L0_1.merge_sort_impl
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = L5_2 + 1
    L10_2 = A3_2
    L11_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = L0_1.merge
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = L5_2
    L11_2 = A3_2
    L12_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1.merge_sort_impl = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = #A0_2
  L3_2 = false
  if L2_2 <= 1 then
    L3_2 = true
  else
    if not A1_2 then
      function L4_2(A0_3, A1_3)
        local L2_3
        L2_3 = A0_3 < A1_3
        return L2_3
      end
      A1_2 = L4_2
    end
    L4_2 = A1_2
    L5_2 = A0_2[1]
    L6_2 = A0_2[1]
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = error
      L5_2 = "invalid order function for sorting"
      L4_2(L5_2)
    end
  end
  L4_2 = L3_2
  L5_2 = L2_2
  L6_2 = A1_2
  return L4_2, L5_2, L6_2
end
L0_1.sort_setup = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1.sort_setup
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L5_2 = {}
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L3_2 + 1
    L7_2 = L7_2 / 2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2[1]
    L5_2[L6_2] = L7_2
    L6_2 = L0_1.merge_sort_impl
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = 1
    L10_2 = L3_2
    L11_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  return A0_2
end
L0_1.stable_sort = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.sort_setup
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L5_2 = L0_1.insertion_sort_impl
    L6_2 = A0_2
    L7_2 = 1
    L8_2 = L3_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  return A0_2
end
L0_1.insertion_sort = L1_1
L1_1 = table
L2_1 = L0_1.insertion_sort
L1_1.insertion_sort = L2_1
L1_1 = table
L2_1 = L0_1.stable_sort
L1_1.stable_sort = L2_1
L1_1 = table
L2_1 = table
L2_1 = L2_1.sort
L1_1.unstable_sort = L2_1
