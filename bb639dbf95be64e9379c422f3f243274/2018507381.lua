local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureArrowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._can_left = true
  A0_2._can_right = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._can_left = A1_2
  A0_2._can_right = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_last
  L3_2.interactable = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L3_2.interactable = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_last_enable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_last_disable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_next_enable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_next_disable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.control_tip_btn_last
  L3_2.IsShowTip = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.control_tip_btn_next
  L3_2.IsShowTip = A2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_tip_btn_last
  L2_2 = A0_2._can_left
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_tip_btn_next
  L2_2 = A0_2._can_right
  L1_2.IsShowTip = L2_2
end
L0_1._on_leave_special_zoom = L1_1
return L0_1
