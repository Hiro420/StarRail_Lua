local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SubStarInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_preview
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_preview
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_preview
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_preview
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node
  L4_2 = A1_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unactive
  L4_2 = A1_2 == 0
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_preview
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.show_preview = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_animation = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
