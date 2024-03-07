local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.LevelUpItemListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelUpItemListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LevelUpItemListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_click_sort = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._event_listner = A1_2
  A0_2._close_callback = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._sell_callback = A1_2
  A0_2._sell_callback_self = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.register_sell_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._click_callback = A1_2
  A0_2._minus_click_callback = A2_2
  A0_2._click_callback_self = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind_click
  L6_2 = A0_2
  L7_2 = A0_2._on_item_click
  L8_2 = A0_2._on_item_click_minus
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._repeat_callback = A1_2
  A0_2._repeat_minus_callback = A2_2
  A0_2._repeat_callback_self = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind_long_press_repeat_callback
  L6_2 = A0_2._on_item_long_press_repeat_click
  L7_2 = A0_2._on_item_long_press_minus_repeat_click
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.register_long_press_repeat_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._item_validate_callback = A1_2
  A0_2._item_validate_callback_self = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind_item_selected
  L5_2 = A0_2._on_item_navi_in
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_item_validate_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.cSelf = A4_2
  A0_2.onAscendDescendClick = A1_2
  A0_2.onRefreshSortType = A2_2
  L5_2 = A0_2.cSelf
  if L5_2 == nil then
    L5_2 = A0_2._event_listner
    A0_2.cSelf = L5_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.order_panel_pc
  L6_2 = L5_2
  L5_2 = L5_2.setup_callback
  L7_2 = A0_2
  L8_2 = A0_2.on_ascend_descend_click
  L9_2 = A0_2.on_refresh_sort_type
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.order_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_callback
  L7_2 = A0_2.cSelf
  L8_2 = A1_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.register_sort_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_click_sort = true
  L2_2 = A0_2.onAscendDescendClick
  L3_2 = A0_2.cSelf
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_ascend_descend_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_click_sort = true
  L2_2 = A0_2.onRefreshSortType
  L3_2 = A0_2.cSelf
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_refresh_sort_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._material_selected = A1_2
  A0_2._item_table = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L3_2 = A0_2._is_click_sort
  if L3_2 == false then
    L4_2 = A0_2
    L3_2 = A0_2._init_ui_navigation
    L3_2(L4_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.order_panel_pc
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L11_2 = A0_2._event_listner
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_view_order_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.order_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.refresh_sort_type_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_order_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_order_panel_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_close
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel_pc
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2, L4_2, L5_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_empty
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = A0_2._on_btn_sell
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_drop_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_detail_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.inventory_panel
  L4_2 = nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_right_panel
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EquipmentRankUpFinish
  L4_2 = A0_2._on_equipment_rank_up
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_selected
  L4_2 = A0_2._item_table
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.has_select
  L2_2 = L2_2(L3_2)
  if L2_2 and A1_2 ~= true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.clear_cur_select
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._close_callback
  L3_2 = A0_2._event_listner
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_cur_select
  L1_2(L2_2)
end
L0_1._on_btn_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._sell_callback
  L3_2 = A0_2._sell_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_sell = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.IsProtected
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_ItemSell_Hint_Lock"
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_cur_select
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    return
  else
    if A3_2 == nil then
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.invoke_callback
      L5_2 = A0_2._click_callback
      L6_2 = A0_2._click_callback_self
      L7_2 = A1_2
      L8_2 = A2_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = A0_2._repeat_callback
      if L4_2 then
        L4_2 = A0_2._repeat_callback_self
        if L4_2 then
          L4_2 = A0_2._repeat_callback
          L5_2 = A0_2._repeat_callback_self
          L6_2 = A1_2
          L7_2 = A2_2
          L8_2 = A3_2
          L4_2(L5_2, L6_2, L7_2, L8_2)
        end
      end
    end
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._on_item_navi_in
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    return
  end
  L4_2 = A0_2._item_validate_callback
  if L4_2 then
    L4_2 = A0_2._item_validate_callback
    L5_2 = A0_2._item_validate_callback_self
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.item_list_panel
      L6_2 = L5_2
      L5_2 = L5_2.set_cur_select
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.item_list_panel
      L6_2 = L5_2
      L5_2 = L5_2.clear_cur_select
      L5_2(L6_2)
    end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_cur_select
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._minus_click_callback
    L6_2 = A0_2._click_callback_self
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2._repeat_minus_callback
    if L4_2 then
      L4_2 = A0_2._repeat_callback_self
      if L4_2 then
        L4_2 = A0_2._repeat_minus_callback
        L5_2 = A0_2._repeat_callback_self
        L6_2 = A1_2
        L7_2 = A2_2
        L8_2 = A3_2
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._on_item_navi_in
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.clear_cur_select
    L4_2(L5_2)
  end
end
L0_1._on_item_click_minus = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._item_validate_callback
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_cur_select
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._item_validate_callback
  L4_2 = A0_2._item_validate_callback_self
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.refresh_short_cut_hint
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.inventory_panel
  L8_2 = L7_2
  L7_2 = L7_2.can_scroll
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_navi_in = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_long_press_repeat_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_minus
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_long_press_minus_repeat_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._on_equipment_rank_up = L1_1
return L0_1
