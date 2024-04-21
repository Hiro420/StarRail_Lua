local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicPlaceHolderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.loadmeta_item
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.loadmeta_item
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.InventoryItemIconPanel
  L5_2 = G
  L5_2 = L5_2.InventoryItemIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._item_icon_panel = L2_2
  L2_2 = A0_2._item_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_focus_by_click
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = A0_2._on_btn_root
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._item_icon_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._item_icon_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_minus_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._item_select_callback
    L2_3 = A0_2._item_select_callback_self
    L3_3 = A0_2._is_contain_item
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2.onSelectTrigger = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._item_icon_panel
    if L0_3 then
      L0_3 = A0_2._item_icon_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._item_icon_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_minus_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L2_2.onDeselectTrigger = L3_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A1_2 ~= nil
  A0_2._is_contain_item = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.get_navigation_target
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._item_select_callback
    L4_2 = A0_2._item_select_callback_self
    L5_2 = A0_2._is_contain_item
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._is_contain_item
  if L2_2 then
    L2_2 = A0_2._item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_item
    L4_2 = A1_2.item
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_minus_btn
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_trigger_click_on_navigation
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_button_action_enable_on_navigation
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_minus_control_button_enable
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L4_2 = L4_2.gameObject
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 == L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A1_2.item
    L2_2 = L2_2.IsPile
    if L2_2 then
      L2_2 = A0_2._item_icon_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_count
      L4_2 = A1_2.count
      L5_2 = A1_2.item
      L5_2 = L5_2.Count
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.set_click_callback
  L5_2 = A1_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.set_item_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._item_select_callback = A1_2
  A0_2._item_select_callback_self = A2_2
end
L0_1.set_item_select_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._is_contain_item
  if L4_2 then
    L4_2 = A0_2._item_icon_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind_click
    L6_2 = A3_2
    L7_2 = A2_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  A0_2._callback = A1_2
  A0_2._callback_self = A3_2
end
L0_1.set_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._is_contain_item
  if L4_2 then
    L4_2 = A0_2._item_icon_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind_long_press_repeat_callback
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.bind_long_press_repeat_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._item_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_text_all_display
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_text_all_display = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_contain_item
  if L1_2 then
    L1_2 = A0_2._item_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_click_item
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_self
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L1_1
return L0_1
