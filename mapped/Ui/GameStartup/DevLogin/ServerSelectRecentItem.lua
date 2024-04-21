local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectRecentItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.server_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_confirm_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._server_name = nil
  A0_2._btn_callback = nil
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.server_btn
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.server_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._server_name = A1_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._btn_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._btn_callback
  L2_2 = A0_2._server_name
  L1_2(L2_2)
end
L0_1._on_btn_confirm_click = L1_1
return L0_1
