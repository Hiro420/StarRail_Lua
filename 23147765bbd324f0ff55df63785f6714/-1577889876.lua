local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonRefreshBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_refresh
  L4_2 = A0_2._on_btn_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_refresh_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._cd = A1_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._refresh_cd
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_refresh_btn_cd
  L4_2 = A0_2._refresh_cd
  L4_2 = L4_2 - A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  if A1_2 <= 0 then
    A0_2._refresh_cd = nil
    A0_2._last_cd = nil
    L3_2 = A0_2
    L2_2 = A0_2._setup_node_refresh_state
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  A0_2._refresh_cd = A1_2
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._refresh_cd
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = A0_2._last_cd
  if A1_2 == L2_2 then
    return
  end
  A0_2._last_cd = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_btn_cd
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_refresh_btn_cd = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_cd
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_refresh_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_refresh
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_node_refresh_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_refresh_state
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_refresh_btn_cd
  L3_2 = A0_2._cd
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_refresh = L1_1
return L0_1
