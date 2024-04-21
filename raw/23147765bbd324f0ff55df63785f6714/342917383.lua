local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnTriStateSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_state1
  L4_2 = A0_2._on_btn_state
  L5_2 = TriSelectState
  L5_2 = L5_2.State1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_state2
  L4_2 = A0_2._on_btn_state
  L5_2 = TriSelectState
  L5_2 = L5_2.State2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A1_2.IsSelected
  A0_2._state = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_state_changed_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_state1
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._state
  L4_2 = TriSelectState
  L4_2 = L4_2.State1
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_state2
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._state
  L4_2 = TriSelectState
  L4_2 = L4_2.State2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._state
  if L2_2 == A1_2 then
    L2_2 = TriSelectState
    L2_2 = L2_2.None
    A0_2._state = L2_2
  else
    A0_2._state = A1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_self
  L5_2 = A0_2._data
  L5_2 = L5_2.FilterType
  L6_2 = A0_2._state
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_state = L1_1
return L0_1
