local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhotoGraphFovPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L1_1._fov_step_ratio = 0.05
L1_1._long_press_fov_step_ratio = 0.01
L1_1._long_press_repeat_time = 0.01
L1_1._fov_max_ratio = 1
L1_1._fov_min_ratio = 0
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slider_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_fov
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
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
  L7_2 = L1_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_minus
  L4_2 = A0_2._on_long_btn_fov_minus
  L5_2 = nil
  L6_2 = nil
  L7_2 = L1_1._long_press_repeat_time
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
    L1_3 = L1_3._get_valid_ratio
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 ~= A0_3 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._set_slider_value
      L4_3 = A0_2._cur_fov_slider_value
      L2_3(L3_3, L4_3)
    end
    A0_2._cur_fov_slider_value = L1_3
    L2_3 = A0_2._cur_fov_slider_value
    L2_3 = 1 - L2_3
    A0_2._cur_fov_ratio = L2_3
    L2_3 = G
    L2_3 = L2_3.NotifyManager
    L2_3 = L2_3.notify
    L3_3 = G
    L3_3 = L3_3.CS
    L3_3 = L3_3.NotifyType
    L3_3 = L3_3.PhotoGraphFovChanged
    L4_3 = A0_2._cur_fov_ratio
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._init_slider_fov = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.PhotoGraphSys
  L4_2 = L2_2
  L3_2 = L2_2.GetInitFov
  L3_2 = L3_2(L4_2)
  if L3_2 < 0 then
    L4_2 = G
    L4_2 = L4_2.PhotoGraphUtils
    L4_2 = L4_2.get_roaming_config
    L4_2 = L4_2()
    if L4_2 then
      L3_2 = L4_2.InitFovRatio
    else
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogError
      L6_2 = "RoamingConfig Not Exist!!"
      L5_2(L6_2)
      return
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_valid_ratio
  L6_2 = 1 - L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._cur_fov_slider_value = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._set_slider_value
  L6_2 = A0_2._cur_fov_slider_value
  L4_2(L5_2, L6_2)
end
L1_1.setup_fov = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.value
  return L1_2
end
L1_1.get_cur_fov_ratio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = L0_1.CurFOVRatio
  L1_2(L2_2, L3_2)
end
L1_1.recover_fov_ratio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L1_1._fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_fov_plus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L1_1._fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_fov_minus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L1_1._fov_max_ratio
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
  L4_2 = L1_1._long_press_fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L1_1._on_long_btn_fov_plus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L1_1._fov_min_ratio
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
  L4_2 = L1_1._long_press_fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L1_1._on_long_btn_fov_minus = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_fov
  L4_2 = A0_2
  L3_2 = A0_2._get_valid_ratio
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.value = L3_2
end
L1_1._set_slider_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A1_2
  L4_2 = L1_1._fov_max_ratio
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A1_2
  L4_2 = L1_1._fov_min_ratio
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  return A1_2
end
L1_1._get_valid_ratio = L2_1
return L1_1
