local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.StaminaRecoverPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaminaModule
L0_1 = L0_1.Instance
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "StaminaRecoverPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.AddEventHandle
  L3_2 = A0_2
  L4_2 = L1_1._show_recover_time
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Stamina_GetStaminaExchange
  L4_2 = A0_2._on_get_stamina_exchange
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._on_stamina_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.send_get_stamina_exchange_cs_req
  L1_2(L2_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.RemoveEventHandle
  L3_2 = A0_2
  L4_2 = L1_1._show_recover_time
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Stamina_GetStaminaExchange
  L4_2 = A0_2._on_get_stamina_exchange
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Stamina_GetStaminaExchange
  L4_2 = A0_2._on_stamina_change
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.close_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.close_view
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_next_and_all_recover_time
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer_next
  L4_2 = L3_2
  L3_2 = L3_2.SetRemainTimeInSeconds
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer_all
  L4_2 = L3_2
  L3_2 = L3_2.SetRemainTimeInSeconds
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L1_1._show_recover_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.update_stamina_recover_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_recover_time
  L1_2(L2_2)
end
L1_1._refresh_recover_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recover_time
  L1_2(L2_2)
end
L1_1._on_stamina_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recover_time
  L1_2(L2_2)
end
L1_1._on_get_stamina_exchange = L2_1
return L1_1
