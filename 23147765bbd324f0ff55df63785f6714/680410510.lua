local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvaluateInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_progress
    L3_2.value = 1
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_progress
    L4_2 = A1_2 / A2_2
    L3_2.value = L4_2
  end
end
L0_1.setup_view = L1_1
return L0_1
