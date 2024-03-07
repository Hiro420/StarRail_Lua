local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseBpIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodUseBpIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "normal"
L2_1 = "ready"
L3_1 = "remind"
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Normal"
  L1_2(L2_2, L3_2)
end
L0_1.set_normal = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Remind"
  L1_2(L2_2, L3_2)
end
L0_1.set_remind = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Ready"
  L1_2(L2_2, L3_2)
end
L0_1.set_ready = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Empty"
  L1_2(L2_2, L3_2)
end
L0_1.set_empty = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.setup_view = L4_1
return L0_1
