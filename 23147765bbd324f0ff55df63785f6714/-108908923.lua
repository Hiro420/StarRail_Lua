local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "VolumeControl"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._volume = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_add
  L4_2 = A0_2._on_btn_add_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_voice_icon
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_volume
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_stash_volume
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_text_volume
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_speaker_icon
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider
  L2_2 = L2_2.value
  L2_2 = L2_2 - 1
  L1_2.value = L2_2
end
L0_1._on_btn_minus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider
  L2_2 = L2_2.value
  L2_2 = L2_2 + 1
  L1_2.value = L2_2
end
L0_1._on_btn_add_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_obj = A1_2
  A0_2._value_change_callback = A2_2
  A0_2._stash_change_callback = A3_2
end
L0_1.reg_value_change_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._set_need_callback
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_slider
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_volume
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_stash_volume
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_text_volume
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_speaker_icon
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_need_callback
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_volume
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_num_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_out_line
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_minus
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_add
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_control_mode = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._volume = L2_2
  L2_2 = A0_2._need_callback
  if not L2_2 then
    return
  end
  L2_2 = A0_2._callback_obj
  if L2_2 then
    L2_2 = A0_2._value_change_callback
    if L2_2 then
      L2_2 = A0_2._value_change_callback
      L3_2 = A0_2._callback_obj
      L4_2 = A0_2._volume
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_volume = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._stash_volume = A1_2
  L2_2 = A0_2._need_callback
  if not L2_2 then
    return
  end
  L2_2 = A0_2._callback_obj
  if L2_2 then
    L2_2 = A0_2._stash_change_callback
    if L2_2 then
      L2_2 = A0_2._stash_change_callback
      L3_2 = A0_2._callback_obj
      L4_2 = A0_2._stash_volume
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_stash_volume = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider
  L2_2.value = A1_2
end
L0_1._setup_slider = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetText
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_volume
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetText
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_joy_stick_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_text_volume = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_on
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_off
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_speaker_icon = L1_1
function L1_1(A0_2, A1_2)
  A0_2._need_callback = A1_2
end
L0_1._set_need_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._volume
  if 0 < L1_2 then
    L1_2 = A0_2._volume
    L3_2 = A0_2
    L2_2 = A0_2._setup_slider
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_stash_volume
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_slider
    L3_2 = A0_2._stash_volume
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click_btn = L1_1
return L0_1
