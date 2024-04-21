local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GenderConfirmPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "DefinePanel_PressEff_FadeIn"
L2_1 = "DefinePanel_PressEff_FadeOut"
L3_1 = 1
function L4_1(A0_2)
  local L1_2
  A0_2._is_finish = false
  A0_2._begin_time_stamp = 0
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_confirm_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._preload_callback = A1_2
  A0_2._preload_callback_self = A2_2
end
L0_1.set_preload_cutscene_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_confirm_progress
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnApplicationFocusChange
  L4_2 = L0_1._on_application_focus_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_confirm_progress
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_finish
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._finish_timer = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._finish_effect_timer = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_over_short_click_time
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_start_press
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_release
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_confirm_btn_release
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_pressing_down
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_confirm_btn_press
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_long_press_begin
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_long_press_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._finish_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_confirm_progress
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_confirm
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
  A0_2._is_finish = false
end
L0_1._reset_confirm_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time_stamp = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_effect
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "CreatePlayer LongPress Begin"
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Time
  L3_2 = L3_2.time
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1._on_start_press = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_finish
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_confirm_progress
    L3_2 = 1
    L1_2(L2_2, L3_2)
    A0_2._is_finish = true
    L1_2 = A0_2._finish_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._finish_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_finish
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._preload_callback
    if L1_2 then
      L1_2 = A0_2._preload_callback_self
      if L1_2 then
        L1_2 = A0_2._preload_callback
        L2_2 = A0_2._preload_callback_self
        L1_2(L2_2)
      end
    end
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "CreatePlayer LongPress Finish"
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Time
    L3_2 = L3_2.time
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L0_1._on_long_press_begin = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._begin_time_stamp
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.long_press_confirm
  L3_2 = L3_2.TotalTime
  L2_2 = L2_2 / L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_confirm_progress
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_confirm_btn_press = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_finish
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_effect
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_confirm_progress
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_confirm_btn_release = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_finish
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.long_press_confirm
    L3_2 = L2_2
    L2_2 = L2_2.Reset
    L2_2(L3_2)
  end
end
L0_1._on_application_focus_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._confirm_progress = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_confirm
  L3_2 = A0_2._confirm_progress
  L2_2.value = L3_2
end
L0_1._set_confirm_progress = L4_1
return L0_1
