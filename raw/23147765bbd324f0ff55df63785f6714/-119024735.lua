local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameFastDeliverPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameFastDeliverPanel"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2.value = 180
  A0_2._slider_value = 0
  A0_2._callback_obj = nil
  A0_2._callback_func = nil
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MiniGameFastDeliverPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2.value = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_control_mode
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_num_panel
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider
  L3_2 = A0_2.value
  L3_2 = L3_2 - 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_minus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider
  L3_2 = A0_2.value
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_add_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_add
  L4_2 = A0_2._on_btn_add_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_value
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_text_value
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_min_max_value
  L3_2 = 0
  L4_2 = 360
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider
  L3_2 = A0_2.value
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._event_trigger_listener
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EventTriggerListener
    L3_2 = L3_2.Get
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_click_area
    L4_2 = L4_2.gameObject
    L3_2 = L3_2(L4_2)
    A0_2._event_trigger_listener = L3_2
  end
  L3_2 = A0_2._event_trigger_listener
  function L4_2()
    local L0_3, L1_3
    L0_3 = A2_2
    L1_3 = A1_2
    L0_3(L1_3)
  end
  L3_2.OnDownTrigger = L4_2
end
L0_1.reg_drag_start_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._event_trigger_listener
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EventTriggerListener
    L3_2 = L3_2.Get
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_click_area
    L4_2 = L4_2.gameObject
    L3_2 = L3_2(L4_2)
    A0_2._event_trigger_listener = L3_2
  end
  L3_2 = A0_2._event_trigger_listener
  function L4_2()
    local L0_3, L1_3
    L0_3 = A2_2
    L1_3 = A1_2
    L0_3(L1_3)
  end
  L3_2.OnUpTrigger = L4_2
end
L0_1.reg_drag_finish_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider
  L3_2.minValue = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider
  L3_2.maxValue = A2_2
end
L0_1.set_min_max_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_slider
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.value = A1_2
  L2_2 = A0_2.value
  A0_2.slider_value = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._callback_obj
  if L2_2 ~= nil then
    L2_2 = A0_2._callback_func
    if L2_2 ~= nil then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L2_2 = A0_2._callback_func
  L3_2 = A0_2._callback_obj
  L4_2 = A0_2.value
  L2_2(L3_2, L4_2)
end
L0_1._set_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider
  L2_2.value = A1_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_slider = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_joy_stick_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_text_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.value
  if L1_2 == 0 then
    L1_2 = A0_2._slider_value
    if 0 < L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_slider
      L3_2 = A0_2._slider_value
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_slider
      L3_2 = A0_2._binder
      L3_2 = L3_2.slider
      L3_2 = L3_2.maxValue
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider
    L1_2 = L1_2.value
    A0_2._slider_value = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_slider
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click_btn = L1_1
return L0_1
