local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RedDotNew"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = {}
L3_1.Invalid = 0
L3_1.Normal = 1
L3_1.Number = 2
L3_1.New = 3
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.is_destroyed
    if not L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh = L4_1
return L0_1
