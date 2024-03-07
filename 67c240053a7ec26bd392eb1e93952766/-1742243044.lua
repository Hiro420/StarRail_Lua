local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.EventHandle.EventDispatch"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AddOnceAndCallOnceEventDispatch"
L2_1 = G
L2_1 = L2_1.EventDispatch
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.IsExistEventHandle
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = L0_1.super
    L4_2 = L4_2.AddEventHandle
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.AddEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.super
  L2_2 = L2_2.DispatchEvent
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.ClearEventHandle
  L2_2(L3_2)
end
L0_1.DispatchEvent = L1_1
return L0_1
