local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritPentagonPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._spirit_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_renderer
  L2_2 = L1_2
  L1_2 = L1_2.SetProgress
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 / L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.MaxPromotion
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L6_2 = "node_finish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._spirit_data
    L7_2 = L7_2.Promotion
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "node_unfinish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._spirit_data
    L7_2 = L7_2.Promotion
    L7_2 = L4_2 > L7_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_progress = L1_1
return L0_1
