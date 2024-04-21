local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonSettingItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_select_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._param_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._param_data
  L5_2 = L5_2.text_id
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.key
  L3_2 = L3_2 == A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L5_2 = L4_2
  L4_2 = L4_2.SetChecked
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._param_data
    L1_2(L2_2)
  end
end
L0_1._on_btn_select_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
