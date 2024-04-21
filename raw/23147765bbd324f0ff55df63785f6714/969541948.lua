local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JigsawChildDialogOpenState"
L2_1 = G
L2_1 = L2_1.BaseState
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.set_interactable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.enter = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.set_interactable
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.exit = L1_1
return L0_1
