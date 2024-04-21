local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RarityStarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.node
  L5_2 = A1_2 ~= 0
  L3_2(L4_2, L5_2)
  A0_2._not_destroy = A2_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._not_destroy
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.destroy_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L2_1
return L0_1
