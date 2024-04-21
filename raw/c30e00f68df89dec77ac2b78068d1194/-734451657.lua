local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonTabGroupItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._data = A1_2
  A0_2._index = A2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.title
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_border_view
  L3_2 = A0_2._data
  L3_2 = L3_2.isLeft
  L4_2 = A0_2._data
  L4_2 = L4_2.isRight
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_border
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_right_border
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_right_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_border_view = L1_1
return L0_1
