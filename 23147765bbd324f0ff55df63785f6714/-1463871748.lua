local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffIconListNode"
L2_1 = G
L2_1 = L2_1.BuffIconNode
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L2_2 = A0_2.super
    L2_2 = L2_2.setup_view
    L3_2 = A0_2
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.super
    L2_2 = L2_2.setup_view
    L3_2 = A0_2
    L4_2 = A1_2.data
    L5_2 = A1_2.anim_name
    L6_2 = A1_2.is_permanent
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
