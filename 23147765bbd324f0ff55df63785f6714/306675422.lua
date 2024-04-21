local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonSelectTriggerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_self = A2_2
end
L0_1.register_select_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._deselect_callback = A1_2
  A0_2._deselect_callback_self = A2_2
end
L0_1.register_deselect_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._param = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_event
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_event
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L1_2(L2_2, L3_2)
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select_trigger
    L0_3(L1_3)
  end
  A0_2._on_select = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect_trigger
    L0_3(L1_3)
  end
  A0_2._on_deselect = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = A0_2._on_select
    L1_2.onSelectTrigger = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = A0_2._on_deselect
    L1_2.onDeselectTrigger = L2_2
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_pc_mode
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.EventTriggerListener
      L1_2 = L1_2.Get
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._on_select
      L1_2.OnEnterTrigger = L2_2
      L2_2 = A0_2._on_deselect
      L1_2.OnExitTrigger = L2_2
    else
      L2_2 = A0_2
      L1_2 = A0_2._bind_gesture
      L3_2 = GestureType
      L3_2 = L3_2.TouchStart
      L4_2 = A0_2._on_touch_start
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_gesture
      L3_2 = GestureType
      L3_2 = L3_2.TouchUp
      L4_2 = A0_2._on_touch_end
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_long_click
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L4_2 = A0_2._on_select
      L5_2 = true
      L6_2 = 0
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_release
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L4_2 = A0_2._on_deselect
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.EventTriggerListener
      L1_2 = L1_2.Get
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      L1_2 = L1_2(L2_2)
      function L2_2()
        local L0_3, L1_3
        L0_3 = A0_2._in_pressing
        if L0_3 then
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._on_select
          L0_3(L1_3)
        end
      end
      L1_2.OnEnterTrigger = L2_2
    end
  end
end
L0_1._setup_btn_event = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_callback
  if L1_2 then
    L1_2 = A0_2._select_callback_self
    if L1_2 then
      L1_2 = A0_2._select_callback
      L2_2 = A0_2._select_callback_self
      L3_2 = A0_2._param
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_pop_up_tip
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_pop_up_tip
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_select_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._deselect_callback
  if L1_2 then
    L1_2 = A0_2._deselect_callback_self
    if L1_2 then
      L1_2 = A0_2._deselect_callback
      L2_2 = A0_2._deselect_callback_self
      L3_2 = A0_2._param
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_pop_up_tip
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_pop_up_tip
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_deselect_trigger = L2_1
function L2_1(A0_2, A1_2)
  A0_2._in_pressing = true
end
L0_1._on_touch_start = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_pressing = false
  L3_2 = A0_2
  L2_2 = A0_2._on_deselect
  L2_2(L3_2)
end
L0_1._on_touch_end = L2_1
return L0_1
