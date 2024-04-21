local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Generate.ActivityClockParkEndlessResultDialogBinderIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkEndlessResultDialogBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ClockPark/ClockParkInfiniteResultDialog.prefab"
  return L0_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[ClockPark] ActivityClockParkEndlessResultDialog: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
end
L1_1._on_bind = L2_1
return L1_1
