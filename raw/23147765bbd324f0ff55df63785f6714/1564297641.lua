local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayCardPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._card_list = nil
  A0_2._click_callback_item_func = nil
  A0_2._click_callback_item_self = nil
  A0_2._card_list_anim_cmpt = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  A0_2._card_list_anim_cmpt = A1_2
end
L1_1.init_card_list_anim_cmpt = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_item_func = A1_2
  A0_2._click_callback_item_self = A2_2
end
L1_1.register_click_item_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._begin_drag_callback_func = A1_2
  A0_2._end_drag_callback_func = A2_2
  A0_2._drag_callback_self = A3_2
end
L1_1.register_dice_drag_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CardInfo
  L2_2 = L2_2.CardItemList
  L1_2 = L1_2(L2_2)
  A0_2._card_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_card_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._card_list
  L4_2 = A0_2._on_card_click
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = pairs
  L2_2 = A0_2._card_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_card_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.register_dice_op_callback
      L9_2 = A0_2._dice_op_callback_self
      L10_2 = A0_2._dice_click_callback
      L11_2 = A0_2._dice_press_callback
      L12_2 = A0_2._dice_begin_drag_callback
      L13_2 = A0_2._dice_end_drag_callback
      L14_2 = A0_2._dice_on_drag_callback
      L15_2 = A0_2._empty_slot_click_callback
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._card_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_card_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.show_trouble_effect
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
  end
end
L1_1.show_card_trouble_effect = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = pairs
  L4_2 = A0_2._card_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_card_list
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      if not A1_2 then
        L10_2 = L8_2
        L9_2 = L8_2.set_show_drag_dice_hover
        L11_2 = false
        L9_2(L10_2, L11_2)
      else
        L10_2 = L8_2
        L9_2 = L8_2.is_mouse_hover
        L11_2 = A2_2
        L9_2, L10_2 = L9_2(L10_2, L11_2)
        L12_2 = L8_2
        L11_2 = L8_2.set_show_drag_dice_hover
        L13_2 = L9_2
        L14_2 = L10_2
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L1_1.set_show_drag_dice_hover = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._card_list
  L4_2 = L4_2[A1_2]
  if L4_2 == nil then
    return
  end
  if A2_2 then
    L6_2 = A0_2
    L5_2 = A0_2._on_dice_begin_drag
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    return
  end
  if A3_2 then
    L6_2 = A0_2
    L5_2 = A0_2._on_dice_end_drag
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.invoke_callback
  L6_2 = A0_2._click_callback_item_func
  L7_2 = A0_2._click_callback_item_self
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L1_1._on_card_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
      L7_2 = L2_2.SlotItemList
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.InSlotDice
      L9_2 = A1_2
      L8_2 = A1_2.RemoveDice
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = G
        L8_2 = L8_2.Utils
        L8_2 = L8_2.invoke_callback
        L9_2 = A0_2._begin_drag_callback_func
        L10_2 = A0_2._drag_callback_self
        L11_2 = L7_2
        L8_2(L9_2, L10_2, L11_2)
      end
      return
    end
  end
end
L1_1._on_dice_begin_drag = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._end_drag_callback_func
  L4_2 = A0_2._drag_callback_self
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_dice_end_drag = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A0_2._card_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_card_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.is_mouse_hover
      L10_2 = A1_2
      L8_2, L9_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L10_2 = L6_2
        L11_2 = L9_2
        return L10_2, L11_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_mouse_hover_card = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  A0_2._dice_op_callback_self = A1_2
  A0_2._dice_click_callback = A2_2
  A0_2._dice_press_callback = A3_2
  A0_2._dice_begin_drag_callback = A4_2
  A0_2._dice_end_drag_callback = A5_2
  A0_2._dice_on_drag_callback = A6_2
  A0_2._empty_slot_click_callback = A7_2
end
L1_1.register_dice_op_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._card_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_card_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.get_finish_anim_action
      L8_2 = L8_2(L9_2)
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L1_2
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  L2_2 = pairs
  L3_2 = A0_2._card_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_card_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.get_fade_out_anim_action
      L8_2 = L8_2(L9_2)
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L1_2
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L1_2
end
L1_1.get_card_finish_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._card_list_anim_cmpt
  L4_2 = "ClockParkEventCardIn"
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1.get_card_list_fade_in_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._card_list_anim_cmpt
  L3_2 = "ClockParkEventCardIn"
  L1_2(L2_2, L3_2)
end
L1_1.card_list_fade_in_immediate_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._card_list_anim_cmpt
  L4_2 = "ClockParkEventCardOut"
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1.get_card_list_fade_out_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._card_list_anim_cmpt
  L4_2 = "ClockParkEventCardRefresh"
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1.get_card_list_refresh_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._card_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_card_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.show_fade_in_animation
      L9_2 = L4_2 - 1
      L9_2 = 0.12 * L9_2
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1.show_card_refresh_fade_in = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._card_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_card_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.reset_card_anim_state
      L7_2(L8_2)
    end
  end
end
L1_1.reset_card_anim_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_card_navi_go
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_select_object_by_index
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L1_1._get_first_card_navi_go = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_card_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selectable_cmpt
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.gameObject
      return L4_2
    end
  end
end
L1_1.get_select_object_by_index = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2._card_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_card_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.get_selectable_cmpt_list
      L10_2 = L10_2(L11_2)
      L11_2 = pairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        if L15_2 ~= nil then
          function L16_2(A0_3, A1_3, A2_3)
            local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
            L3_3 = G
            L3_3 = L3_3.Utils
            L3_3 = L3_3.invoke_callback
            L4_3 = A1_2
            L5_3 = A2_2
            L6_3 = L7_2
            L7_3 = A0_3
            L8_3 = A1_3
            L9_3 = A2_3
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
          end
          L15_2.OnNaviHandler = L16_2
          L16_2 = table
          L16_2 = L16_2.insert
          L17_2 = L3_2
          L18_2 = L15_2
          L16_2(L17_2, L18_2)
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L3_2
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.set_navi_handler = L2_1
return L1_1
