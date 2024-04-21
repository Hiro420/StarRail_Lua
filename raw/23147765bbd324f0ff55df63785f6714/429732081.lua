local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = "ActivityClockParkDiceCardString.%d.%d"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityClockParkGamePlayControlPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._attribute_panel = nil
  A0_2._card_panel = nil
  A0_2._dice_choose_panel = nil
  A0_2._refresh_callback_func = nil
  A0_2._refresh_callback_self = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._attribute_panel = A1_2
  A0_2._dice_choose_panel = A3_2
  L6_2 = A0_2._dice_choose_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_dice_op_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_dice_click
  L10_2 = A0_2._on_dice_press
  L11_2 = A0_2._on_dice_begin_drag
  L12_2 = A0_2._on_dice_end_drag
  L13_2 = A0_2._on_dice_drag
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A0_2._card_panel = A2_2
  L6_2 = A0_2._card_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_click_item_callback
  L8_2 = A0_2._on_card_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._card_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_dice_drag_callback
  L8_2 = A0_2._on_dice_begin_drag
  L9_2 = A0_2._on_dice_end_drag
  L10_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._card_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_dice_op_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_dice_click
  L10_2 = A0_2._on_dice_press
  L11_2 = A0_2._on_dice_begin_drag
  L12_2 = A0_2._on_dice_end_drag
  L13_2 = A0_2._on_dice_drag
  L14_2 = A0_2._on_empty_slot_click
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A0_2._chapter_progress_panel = A4_2
  A0_2._branch_select_panel = A5_2
end
L3_1.init_component_panels = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._refresh_callback_func = A1_2
  A0_2._refresh_callback_self = A2_2
end
L3_1.register_refresh_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_attribute_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_card_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._refresh_callback_func
  L3_2 = A0_2._refresh_callback_self
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_card_dice_navigation
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._attribute_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L3_1._refresh_attribute_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L3_1._refresh_card_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._dice_choose_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L3_1._refresh_dice_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._chapter_progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._branch_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L3_1._refresh_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L2_2 = L1_2.Row
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.Row
  L2_2 = L2_2.ChapterRoundIDList
  L3_2 = L1_2.RoundInfo
  L3_2 = L3_2.RoundID
  L4_2 = L2_2.Length
  if 0 < L4_2 then
    L4_2 = L2_2.Length
    L4_2 = L4_2 - 1
    L4_2 = L2_2[L4_2]
    if L4_2 == L3_2 then
      L4_2 = L1_2.Row
      L4_2 = L4_2.ChapterGamePlayRoundRandomList
      L4_2 = L4_2.Length
      L4_2 = 0 < L4_2
      return L4_2
    end
  end
  L4_2 = false
  return L4_2
end
L3_1._is_in_round_before_game = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._dice_choose_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_dice_lock
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.set_dice_lock = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._is_in_dice_dragging_state
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[ClockPark] _on_dice_click"
  L3_2(L4_2)
  L3_2 = A1_2.HasOwnerSlot
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_remove_dice_from_slot
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_add_dice_to_empty_slot
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L3_1._on_dice_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._is_enable_dice_placement
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  if A1_2 ~= nil then
    L2_2 = A1_2.SlotRef
    if L2_2 ~= nil then
      L2_2 = A1_2.SlotRef
      L2_2 = L2_2.OwnerCardRef
      if L2_2 ~= nil then
        goto lbl_18
      end
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_18::
  L2_2 = A1_2.SlotRef
  L2_2 = L2_2.OwnerCardRef
  L3_2 = A1_2.SlotRef
  L3_2 = L3_2.SlotIndex
  L5_2 = L2_2
  L4_2 = L2_2.RemoveDice
  L6_2 = L3_2
  return L4_2(L5_2, L6_2)
end
L3_1._try_remove_dice_from_slot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._is_enable_dice_placement
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CardInfo
  L3_2 = pairs
  L4_2 = L2_2.CardItemList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.SlotInfo
    L9_2 = L8_2
    L8_2 = L8_2.GetEmptySlotIndex
    L8_2 = L8_2(L9_2)
    if 0 <= L8_2 then
      L10_2 = A0_2
      L9_2 = A0_2._try_add_dice_to_slot
      L11_2 = A1_2
      L12_2 = L7_2.SlotInfo
      L12_2 = L12_2.SlotItemList
      L12_2 = L12_2[L8_2]
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if L9_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L3_1._try_add_dice_to_empty_slot = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._is_enable_dice_placement
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  if A2_2 ~= nil then
    L3_2 = A2_2.IsEmpty
    if L3_2 then
      L3_2 = A2_2.OwnerCardRef
      if L3_2 ~= nil then
        L3_2 = A2_2.OwnerCardRef
        L4_2 = L3_2
        L3_2 = L3_2.AddDice
        L5_2 = A2_2.SlotIndex
        L6_2 = A1_2
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._trigger_add_dice_tutorial
          L5_2 = A1_2.DiceIndex
          L6_2 = A2_2.OwnerCardRef
          L6_2 = L6_2.CardID
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = true
          return L3_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L3_1._try_add_dice_to_slot = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[ClockPark] _on_dice_press"
  L3_2(L4_2)
end
L3_1._on_dice_press = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._is_enable_dice_placement
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[ClockPark] _on_dice_begin_drag"
  L3_2(L4_2)
  L3_2 = A0_2._dice_choose_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_drag_dice_item
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1._on_dice_begin_drag = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._is_enable_dice_placement
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  A0_2._is_dragging_dice = false
  L2_2 = A0_2._dice_choose_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_drag_dice_pos
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[ClockPark] _on_dice_end_drag"
  L3_2(L4_2)
  L3_2 = A0_2._dice_choose_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_drag_dice_item
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._dice_choose_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_drag_dice_item
  L6_2 = nil
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._card_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_show_drag_dice_hover
  L6_2 = false
  L4_2(L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.SlotRef
    if L4_2 ~= nil then
      L6_2 = A0_2
      L5_2 = A0_2._try_remove_dice_from_slot
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        goto lbl_71
      end
    end
    L5_2 = A0_2._card_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_mouse_hover_card
    L7_2 = L2_2
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      if L6_2 == nil then
        L7_2 = L5_2.SlotInfo
        L7_2 = L7_2.SlotItemList
        L6_2 = L7_2[0]
      end
      L7_2 = L6_2.IsEmpty
      if L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2._try_add_dice_to_slot
        L9_2 = L3_2
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      else
        L7_2 = L6_2.InSlotDice
        L9_2 = A0_2
        L8_2 = A0_2._try_remove_dice_from_slot
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 then
          L9_2 = A0_2
          L8_2 = A0_2._refresh_card_panel
          L8_2(L9_2)
          L9_2 = A0_2
          L8_2 = A0_2._try_add_dice_to_slot
          L10_2 = L3_2
          L11_2 = L6_2
          L8_2(L9_2, L10_2, L11_2)
          L9_2 = A0_2
          L8_2 = A0_2._try_add_dice_to_slot
          L10_2 = L7_2
          L11_2 = L4_2
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  ::lbl_71::
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L3_1._on_dice_end_drag = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_dragging_dice = true
  L2_2 = A0_2._card_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_drag_dice_hover
  L4_2 = true
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._on_dice_drag = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_dragging_dice
  return L1_2
end
L3_1._is_in_dice_dragging_state = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._is_enable_dice_placement
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A1_2
  L2_2 = A1_2.HasAnyDice
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_remove_first_dice_from_card
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L3_1._on_card_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.SlotInfo
  L3_2 = 0
  L4_2 = L2_2.SlotItemList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.SlotItemList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.IsEmpty
    if not L7_2 then
      L8_2 = A1_2
      L7_2 = A1_2.RemoveDice
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return
      end
    end
  end
end
L3_1._try_remove_first_dice_from_card = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  if A1_2 ~= nil then
    L2_2 = A1_2.IsEmpty
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_unplaced_dice_item
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2._try_add_dice_to_slot
        L5_2 = L2_2
        L6_2 = A1_2
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._refresh
          L3_2(L4_2)
        end
      end
    end
  end
end
L3_1._on_empty_slot_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.BranchSelect
  L1_2 = L1_2 == L2_2
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CurGameState
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.DiceInfo
  L3_2 = L3_2.DiceItemList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.HasOwnerSlot
    if not L9_2 then
      if L1_2 then
        L10_2 = L2_2
        L9_2 = L2_2.IsDiceToLockChapter
        L11_2 = L7_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L10_2 = L2_2
          L9_2 = L2_2.IsTrueEndBranchUnlock
          L9_2 = L9_2(L10_2)
          if L9_2 then
            return L8_2
          end
      end
      else
        return L8_2
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L3_1._get_unplaced_dice_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L2_2 = L1_2
  L1_2 = L1_2.EnableDicePlacement
  return L1_2(L2_2)
end
L3_1._is_enable_dice_placement = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = L2_1
  L5_2 = A1_2 + 1
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.TutorialManager
  L5_2 = L4_2
  L4_2 = L4_2.trigger_tutorial_custom_string
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L3_1._trigger_add_dice_tutorial = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._attribute_panel
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._attribute_panel
    L1_3 = L0_3
    L0_3 = L0_3.hide_fail_effect
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = pairs
  L4_2 = A0_2._card_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_card_finish_action
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = pairs
  L4_2 = A0_2._attribute_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_attribute_finish_action
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L3_1.get_round_finish_actions = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._chapter_progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_chapter_round_change_action
  return L1_2(L2_2)
end
L3_1.get_chapter_progress_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_card_list_fade_out_action
  return L1_2(L2_2)
end
L3_1.get_card_exit_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_card_list_fade_in_action
  return L1_2(L2_2)
end
L3_1.get_card_enter_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._card_panel
    if L0_3 ~= nil then
      L0_3 = A0_2._card_panel
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L3_1.get_card_reset_anim_state_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._branch_select_panel
    if L0_3 ~= nil then
      L0_3 = A0_2._branch_select_panel
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._branch_select_panel
    L1_3 = L0_3
    L0_3 = L0_3.show_fade_in
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L3_1.get_branch_select_fade_in_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._branch_select_panel
    if L0_3 ~= nil then
      L0_3 = A0_2._branch_select_panel
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._branch_select_panel
    L1_3 = L0_3
    L0_3 = L0_3.show_fade_out
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L3_1.get_branch_select_fade_out_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_card_list_refresh_action
  return L1_2(L2_2)
end
L3_1.get_card_refresh_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= "ClockParkCardItemRefresh" then
    return
  end
  L2_2 = A0_2._card_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._card_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_card_refresh_fade_in
  L2_2(L3_2)
  L2_2 = A0_2._dice_choose_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
end
L3_1._on_ui_animation_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._dice_choose_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._card_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_navi_handler
  L3_2 = A0_2._on_card_navi
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._dice_choose_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_navi_handler
  L3_2 = A0_2._on_dice_navi
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._refresh_card_dice_navigation = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A4_2 then
    return
  end
  L5_2 = A0_2._owner
  L5_2 = L5_2._binder
  if L5_2 == nil then
    return
  end
  L5_2 = A2_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Down
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.set_navigation_target
    L7_2 = A0_2._dice_choose_panel
    L8_2 = L7_2
    L7_2 = L7_2.get_first_selected_object
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1._on_card_navi = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A4_2 then
    return
  end
  L5_2 = A0_2._owner
  L5_2 = L5_2._binder
  if L5_2 == nil then
    return
  end
  L5_2 = A2_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Up
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.set_navigation_target
    L7_2 = A0_2._card_panel
    L8_2 = L7_2
    L7_2 = L7_2.get_first_selected_object
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1._on_dice_navi = L4_1
return L3_1
