local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDragDiceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDragDiceItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayDiceChoosePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_meta_drag_dice
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_meta_drag_dice
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayDragDiceItemPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayDragDiceItemPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._panel_drag_dice = L2_2
  L2_2 = A0_2._panel_drag_dice
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_drag_dice
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_drag_dice
  L3_2 = L2_2
  L2_2 = L2_2.register_on_drag_callback
  L4_2 = A0_2._on_dice_drag
  L5_2 = A0_2._on_dice_end_drag
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._dice_item_list = nil
  A0_2._dice_op_callback_self = nil
  A0_2._dice_click_callback = nil
  A0_2._dice_press_callback = nil
  A0_2._dice_begin_drag_callback = nil
  A0_2._dice_end_drag_callback = nil
  A0_2._dice_on_drag_callback = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  A0_2._dice_op_callback_self = A1_2
  A0_2._dice_click_callback = A2_2
  A0_2._dice_press_callback = A3_2
  A0_2._dice_begin_drag_callback = A4_2
  A0_2._dice_end_drag_callback = A5_2
  A0_2._dice_on_drag_callback = A6_2
end
L1_1.register_dice_op_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.DiceInfo
  L2_2 = L2_2.DiceItemList
  L1_2 = L1_2(L2_2)
  A0_2._dice_item_list = L1_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._dice_item_list
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L8_2 = L5_2
      L7_2 = L5_2.setup_view
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = L5_2
      L7_2 = L5_2.set_dice_locked
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L5_2
      L7_2 = L5_2.set_interactable
      L9_2 = L6_2.HasOwnerSlot
      L9_2 = not L9_2
      L7_2(L8_2, L9_2)
      L8_2 = L5_2
      L7_2 = L5_2.register_dice_op_callback
      L9_2 = A0_2._dice_op_callback_self
      L10_2 = A0_2._dice_click_callback
      L11_2 = A0_2._dice_press_callback
      L12_2 = A0_2._dice_begin_drag_callback
      L13_2 = A0_2._dice_end_drag_callback
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_dice_anim
  L1_2(L2_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._dice_item_list
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_dice
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsDice1"
  L5_2 = L1_2 == 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_dice
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsDice2"
  L5_2 = L1_2 == 2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_dice
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsDice3"
  L5_2 = L1_2 == 3
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_dice
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsDice4"
  L5_2 = L1_2 == 4
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_dice_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dice_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_dice_panel_visible = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._drag_dice_item = A1_2
  L3_2 = A0_2._drag_dice_item
  if L3_2 ~= nil then
    L3_2 = A0_2._panel_drag_dice
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._panel_drag_dice
    L4_2 = L3_2
    L3_2 = L3_2.begin_drag
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._panel_drag_dice
    L4_2 = L3_2
    L3_2 = L3_2.end_drag
    L3_2(L4_2)
  end
end
L1_1.set_drag_dice_item = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._drag_dice_item
  return L1_2
end
L1_1.get_drag_dice_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_drag_dice
  L2_2 = L1_2
  L1_2 = L1_2.get_drag_dice_pos
  return L1_2(L2_2)
end
L1_1.get_drag_dice_pos = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._dice_on_drag_callback
  L4_2 = A0_2._dice_op_callback_self
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_dice_drag = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._dice_end_drag_callback
  L4_2 = A0_2._dice_op_callback_self
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_dice_end_drag = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_list
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.set_dice_locked
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L1_1.set_dice_lock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_dice_navi_go
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._dice_item_list
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.HasOwnerSlot
      if not L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2.get_select_object_by_index
        L9_2 = L4_2
        return L7_2(L8_2, L9_2)
      end
    end
  end
end
L1_1._get_first_unpacked_dice_navi_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_select_object_by_index
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L1_1._get_first_dice_navi_go = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_list
  L2_2 = L2_2[A1_2]
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
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_dice_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_first_selectable_cmpt
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      function L9_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        L3_3 = G
        L3_3 = L3_3.Utils
        L3_3 = L3_3.invoke_callback
        L4_3 = A1_2
        L5_3 = A2_2
        L6_3 = L6_2
        L7_3 = A0_3
        L8_3 = A1_3
        L9_3 = A2_3
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
      L8_2.OnNaviHandler = L9_2
    end
  end
end
L1_1.set_navi_handler = L2_1
return L1_1
