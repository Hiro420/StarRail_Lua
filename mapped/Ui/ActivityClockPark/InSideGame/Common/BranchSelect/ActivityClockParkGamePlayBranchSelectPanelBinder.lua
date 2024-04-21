local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Generate.ActivityClockParkGamePlayBranchSelectPanelBinderIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayBranchSelectPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.root
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._safe_find
    L3_2 = ""
    L1_2 = L1_2(L2_2, L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.auto_bind
  L4_2 = L0_1
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "[%s] auto bind fail"
    L4_2 = A0_2.__name
    L2_2(L3_2, L4_2)
    return
  end
end
L1_1._on_bind = L2_1
return L1_1
