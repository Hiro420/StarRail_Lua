local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.IconPanel.EquipmentItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.IconPanel.MaterialItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.IconPanel.FoodItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.IconPanel.RelicItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDot"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.CommonItemPrefabLoader"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI/Atlas/AtlasRoot/Common/Icon/EquipLockMark.png"
L2_1 = "UI/Atlas/AtlasRoot/Common/Icon/EquipAbandonMark.png"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._is_hide_num = A3_2
  A0_2._is_focus_by_click = true
  A0_2._enable_show_quick_consumable_mark = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._trigger_click_on_navigation = true
  A0_2._is_set_button_enable_on_navigation = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_btn
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.in_control_btn
    L1_2.ActionEnabled = false
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_button_action_submit_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._trigger_click_on_navigation
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.trigger_click_item
      L0_3(L1_3)
    end
    L0_3 = A0_2._is_set_button_enable_on_navigation
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.in_control_btn_minus
      L0_3.ActionEnabled = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.in_control_btn
      if L0_3 then
        L0_3 = A0_2._long_press_repeat_callback
        if L0_3 then
          L0_3 = A0_2._binder
          L0_3 = L0_3.in_control_btn
          L0_3.ActionEnabled = true
        end
      end
    end
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._item_select_callback
    L2_3 = A0_2._item_select_callback_self
    L3_3 = A0_2._item
    L4_3 = A0_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._is_set_button_enable_on_navigation
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.in_control_btn_minus
        L0_3.ActionEnabled = false
        L0_3 = A0_2._binder
        L0_3 = L0_3.in_control_btn
        if L0_3 then
          L0_3 = A0_2._long_press_repeat_callback
          if L0_3 then
            L0_3 = A0_2._binder
            L0_3 = L0_3.in_control_btn
            L0_3.ActionEnabled = false
          end
        end
      end
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._click_item
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._click_item_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_long_btn_press
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_event
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_long_press_repeated
    L3_2 = A0_2._binder
    L3_2 = L3_2.button
    L4_2 = A0_2._on_long_btn_repeat
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_event_minus
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_long_press_repeated
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_minus
    L4_2 = A0_2._on_long_btn_repeat_minus
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_name_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.manually_recover_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.unbind_reddot
  L1_2(L2_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2, A1_2)
  A0_2._trigger_click_on_navigation = A1_2
end
L0_1.set_trigger_click_on_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  A0_2._is_set_button_enable_on_navigation = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_minus
  L2_2.ActionEnabled = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn
    L2_2.ActionEnabled = false
  end
end
L0_1.set_button_action_enable_on_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn
    L2_2.SubmitEnabled = A1_2
  end
end
L0_1.set_button_action_submit_enabled = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._click_item
  L1_2(L2_2)
end
L0_1.trigger_click_item = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.Equipment
  if A1_2 == L3_2 then
    L3_2 = A0_2._equipment_icon_panel
    if nil == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel_without_binder
      L5_2 = G
      L5_2 = L5_2.EquipmentItemIconPanel
      L3_2 = L3_2(L4_2, L5_2)
      A0_2._equipment_icon_panel = L3_2
      L3_2 = A0_2._equipment_icon_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_inventory_item_icon_panel
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._equipment_icon_panel
    A0_2._cur_panel = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemMainType
    L3_2 = L3_2.Relic
    if A1_2 == L3_2 then
      L3_2 = A0_2._relic_icon_panel
      if nil == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.create_panel_without_binder
        L5_2 = G
        L5_2 = L5_2.RelicItemIconPanel
        L3_2 = L3_2(L4_2, L5_2)
        A0_2._relic_icon_panel = L3_2
        L3_2 = A0_2._relic_icon_panel
        L4_2 = L3_2
        L3_2 = L3_2.set_inventory_item_icon_panel
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2._relic_icon_panel
      A0_2._cur_panel = L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ItemSubType
      L3_2 = L3_2.Food
      if A2_2 == L3_2 then
        L3_2 = A0_2._food_icon_panel
        if nil == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.create_panel_without_binder
          L5_2 = G
          L5_2 = L5_2.FoodItemIconPanel
          L3_2 = L3_2(L4_2, L5_2)
          A0_2._food_icon_panel = L3_2
          L3_2 = A0_2._food_icon_panel
          L4_2 = L3_2
          L3_2 = L3_2.set_inventory_item_icon_panel
          L5_2 = A0_2
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._food_icon_panel
          L4_2 = L3_2
          L3_2 = L3_2.set_enable_show_quick_consumable_mark
          L5_2 = A0_2._enable_show_quick_consumable_mark
          L3_2(L4_2, L5_2)
        end
        L3_2 = A0_2._food_icon_panel
        A0_2._cur_panel = L3_2
      else
        L3_2 = A0_2._material_icon_panel
        if nil == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.create_panel_without_binder
          L5_2 = G
          L5_2 = L5_2.MaterialItemIconPanel
          L3_2 = L3_2(L4_2, L5_2)
          A0_2._material_icon_panel = L3_2
          L3_2 = A0_2._material_icon_panel
          L4_2 = L3_2
          L3_2 = L3_2.set_inventory_item_icon_panel
          L5_2 = A0_2
          L3_2(L4_2, L5_2)
        end
        L3_2 = A0_2._material_icon_panel
        A0_2._cur_panel = L3_2
      end
    end
  end
end
L0_1._choose_cur_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._item = A1_2
  A0_2._press_for_info = false
  A0_2._press_detail_panel = nil
  L4_2 = A0_2
  L3_2 = A0_2._hide_nodes
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A1_2.ConfigID
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_icon
  L5_2 = A1_2.ItemIconPath
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_rarity
  L5_2 = A1_2.Rarity
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_consumable_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_update_time_limit_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._choose_cur_panel
  L5_2 = A1_2.ItemMainType
  L6_2 = A1_2.ItemSubType
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_item
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_img_equip_mark
  L3_2(L4_2)
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._not_bind_red_dot = L3_2
  if A2_2 then
    return
  end
  L3_2 = A1_2.IsPile
  if L3_2 then
    L3_2 = tostring
    L4_2 = A1_2.ConfigID
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_61
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.StrUtils
  L3_2 = L3_2.Format
  L4_2 = "{0}_{1}"
  L5_2 = A1_2.ConfigID
  L6_2 = A1_2.UID
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  ::lbl_61::
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "ItemIcon"
  L7_2 = L3_2
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.go_reddot_new
  L9_2 = L9_2.transform
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view_by_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_reddot_new
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
end
L0_1.unbind_reddot = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._item
  return L1_2
end
L0_1.get_cur_item = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_click_item = nil
  A0_2._click_event_listner = nil
  A0_2._on_click_item_minus = nil
  A0_2._long_click_event_listener = nil
  A0_2._on_long_click_item = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_long_click_item
  if L1_2 ~= nil then
    L1_2 = A0_2._long_click_event_listener
    if L1_2 ~= nil then
      L1_2 = A0_2._on_long_click_item
      L2_2 = A0_2._long_click_event_listener
      L3_2 = A0_2._item
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = A0_2._press_for_info
  if not L1_2 then
    return
  end
  L1_2 = A0_2._item
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view_by_item
    L4_2 = A0_2._item
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_long_btn_press = L3_1
function L3_1(A0_2, A1_2)
  A0_2._press_for_info = A1_2
end
L0_1.set_item_info_open = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
  if A3_2 ~= nil then
    A0_2._on_click_item_minus = A3_2
  end
end
L0_1.bind_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._long_click_event_listener = A1_2
  A0_2._on_long_click_item = A2_2
end
L0_1.bind_long_press = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._item_select_callback = A1_2
  A0_2._item_select_callback_self = A2_2
end
L0_1.bind_item_select_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._long_press_repeat_callback = A1_2
  A0_2._long_press_repeat_minus_callback = A2_2
  A0_2._long_press_repeat_callback_self = A3_2
  L4_2 = A0_2._long_press_repeat_callback
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_game_pad_btn_long_press_repeat_enable
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._long_press_repeat_minus_callback
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_game_pad_minus_btn_long_press_repeat_enable
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1.bind_long_press_repeat_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn
    L2_2.RepeatPressEnabled = A1_2
  end
end
L0_1.set_game_pad_btn_long_press_repeat_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_minus
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn_minus
    L2_2.RepeatPressEnabled = A1_2
  end
end
L0_1.set_game_pad_minus_btn_long_press_repeat_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_minus
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 ~= A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_minus
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_minus_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_checked_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked_mark = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_favorite_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_favorite_mark = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_favorite_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_favorite_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_favorite_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_quick_consumable_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_quick_consumable_mark = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_rarity_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_rarity_display = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enable_show_quick_consumable_mark = A1_2
end
L0_1.set_enable_show_quick_consumable_mark = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A3_2 and A2_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L4_2 < L5_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#C84A32\">%s</color>"
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A1_2 = L4_2
    end
  end
  if A2_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2.set_text_all_textID
    L6_2 = L0_1._textid_splash
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.set_text_all_customized_text
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_count = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 <= A1_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"#EB4D3D\">%s</color>"
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    A1_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_text_all_customized_text
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_count_with_color_format = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rarity_bg
  L6_2 = L2_2.FrameIconRarityPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rarity_star
  L6_2 = L2_2.ItemRarityStarImgPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_rarity = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._item
  L3_2 = L3_2.ItemSubType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.Food
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Food
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_status_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._item
    L2_2 = L1_2
    L1_2 = L1_2.GetFoodTypeIconPath
    L1_2 = L1_2(L2_2)
    if L1_2 == nil then
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_item_type
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_consumable_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_type
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_consumable_icon_display = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_multiple_drop_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_multiple_drop_mark_display = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.button
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.button
      L3_2 = L2_2
      L2_2 = L2_2.SetChecked
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_highlight_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_highlight_display = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_name_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_name_display = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._not_show_default_click_dialog = true
end
L0_1.not_show_default_click_dialog = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._equipment_icon_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._equipment_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_match_hint
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_match_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._item
  if not L1_2 then
    return
  end
  L1_2 = A0_2._item
  L1_2 = L1_2.IsPile
  if L1_2 then
    L1_2 = tostring
    L2_2 = A0_2._item
    L2_2 = L2_2.ConfigID
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_25
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.StrUtils
  L1_2 = L1_2.Format
  L2_2 = "{0}_{1}"
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._item
  L4_2 = L4_2.UID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  ::lbl_25::
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "InventoryItem"
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.go_reddot
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_inventory_item_reddot = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_focus_by_click = A1_2
end
L0_1.set_focus_by_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_focus_by_click
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._item
  if L1_2 then
    L1_2 = A0_2._not_bind_red_dot
    if not L1_2 then
      L1_2 = A0_2._item
      L1_2.IsNew = false
    end
  end
  L1_2 = A0_2._on_click_item
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._item
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = A0_2._not_show_default_click_dialog
  if L1_2 then
    return
  end
  L1_2 = A0_2._item
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._is_hide_num
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.hide_num
      L2_2(L3_2)
    end
    L3_2 = L1_2
    L2_2 = L1_2.setup_view_by_item
    L4_2 = A0_2._item
    L2_2(L3_2, L4_2)
  end
end
L0_1._click_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_item_minus
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_item_minus
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._item
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._click_item_minus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._long_press_repeat_callback
  if L1_2 then
    L1_2 = A0_2._long_press_repeat_callback_self
    if L1_2 then
      L1_2 = A0_2._long_press_repeat_callback
      L2_2 = A0_2._long_press_repeat_callback_self
      L3_2 = A0_2._item
      L4_2 = A0_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.long_press_event
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_long_btn_repeat = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._long_press_repeat_minus_callback
  if L1_2 then
    L1_2 = A0_2._long_press_repeat_callback_self
    if L1_2 then
      L1_2 = A0_2._long_press_repeat_minus_callback
      L2_2 = A0_2._long_press_repeat_callback_self
      L3_2 = A0_2._item
      L4_2 = A0_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.long_press_event_minus
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_long_btn_repeat_minus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemRecycleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ShowTimeType
    if not L2_2 then
      goto lbl_20
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.time_limit_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_node_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  goto lbl_30
  ::lbl_20::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.time_limit_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_node_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  ::lbl_30::
end
L0_1._try_update_time_limit_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_refine_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.black_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_belong_to
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_damage_plus_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_need_formula
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_multiple_drop_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_checked_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_favorite_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_favorite_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick_consumable_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_highlight_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_highlight_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._hide_nodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._item
  L1_2 = L1_2.IsProtected
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_equip_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_equip_mark
    L4_2 = L1_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._item
    L1_2 = L1_2.IsDiscard
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.img_equip_mark
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetLightWeightActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_equip_mark
      L4_2 = L2_1
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.img_equip_mark
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetLightWeightActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_img_equip_mark = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.black_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_mask = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#000000B2"
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#000000B2"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1.set_item_hide = L3_1
L0_1._textid_splash = "UIText_Stamima_Current"
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_text_all_display
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_all
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_text_all_textID = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_text_all_display
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_all
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_text_all_customized_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_all
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_text_all_display = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_all
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_text_all_enable_ellipsis = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.is_destroyed
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_minus
  L2_2.ActionEnabled = A1_2
end
L0_1.set_minus_control_button_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.is_destroyed
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn
    L2_2.ActionEnabled = A1_2
  end
end
L0_1.set_control_button_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3()
  end
  L2_2.onSelectTrigger = L3_2
end
L0_1.set_minus_select_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L2_2.onDeselectTrigger = A1_2
end
L0_1.set_minus_unselect_callback = L3_1
return L0_1
