local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PhysicalExchange.PhysicalItemExchangeTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhysicalItemExchangeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.StaminaModule
L1_1 = L1_1.Instance
L2_1 = "UIText_Stamima_PriceComfirm"
L3_1 = "UIText_Stamima_BuyReachMaxLimit"
L4_1 = "RetCodeError_2102"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "Stamina_Maximum_Num"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._stamina_item_table = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  A0_2._select_item_index = 0
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._select_item
    L4_2 = A0_2._select_item_index
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L5_2 = L3_2
    L4_2 = L3_2.set_selected
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._stamina_item_table
    L5_2 = A1_2 + 1
    L4_2 = L4_2[L5_2]
    L5_2 = L4_2.ConfigID
    A0_2._cur_stamina_itemID = L5_2
    L6_2 = A0_2
    L5_2 = A0_2._get_cur_stamina_item
    L5_2 = L5_2(L6_2)
    A0_2._cur_stamina_item = L5_2
    L6_2 = A0_2
    L5_2 = A0_2._refresh
    L5_2(L6_2)
  end
end
L0_1._select_item = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._select_item_index
    if 0 < L2_2 then
      L2_2 = A0_2._select_item_index
      L2_2 = L2_2 - 1
      A0_2._select_item_index = L2_2
      L3_2 = A0_2
      L2_2 = A0_2._select_item
      L4_2 = A0_2._select_item_index
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightTrigger
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L2_2 = A0_2._select_item_index
      if L2_2 < 1 then
        L2_2 = A0_2._select_item_index
        L2_2 = L2_2 + 1
        A0_2._select_item_index = L2_2
        L3_2 = A0_2
        L2_2 = A0_2._select_item
        L4_2 = A0_2._select_item_index
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_in_control_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.AddEventHandle
  L3_2 = A0_2
  L4_2 = A0_2._show_recover_time
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.send_get_stamina_exchange_cs_req
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._on_stamina_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Stamina_GetStaminaExchange
  L4_2 = A0_2._on_get_stamina_exchange
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._cur_stamina_itemID = nil
  A0_2._cur_stamina_item = nil
  A0_2._stamina_item_table = nil
  A0_2._currency_item_id = nil
  L1_2 = L1_1.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.RemoveEventHandle
  L3_2 = A0_2
  L4_2 = A0_2._show_recover_time
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._parent
  L2_2 = L1_2
  L1_2 = L1_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ItemDetail"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_next_and_all_recover_time
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_full_stamina
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  if L1_2 <= 0 and L2_2 <= 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_full_stamina
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    if L1_2 < 0 then
      L1_2 = 0
    end
    if L2_2 < 0 then
      L2_2 = 0
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer_next
    L4_2 = L3_2
    L3_2 = L3_2.SetRemainTimeInSeconds
    L5_2 = L1_2
    L6_2 = 2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.MonoRemainTimer
    L7_2 = L7_2.TimeMode
    L7_2 = L7_2.ShowMinutes
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer_all
    L4_2 = L3_2
    L3_2 = L3_2.SetRemainTimeInSeconds
    L5_2 = L2_2
    L6_2 = 3
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.MonoRemainTimer
    L7_2 = L7_2.TimeMode
    L7_2 = L7_2.ShowHours
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_remain_time
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1._show_recover_time = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.InventoryItemIconPanel
    L8_2 = G
    L8_2 = L8_2.InventoryItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._stamina_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ItemFactory
  L6_2 = L6_2.CreateItemData
  L7_2 = L5_2.ConfigID
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2.Count
  L6_2.Count = L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_view_by_item
  L9_2 = L6_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count
  L9_2 = L5_2.Count
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_item_info_open
  L9_2 = true
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.bind_click
  L9_2 = A0_2
  L10_2 = A0_2._on_stamina_item_click
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_trigger_click_on_navigation
  L9_2 = true
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = L5_2.ConfigID
  L10_2 = A0_2._cur_stamina_itemID
  L9_2 = L9_2 == L10_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_focus_by_click
  L9_2 = false
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_reward_item_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A1_2.ConfigID
    A0_2._cur_stamina_itemID = L2_2
    L2_2 = nil
    L4_2 = A0_2
    L3_2 = A0_2._get_cur_stamina_item
    L3_2, L4_2 = L3_2(L4_2)
    L2_2 = L4_2
    A0_2._cur_stamina_item = L3_2
    L3_2 = L2_2 - 1
    A0_2._select_item_index = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L3_2(L4_2)
  end
end
L0_1._on_stamina_item_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_stamina_itemID
  if nil == L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._stamina_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ConfigID
    L7_2 = A0_2._cur_stamina_itemID
    if L6_2 == L7_2 then
      L6_2 = L5_2
      L7_2 = L4_2
      return L6_2, L7_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_cur_stamina_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_currency_id
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_stamina_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_view
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.update_stamina_recover_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_recover_time
  L1_2(L2_2)
end
L0_1._refresh_recover_time = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recover_time
  L1_2(L2_2)
end
L0_1._on_stamina_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recover_time
  L1_2(L2_2)
end
L0_1._on_get_stamina_exchange = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_item_changed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ConfigID
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_include = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_stamina_exchange_currency
  L1_2 = L1_2(L2_2)
  A0_2._currency_item_id = L1_2
end
L0_1._get_currency_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_stamina_items
  L1_2 = L1_2(L2_2)
  A0_2._stamina_item_table = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._stamina_item_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.SortWeight
    L3_3 = A1_3.SortWeight
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._stamina_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._cur_stamina_itemID
  L1_2 = L0_1._is_include
  L2_2 = A0_2._stamina_item_table
  L3_2 = A0_2._cur_stamina_itemID
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil == L1_2 or L1_2
  if L1_2 then
    L2_2 = A0_2._stamina_item_table
    L2_2 = L2_2[1]
    L2_2 = L2_2.ConfigID
    A0_2._cur_stamina_itemID = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_stamina_item
    L2_2 = L2_2(L3_2)
    A0_2._cur_stamina_item = L2_2
  end
end
L0_1._refresh_stamina_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = A0_2._cur_stamina_itemID
  L3_2 = nil ~= L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = true
  L1_2 = A0_2._cur_stamina_item
  if nil == L1_2 then
    return
  end
  L1_2 = A0_2._cur_stamina_item
  L1_2 = L1_2.Desc
  L3_2 = A0_2
  L2_2 = A0_2._is_stamina_currency
  L4_2 = A0_2._cur_stamina_itemID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.get_max_buy_count
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.get_current_buy_count
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 - L3_2
    if 0 < L2_2 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.GetCurrentBuyNeedObjectNumAndGetStaminaCount
      L3_2, L4_2 = L3_2(L4_2)
      L5_2 = {}
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = L2_2
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_desc
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L1_2
      L9_2 = unpack
      L10_2 = L5_2
      L9_2, L10_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
      return
    end
    L3_2 = G
    L3_2 = L3_2.TextExtensions
    L3_2 = L3_2.SafeSetTextID
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_desc
    L5_2 = L3_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_confirm
    L3_2.interactable = false
    return
  end
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetTextID
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_desc = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._stamina_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_scroll_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._currency_item_id
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._is_stamina_currency = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._cur_stamina_itemID
  if nil ~= L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_stamina
    L1_2 = L1_2(L2_2)
    L2_2 = L5_1
    if L1_2 >= L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._is_stamina_currency
    L4_2 = A0_2._cur_stamina_itemID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.GetCurrentBuyNeedObjectNumAndGetStaminaCount
      L2_2, L3_2 = L2_2(L3_2)
      L4_2 = {}
      L5_2 = L2_2
      L6_2 = L3_2
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ConfirmDialogUtil
      L5_2 = L5_2.ShowConfirmDialog
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = G
          L1_3 = L1_3.ShopUtils
          L1_3 = L1_3.is_hcoin_sufficient
          L2_3 = L2_2
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = A0_2
            L2_3 = L1_3
            L1_3 = L1_3.show_full_screen_block_for_packet
            L3_3 = CS
            L3_3 = L3_3.NIJNBICAPPA
            L3_3 = L3_3.EKDPPKBIPHE
            L1_3(L2_3, L3_3)
            L1_3 = L1_1
            L2_3 = L1_3
            L1_3 = L1_3.buy_stamina_with_hcoin
            L1_3(L2_3)
          else
            L1_3 = G
            L1_3 = L1_3.ShopUtils
            L1_3 = L1_3.show_pay_conversion_dialog
            L2_3 = L2_2
            L1_3(L2_3)
          end
        end
      end
      L5_2 = L5_2(L6_2)
      L6_2 = DialogBtnMode
      L6_2 = L6_2.eOkCancel
      L5_2.Mode = L6_2
      L7_2 = L5_2
      L6_2 = L5_2.GetComponentContent
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L2_1
      L9_2 = unpack
      L10_2 = L4_2
      L9_2, L10_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
    else
      L2_2 = false
      L3_2 = G
      L3_2 = L3_2.InventoryUtils
      L3_2 = L3_2.use_gift_pack_item_by_configID
      L4_2 = A0_2._cur_stamina_itemID
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_btn_confirm = L6_1
return L0_1
