local L0_1, L1_1, L2_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = error
    L2_2 = "Class is nil"
    L1_2(L2_2)
  end
  L1_2 = {}
  L1_2.dataType = "Instance"
  L1_2.clsCode = A0_2
  L2_2 = setmetatable
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = nil
  function L3_2(A0_3, ...)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.super
    if L1_3 then
      L1_3 = L2_2
      L2_3 = A0_3.super
      L3_3 = ...
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_3.ctor
    if L1_3 then
      L1_3 = A0_3.ctor
      L2_3 = L1_2
      L3_3 = ...
      L1_3(L2_3, L3_3)
    end
  end
  L2_2 = L3_2
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = ...
  L3_2(L4_2, L5_2)
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if nil ~= A0_2 then
    L1_2 = A0_2.dtor
    if nil ~= L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.dtor
      L1_2(L2_2)
    end
    A0_2.dataType = nil
    A0_2.clsCode = nil
    L1_2 = setmetatable
    L2_2 = A0_2
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
end
L2_1 = G
return L2_1
