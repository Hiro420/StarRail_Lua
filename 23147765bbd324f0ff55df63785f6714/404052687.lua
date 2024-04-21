local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RemainTimePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RemainTimePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._time = 0
  A0_2._accumulation = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._callback = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._time = A1_2
  A0_2._accumulation = 0
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup = L2_1
function L2_1(A0_2, A1_2)
  A0_2._callback = A1_2
end
L0_1.bind_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._accumulation
  L2_2 = L2_2 + A1_2
  A0_2._accumulation = L2_2
  L2_2 = A0_2._accumulation
  if 1 < L2_2 then
    L2_2 = A0_2._accumulation
    L2_2 = L2_2 - 1
    A0_2._accumulation = L2_2
    L2_2 = A0_2._time
    L2_2 = L2_2 - 1
    A0_2._time = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.refresh
    L2_2(L3_2)
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._time
  if L1_2 < 0 then
    L1_2 = A0_2._callback
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L1_2()
    end
    return
  end
  L1_2 = A0_2._time
  L1_2 = L1_2 % 60
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2._time
  L3_2 = L3_2 % 3600
  L3_2 = L3_2 - L1_2
  L3_2 = L3_2 / 60
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2._time
  L4_2 = L4_2 / 3600
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_hour
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_min
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_sec
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
end
L0_1.refresh = L2_1
return L0_1
