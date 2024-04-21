local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select
  L4_2 = A0_2._on_btn_select_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_select_click
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_select
    L1_3 = L0_3
    L0_3 = L0_3.SetChecked
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._server_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2.DisplayName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._server_data
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_select_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
