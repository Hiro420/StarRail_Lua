local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JigsawUINavigationState"
L2_1 = G
L2_1 = L2_1.BaseState
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = (...)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] target: "
    L4_2 = tostring
    L5_2 = ...
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L3_2 = A1_2
    L2_2 = A1_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    L4_2 = A1_2
    L3_2 = A1_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2
    L2_2 = A1_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    L4_2 = A1_2
    L3_2 = A1_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.setup_short_cut_hint_panel
  L4_2 = 32
  L2_2(L3_2, L4_2)
end
L0_1.enter = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2.clear_cur_selected_object
  L2_2(L3_2)
end
L0_1.exit = L1_1
return L0_1
