local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FunctorCmp"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._EventListener = nil
  A0_2._EventHandle = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._EventListener = A1_2
  A0_2._EventHandle = A2_2
end
L0_1.SetPThisAndHandle = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._EventHandle = nil
  A0_2._EventListener = nil
end
L0_1.Clear = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._EventListener
  if nil ~= L1_2 then
    L1_2 = A0_2._EventHandle
    if nil ~= L1_2 then
      L1_2 = true
      return L1_2
  end
  else
    L1_2 = A0_2._EventHandle
    if nil ~= L1_2 then
      L1_2 = true
      return L1_2
    else
      L1_2 = false
      return L1_2
    end
  end
end
L0_1.IsValid = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._EventListener
  if nil ~= L2_2 then
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = A0_2._EventListener
      L4_2 = A1_2
      return L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = A1_2
      return L2_2(L3_2)
    else
      L2_2 = 0
      return L2_2
    end
  end
end
L0_1.CallOneParam = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._EventListener
  if nil ~= L3_2 then
    L3_2 = A0_2._EventHandle
    if nil ~= L3_2 then
      L3_2 = A0_2._EventHandle
      L4_2 = A0_2._EventListener
      L5_2 = A1_2
      L6_2 = A2_2
      return L3_2(L4_2, L5_2, L6_2)
  end
  else
    L3_2 = A0_2._EventHandle
    if nil ~= L3_2 then
      L3_2 = A0_2._EventHandle
      L4_2 = A1_2
      L5_2 = A2_2
      return L3_2(L4_2, L5_2)
    else
      L3_2 = 0
      return L3_2
    end
  end
end
L0_1.CallTwoParam = L1_1
return L0_1
