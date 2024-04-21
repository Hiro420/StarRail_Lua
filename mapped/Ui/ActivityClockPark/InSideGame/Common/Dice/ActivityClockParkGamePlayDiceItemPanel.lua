local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkGamePlayDiceItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_regist_btn_events
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._dice_item_data = nil
  A0_2._dice_op_callback_self = nil
  A0_2._dice_click_callback = nil
  A0_2._dice_begin_drag_callback = nil
  A0_2._dice_end_drag_callback = nil
  A0_2._dice_press_callback = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._dice_item_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_up_dice_value
  L4_2 = A0_2._dice_item_data
  L4_2 = L4_2.DiceValue
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_effect_loop
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.HasOwnerSlot
  if L2_2 then
    L2_2 = A1_2.OwnerCardRef
    if L2_2 ~= nil then
      goto lbl_28
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L5_2 = A1_2.DiceIndex
  L5_2 = L5_2 + 1
  L2_2(L3_2, L4_2, L5_2)
  ::lbl_28::
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_cardid = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_dice_icon
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkUtils
  L5_2 = L5_2.get_dice_icon_path
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_particle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_up_dice_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = not A1_2
  L2_2.IsInFakeDisableState = L3_2
end
L0_1.set_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_highlight
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_highlight = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loop
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_effect_loop = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Input
  L2_2 = L2_2.mousePosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Input
  L3_2 = L3_2.mousePosition
  L3_2 = L3_2.y
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_mouse_hover_with_pos
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.is_mouse_hover = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_root
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "is_mouse_hover: \232\142\183\229\143\150\229\157\144\230\160\135\229\164\177\232\180\165"
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_root
  L4_2 = L4_2.rect
  L5_2 = L4_2
  L4_2 = L4_2.Contains
  L6_2 = L3_2
  return L4_2(L5_2, L6_2)
end
L0_1.is_mouse_hover_with_pos = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.show_tips = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_dice_icon_visible = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_lock = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_dice_locked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_particle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.show_fade_in_anim = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._dice_op_callback_self = A1_2
  A0_2._dice_click_callback = A2_2
  A0_2._dice_press_callback = A3_2
  A0_2._dice_begin_drag_callback = A4_2
  A0_2._dice_end_drag_callback = A5_2
  A0_2._pointer_down = false
  A0_2._in_long_click = false
  A0_2._dragging = false
end
L0_1.register_dice_op_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback_self = A1_2
  A0_2._on_select_callback = A2_2
end
L0_1.register_dice_select_handler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
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
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_down
    L0_3(L1_3)
  end
  L1_2.OnDownTrigger = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_up
    L0_3(L1_3)
  end
  L1_2.OnUpTrigger = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_event_trigger_pointer_exit
    L0_3(L1_3)
  end
  L1_2.OnExitTrigger = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_select_trigger
    L0_3(L1_3)
  end
  L2_2.onSelectTrigger = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_deselect_trigger
    L0_3(L1_3)
  end
  L2_2.onDeselectTrigger = L3_2
end
L0_1._init_regist_btn_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ClockPark_Script_Ending_Unlock_Toast"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_click_callback
  L3_2 = A0_2._dice_op_callback_self
  L4_2 = A0_2._dice_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    return
  end
  L1_2 = A0_2._dice_item_data
  if L1_2 ~= nil then
    L1_2 = A0_2._dice_item_data
    L1_2 = L1_2.HasOwnerSlot
    if not L1_2 then
      L1_2 = A0_2._dragging
      if not L1_2 then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  A0_2._in_long_click = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_press_callback
  L3_2 = A0_2._dice_op_callback_self
  L4_2 = A0_2._dice_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root_long_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    return
  end
  L1_2 = A0_2._dice_item_data
  if L1_2 ~= nil then
    L1_2 = A0_2._dice_item_data
    L1_2 = L1_2.HasOwnerSlot
    if not L1_2 then
      L1_2 = A0_2._dragging
      if not L1_2 then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  A0_2._in_long_click = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_press_callback
  L3_2 = A0_2._dice_op_callback_self
  L4_2 = nil
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root_long_click_release = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    return
  end
  A0_2._pointer_down = true
end
L0_1._on_event_trigger_pointer_down = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    return
  end
  L1_2 = A0_2._pointer_down
  if L1_2 then
    A0_2._pointer_down = false
  end
  L1_2 = A0_2._dragging
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_end_drag_callback
  L3_2 = A0_2._dice_op_callback_self
  L4_2 = A0_2._dice_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._dragging = false
end
L0_1._on_event_trigger_pointer_up = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    return
  end
  L1_2 = A0_2._pointer_down
  if not L1_2 then
    return
  end
  L1_2 = A0_2._dice_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_begin_drag_callback
  L3_2 = A0_2._dice_op_callback_self
  L4_2 = A0_2._dice_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._pointer_down = false
  A0_2._dragging = true
end
L0_1._on_event_trigger_pointer_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enable_action
  L3_2 = true
  L4_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_select_callback
  L3_2 = A0_2._on_select_callback_self
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_select_trigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enable_action
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_select_callback
  L3_2 = A0_2._on_select_callback_self
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_deselect_trigger = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_first_selectable_cmpt = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  A0_2._action_name = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_control_btn
  L3_2.ActionEnabled = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_control_tip
  L3_2.IsShowTip = A1_2
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_in_control_btn
    L4_2 = L3_2
    L3_2 = L3_2.SetActionName
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_in_control_tip
    L4_2 = L3_2
    L3_2 = L3_2.SetInControlTipKey
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_enable_action = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L1_2.IsShowTip = false
end
L0_1.close_action_tip = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.position
  return L1_2
end
L0_1.get_trans_pos = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._action_name
  return L1_2
end
L0_1.get_action_name = L1_1
return L0_1
