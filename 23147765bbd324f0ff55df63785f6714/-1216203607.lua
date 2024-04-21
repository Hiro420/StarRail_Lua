local L0_1, L1_1, L2_1, L3_1
L0_1 = 0.3
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicReplaceToggleBtnPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._on_btn_tips = nil
  A0_2._off_btn_tips = nil
  A0_2._callback_func = nil
  A0_2._callback_func_self = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_func = A1_2
  A0_2._callback_func_self = A2_2
end
L1_1.register_switch_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._is_on = A1_2
  A0_2._on_btn_tips = A2_2
  A0_2._off_btn_tips = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_btn_status
  L4_2(L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._is_on
    L0_3 = not L0_3
    A0_2._is_on = L0_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._callback_func
    L2_3 = A0_2._callback_func_self
    L3_3 = A0_2._is_on
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_btn_status
    L0_3(L1_3)
  end
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_on
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._on_btn_tips
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._off_btn_tips
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_on
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_on
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_on
  L1_2(L2_2, L3_2)
end
L1_1._refresh_btn_status = L2_1
return L1_1
