local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.EventHandle.EventDispatch"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CallOnceEventDispatch"
L2_1 = G
L2_1 = L2_1.EventDispatch
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
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
