local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EntityTimelineRatioPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._fov_step_ratio = 0.05
L0_1._long_press_fov_step_ratio = 0.01
L0_1._long_press_repeat_time = 0.01
L0_1._fov_max_ratio = 1
L0_1._fov_min_ratio = 0
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slider_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_fov
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_plus
  L4_2 = A0_2._on_btn_fov_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_minus
  L4_2 = A0_2._on_btn_fov_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_plus
  L4_2 = A0_2._on_long_btn_fov_plus
  L5_2 = nil
  L6_2 = nil
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_minus
  L4_2 = A0_2._on_long_btn_fov_minus
  L5_2 = nil
  L6_2 = nil
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.set_ratio
    L3_3 = A0_3
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_slider_fov = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 1
  L3_2 = A0_2
  L2_2 = A0_2._get_valid_ratio
  L4_2 = 1 - L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_fov_slider_value = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._set_slider_value
  L4_2 = A0_2._cur_fov_slider_value
  L2_2(L3_2, L4_2)
end
L0_1.setup_fov = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_valid_ratio
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._cur_fov_slider_value
  if L3_2 ~= L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._set_slider_value
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if A2_2 then
      L5_2 = A0_2
      L4_2 = A0_2._on_slider_value_change
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    A0_2._cur_fov_slider_value = L3_2
  elseif L3_2 ~= A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._set_slider_value
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_ratio = L1_1
function L1_1(A0_2, A1_2)
  A0_2._timeline_page_csharp = A1_2
end
L0_1.bind_csharp_proxy = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.value
  return L1_2
end
L0_1.get_cur_fov_ratio = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = PhotoGraphModule
  L3_2 = L3_2.CurFOVRatio
  L1_2(L2_2, L3_2)
end
L0_1.recover_fov_ratio = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._timeline_page_csharp
  if L2_2 ~= nil then
    L2_2 = A0_2._timeline_page_csharp
    L3_2 = L2_2
    L2_2 = L2_2.OnTimelineRatioChange
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_slider_value_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_fov_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_fov_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L0_1._fov_max_ratio
  if L1_2 >= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L3_2 = L3_2.AudioConfig
  L3_2 = L3_2.EventUISliderPlus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._long_press_fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_fov_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L0_1._fov_min_ratio
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L3_2 = L3_2.AudioConfig
  L3_2 = L3_2.EventUISliderMinus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._long_press_fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_fov_minus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_fov
  L4_2 = A0_2
  L3_2 = A0_2._get_valid_ratio
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.value = L3_2
end
L0_1._set_slider_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1._fov_min_ratio
  L3_2 = L0_1._fov_max_ratio
  L4_2 = A0_2._timeline_page_csharp
  if L4_2 ~= nil then
    L4_2 = A0_2._timeline_page_csharp
    L2_2 = L4_2.TimelineMinRatio
    L4_2 = A0_2._timeline_page_csharp
    L3_2 = L4_2.TimelineMaxRatio
  end
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = A1_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A1_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  A1_2 = L4_2
  return A1_2
end
L0_1._get_valid_ratio = L1_1
return L0_1
