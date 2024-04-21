local L0_1, L1_1
L0_1 = require
L1_1 = "Base.EventHandle.AddOnceEventDispatch"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventRegisterItem"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AddOnceEventDispatch
  L1_2 = L1_2(L2_2)
  A0_2.EventDispatch = L1_2
  A0_2.BindEventHandle = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.EventDispatch = nil
  A0_2.BindEventHandle = nil
end
L0_1.Dispose = L1_1
return L0_1
