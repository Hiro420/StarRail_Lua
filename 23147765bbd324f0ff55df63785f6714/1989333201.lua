local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OrFilterGroup"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.set_in_group_filter
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._filter_l = nil
  A0_2._filter_r = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._filter_l = A1_2
  A0_2._filter_r = A2_2
end
L0_1.set_in_group_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._filter_l
  L3_2 = L2_2
  L2_2 = L2_2.load_cache
  L2_2(L3_2)
  L2_2 = A0_2._filter_r
  L3_2 = L2_2
  L2_2 = L2_2.load_cache
  L2_2(L3_2)
  L2_2 = A0_2._filter_l
  L2_2 = L2_2._filter_state_cache
  L2_2 = L2_2 == nil
  L3_2 = A0_2._filter_r
  L3_2 = L3_2._filter_state_cache
  L3_2 = L3_2 == nil
  if L2_2 and L3_2 then
    return A1_2
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    if not L2_2 then
      L10_2 = A0_2._filter_l
      L11_2 = L10_2
      L10_2 = L10_2.accept
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        goto lbl_53
      end
    end
    if not L3_2 then
      L10_2 = A0_2._filter_r
      L11_2 = L10_2
      L10_2 = L10_2.accept
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      ::lbl_53::
      if L10_2 then
        L10_2 = #L4_2
        L10_2 = L10_2 + 1
        L4_2[L10_2] = L9_2
      end
    end
  end
  return L4_2
end
L0_1.filter = L1_1
return L0_1
