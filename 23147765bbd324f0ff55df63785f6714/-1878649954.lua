local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ClockParkCardTipsTypeEnum
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlaySlotItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_ui_empty = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice_item
  L2_2 = L1_2
  L1_2 = L1_2.register_dice_op_callback
  L3_2 = A0_2
  L4_2 = A0_2._slot_click
  L5_2 = A0_2._slot_press
  L6_2 = A0_2._slot_begin_drag
  L7_2 = A0_2._slot_end_drag
  L8_2 = A0_2._slot_on_drag
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice_item
  L2_2 = L1_2
  L1_2 = L1_2.register_dice_select_handler
  L3_2 = A0_2
  L4_2 = A0_2._on_slot_select_trigger
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._slot_item = nil
  A0_2._empty_click_callback_self = nil
  A0_2._empty_click_callback = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._slot_item = A1_2
  L2_2 = A1_2.IsEmpty
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_item
  L4_2 = L3_2
  L3_2 = L3_2.set_dice_icon_visible
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_item
  L4_2 = L3_2
  L3_2 = L3_2.setup_cardid
  L5_2 = A0_2._slot_item
  L5_2 = L5_2.OwnerCardRef
  L5_2 = L5_2.CardID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_item
  L4_2 = L3_2
  L3_2 = L3_2.set_interactable
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.IsEmpty
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_dice_item
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2.InSlotDice
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._is_ui_empty
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_dice_item
      L4_2 = L3_2
      L3_2 = L3_2.show_fade_in_anim
      L3_2(L4_2)
    end
  end
  L3_2 = A1_2.IsEmpty
  A0_2._is_ui_empty = L3_2
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._slot_item
  L2_2 = L2_2 ~= nil
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_dice_item
    L4_2 = L3_2
    L3_2 = L3_2.show_tips
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A1_2.CardTipsType
  L4_2 = L0_1.Ground
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.ActivityClockParkUtils
    L3_2 = L3_2.get_ground_card_value_param
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = A1_2.CardTipsParam
  ::lbl_34::
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_dice_item
  L5_2 = L4_2
  L4_2 = L4_2.show_tips
  L6_2 = L2_2
  L7_2 = A1_2.CardTips
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1.show_card_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.set_effect_loop
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.show_effect_loop = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.set_highlight
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_show_highlight = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  A0_2._dice_op_callback_self = A1_2
  A0_2._dice_click_callback = A2_2
  A0_2._dice_press_callback = A3_2
  A0_2._dice_begin_drag_callback = A4_2
  A0_2._dice_end_drag_callback = A5_2
  A0_2._dice_on_drag_callback = A6_2
end
L1_1.register_dice_op_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._empty_click_callback_self = A1_2
  A0_2._empty_click_callback = A2_2
end
L1_1.register_empty_slot_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._slot_select_callback_self = A1_2
  A0_2._slot_select_callback = A2_2
end
L1_1.register_slot_select_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.is_mouse_hover_with_pos
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L1_1.is_mouse_hover = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._slot_item
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._slot_item
  L3_2 = L3_2.IsEmpty
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._empty_click_callback
    L5_2 = A0_2._empty_click_callback_self
    L6_2 = A0_2._slot_item
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._dice_click_callback
    L5_2 = A0_2._dice_op_callback_self
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_slot_select_trigger
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L1_1._slot_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._slot_item
  if L3_2 ~= nil then
    L3_2 = A0_2._slot_item
    L3_2 = L3_2.IsEmpty
    if not L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._dice_press_callback
  L5_2 = A0_2._dice_op_callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._slot_press = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._slot_item
  if L3_2 ~= nil then
    L3_2 = A0_2._slot_item
    L3_2 = L3_2.IsEmpty
    if not L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._dice_begin_drag_callback
  L5_2 = A0_2._dice_op_callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._slot_begin_drag = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._slot_item
  if L3_2 ~= nil then
    L3_2 = A0_2._slot_item
    L3_2 = L3_2.IsEmpty
    if not L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._dice_end_drag_callback
  L5_2 = A0_2._dice_op_callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._slot_end_drag = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._slot_item
  if L3_2 ~= nil then
    L3_2 = A0_2._slot_item
    L3_2 = L3_2.IsEmpty
    if not L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._dice_on_drag_callback
  L5_2 = A0_2._dice_op_callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._slot_on_drag = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice_item
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L1_1.get_selectable_cmpt = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.close_action_tip
  L2_2(L3_2)
  L2_2 = A0_2._slot_item
  L2_2 = A0_2._slot_item
  L2_2 = L2_2 ~= nil and L2_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._slot_select_callback
  L5_2 = A0_2._slot_select_callback_self
  L6_2 = A1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._on_slot_select_trigger = L2_1
return L1_1
