local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerButtonPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_select
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_server_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle
  L2_2.isOn = A1_2
end
L0_1.set_select_state = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  return L1_2
end
L0_1.get_server_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_select_state
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_select = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L4_2 = ...
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2
    L3_2, L4_2 = ...
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_callback = L1_1
return L0_1
