local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.ChallengeFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  A0_2._event_trigger_listener = L1_2
  L1_2 = A0_2._event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_enter
    L0_3(L1_3)
  end
  L1_2.OnEnterTrigger = L2_2
  L1_2 = A0_2._event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_exit
    L0_3(L1_3)
  end
  L1_2.OnExitTrigger = L2_2
  L1_2 = A0_2._event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_down
    L0_3(L1_3)
  end
  L1_2.OnDownTrigger = L2_2
  L1_2 = A0_2._event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_select
    L0_3(L1_3)
  end
  L1_2.OnSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init_for_ui3d = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_root
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2.x
  L5_2 = A1_2.y
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localPosition = L3_2
end
L0_1.set_screen_space_position = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._challenge_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = A0_2._on_click
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
end
L0_1.bind_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  return L1_2
end
L0_1.get_challenge_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_click_item
  if L2_2 then
    L2_2 = A0_2._click_event_listner
    if L2_2 then
      L2_2 = A0_2._on_click_item
      L3_2 = A0_2._click_event_listner
      L4_2 = A1_2
      L5_2 = A0_2
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2.save_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_root
      L4_2 = L4_2.gameObject
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    A0_2._index = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_index
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.add_zero_front_num
    L5_2 = 2
    L6_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.set_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._index
  return L1_2
end
L0_1.get_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_button = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_data = nil
  A0_2._on_enter_exit_callback_handler = nil
  A0_2._on_enter_exit_callback_listener = nil
  A0_2._on_press_callback_handler = nil
  A0_2._on_press_callback_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_progress_stars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._challenge_data
    L8_2 = L8_2.Stars
    L8_2 = L4_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_progress = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_enter_exit_callback_handler = A1_2
  A0_2._on_enter_exit_callback_listener = A2_2
end
L0_1.register_enter_exit_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_enter_exit_callback_handler
  if L1_2 then
    L1_2 = A0_2._on_enter_exit_callback_handler
    L2_2 = A0_2._on_enter_exit_callback_listener
    L3_2 = true
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_event_trigger_pointer_enter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_enter_exit_callback_handler
  if L1_2 then
    L1_2 = A0_2._on_enter_exit_callback_handler
    L2_2 = A0_2._on_enter_exit_callback_listener
    L3_2 = false
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_event_trigger_pointer_exit = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_press_callback_handler = A1_2
  A0_2._on_press_callback_listener = A2_2
end
L0_1.register_press_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_press_callback_handler
  if L1_2 then
    L1_2 = A0_2._on_press_callback_handler
    L2_2 = A0_2._on_press_callback_listener
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_event_trigger_pointer_down = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback_handler = A1_2
  A0_2._on_select_callback_listener = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback_handler
  if L1_2 then
    L1_2 = A0_2._on_select_callback_handler
    L2_2 = A0_2._on_select_callback_listener
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_event_trigger_pointer_select = L1_1
return L0_1
