local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "DebugTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  A0_2.ChildStatusOpen = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.ChildStatusOpen
  L1_2 = not L1_2
  A0_2.ChildStatusOpen = L1_2
  L1_2 = pairs
  L2_2 = A0_2.children
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1.SafeSetActiveByScale
    L7_2 = L5_2.button_transform
    L8_2 = A0_2.ChildStatusOpen
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1.on_click = L2_1
return L0_1
