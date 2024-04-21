local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Qte.QteComboClickPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteComboClickPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = "Menu_QTEComboClick"
L3_1 = "MiniGameQTEDialog_Click"
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L4_2 = A0_2._on_btn_click_short_down_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._tick_need_click_hint
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.count_down_bar
  L3_2 = L2_2
  L2_2 = L2_2.mono_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.combo_progress_bar
  L3_2 = L2_2
  L2_2 = L2_2.mono_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.mono_tick = L4_1
function L4_1(A0_2, A1_2)
  A0_2._cfg = A1_2
end
L0_1.set_config = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._end_callback = A1_2
  A0_2._end_handler = A2_2
end
L0_1.register_end_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_need_click_hint_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.start
  L3_2 = A0_2._cfg
  L3_2 = L3_2.Duration
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_time_out_callback
  L3_2 = A0_2._fail
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.combo_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.start
  L3_2 = A0_2._cfg
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.combo_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_progress_full_callback
  L3_2 = A0_2._success
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.combo_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_progress_empty_callback
  L3_2 = A0_2._fail
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.start = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.pc_in_control_button
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.pc_in_control_button
    L2_2 = L1_2
    L1_2 = L1_2.SetActionName
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.pc_in_control_tip
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.pc_in_control_tip
    L2_2 = L1_2
    L1_2 = L1_2.SetInControlTipKey
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._set_in_control = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._force_hide_need_click_hint
  L1_2(L2_2)
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._success = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._force_hide_need_click_hint
  L1_2(L2_2)
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._fail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.click_effect_anim
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_need_click_hint_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.combo_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.add
  L1_2(L2_2)
end
L0_1._on_btn_click_short_down_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._need_click_timer
  if L2_2 < 0 then
    return
  end
  L2_2 = A0_2._need_click_timer
  L2_2 = L2_2 - A1_2
  A0_2._need_click_timer = L2_2
  L2_2 = A0_2._need_click_timer
  if L2_2 < 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_need_click_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_need_click_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    A0_2._need_click_timer = -1
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_need_click_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1
    A0_2._need_click_timer = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_need_click_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_need_click_hint_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._need_click_timer = -1
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_need_click_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._force_hide_need_click_hint = L4_1
return L0_1
