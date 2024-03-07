local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarHPBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.3
function L2_1(A0_2)
  local L1_2
  L1_2 = L1_1
  A0_2._red_ratio = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._red_ratio
  L3_2 = A1_2 <= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hp_danger
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hp_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hp_plus
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 ~= nil
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.smooth_mask_progress
  L4_2.value = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_empty_image
  L4_2.value = A1_2
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_plus_image
    L4_2.value = A2_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._red_ratio = A1_2
end
L0_1.set_hp_red_ratio = L2_1
return L0_1
