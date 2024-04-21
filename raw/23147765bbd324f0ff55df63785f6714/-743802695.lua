local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EmptyAction"
L2_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_finished
  L1_2(L2_2)
end
L0_1.do_action = L1_1
return L0_1
