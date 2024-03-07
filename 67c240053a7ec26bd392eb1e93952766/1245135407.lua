local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FunctorCallBase"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._EventHandle = nil
  A0_2._EventListener = nil
  A0_2._Param = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
end
L0_1.SetPThisAndHandle = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._EventListener = nil
  A0_2._EventHandle = nil
  A0_2._Param = nil
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
function L1_1(A0_2)
  local L1_2
end
L0_1.Call = L1_1
return L0_1
