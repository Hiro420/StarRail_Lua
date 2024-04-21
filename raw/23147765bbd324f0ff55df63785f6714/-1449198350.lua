local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackGoodsItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackGoodsItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ActivityAlley
L1_1 = L1_1.AlleyPackController
L1_1 = L1_1.AlleyJoyStickState
L2_1 = "UIText_ActivityAlley_Shipping_GoodsEmpty"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "AlleyPackDepotPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pack_ui3d_page = L1_2
  L1_2 = {}
  A0_2._goods_item_list = L1_2
  L1_2 = {}
  A0_2._filtered_good_item_list = L1_2
  L1_2 = {}
  A0_2._settled_goods_num_map = L1_2
  L1_2 = {}
  A0_2._settled_goods_data_map = L1_2
  L1_2 = {}
  A0_2._goods_data_map = L1_2
  L1_2 = {}
  A0_2._packing_goods_num_map = L1_2
  L1_2 = {}
  A0_2._clicked_good_id_map = L1_2
  A0_2._is_auto_settle_unlock = true
  A0_2._enable_item_drag_out = true
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btns_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gamepad_btns
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_good_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_good_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyPackJoyStickStateChange
  L4_2 = A0_2._on_joy_stick_state_change
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._goods_item_list = nil
  A0_2._filtered_good_item_list = nil
  A0_2._settled_goods_num_map = nil
  A0_2._settled_goods_data_map = nil
  A0_2._packing_goods_num_map = nil
  A0_2._settled_goods_data_map = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._goods_item_list = A1_2
  L2_2 = G
  L2_2 = L2_2.AlleyPackUtils
  L2_2 = L2_2.sort_alley_goods
  L3_2 = A0_2._goods_item_list
  L2_2(L3_2)
  L2_2 = {}
  A0_2._goods_data_map = L2_2
  L2_2 = pairs
  L3_2 = A0_2._goods_item_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._goods_data_map
    L8_2 = L6_2.GoodsID
    L7_2[L8_2] = L6_2
  end
end
L3_1.init_goods_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._init_goods_data
  L4_2 = G
  L4_2 = L4_2.AlleyPackUtils
  L4_2 = L4_2.get_good_data_from_order
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L0_1.AlleyConstValue
  L2_2 = L2_2.AlleyPackTutorialOrderIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2.OrderID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._trigger_tutorial_goods_map = L2_2
end
L3_1.init_order_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._special_order_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_goods_data
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = A0_2._special_order_data
  L5_2 = L5_2.Goods
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  A0_2._trigger_tutorial_goods_map = false
end
L3_1.init_special_order_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._goods_item_list = A1_2
  L2_2 = G
  L2_2 = L2_2.AlleyPackUtils
  L2_2 = L2_2.sort_alley_goods
  L3_2 = A0_2._goods_item_list
  L2_2(L3_2)
  L2_2 = {}
  A0_2._goods_data_map = L2_2
  L2_2 = pairs
  L3_2 = A0_2._goods_item_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._goods_data_map
    L8_2 = L6_2.GoodsID
    L7_2[L8_2] = L6_2
  end
end
L3_1._init_goods_data = L4_1
function L4_1(A0_2, A1_2)
  A0_2._order_panel = A1_2
end
L3_1.set_order_panel = L4_1
function L4_1(A0_2, A1_2)
  A0_2._special_order_panel = A1_2
end
L3_1.set_special_order_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 1
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L2_2 = L2_2.uid
    if L2_2 == L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_tab_select
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item_by_uid
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TabItem
  L4_2 = G
  L4_2 = L4_2.TabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_btn_filter_all
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.TabItem
  L5_2 = G
  L5_2 = L5_2.TabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item_created
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_filter_medium
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.TabItem
  L6_2 = G
  L6_2 = L6_2.TabItemBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._tab_control
  L5_2 = L4_2
  L4_2 = L4_2.add_item_created
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_btn_filter_small
  L4_2(L5_2, L6_2, L7_2)
end
L3_1._init_tabs_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_packing_good_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_good_list
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1.on_good_add_or_remove = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_settle_good_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_tutorial_goods_map
  L1_2(L2_2)
end
L3_1.on_good_settle_or_cancel_settle = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_depot
  return L1_2
end
L3_1.get_depot_area = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._settled_goods_num_map
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if 0 < L6_2 then
      L7_2 = A0_2._settled_goods_data_map
      L7_2 = L7_2[L5_2]
      if L7_2 ~= nil then
        L8_2 = L7_2.GoodsProfit
        L8_2 = L6_2 * L8_2
        L1_2 = L1_2 + L8_2
      end
    end
  end
  return L1_2
end
L3_1.get_goods_profit = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._settled_goods_data_map
  if not L1_2 then
    L1_2 = {}
  end
  return L1_2
end
L3_1.get_settled_goods_data_map = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._settled_goods_num_map
  if not L1_2 then
    L1_2 = {}
  end
  return L1_2
end
L3_1.get_settled_goods_num_map = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._goods_item_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._packing_goods_num_map
    L8_2 = L6_2.GoodsID
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = L6_2.Count
    if L7_2 < L8_2 then
      L8_2 = L6_2.Count
      L8_2 = L1_2 + L8_2
      L1_2 = L8_2 - L7_2
    end
  end
  return L1_2
end
L3_1.get_remain_goods_count = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_goods_list
    L2_2(L3_2)
  end
  if A1_2 == 2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_goods_list
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AlleyPackGoodsTypeEnum
    L4_2 = L4_2.Medium
    L2_2(L3_2, L4_2)
  end
  if A1_2 == 3 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_goods_list
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AlleyPackGoodsTypeEnum
    L4_2 = L4_2.Small
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_tab_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_filter_good_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_filter_result
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._filtered_good_item_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_good_list
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L3_1._setup_goods_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._filtered_good_item_list
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_good_item_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = false
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_good_item_list
  L4_2 = L3_2
  L3_2 = L3_2.MarkNextFrameRefresh
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 0
  L3_2(L4_2, L5_2)
end
L3_1._refresh_good_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityAlleyPackGoodsItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityAlleyPackGoodsItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._filtered_good_item_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._packing_goods_num_map
  L7_2 = L5_2.GoodsID
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L6_2 = 0
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = A0_2._special_order_data
  L11_2 = A0_2._clicked_good_id_map
  L12_2 = L5_2.GoodsID
  L11_2 = L11_2[L12_2]
  L11_2 = L11_2 == nil and L11_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_show_item_num
  L9_2 = A0_2._special_order_data
  L9_2 = L9_2 ~= nil
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_btn_callback
  L9_2 = A0_2._on_good_item_press
  L10_2 = A0_2._on_good_item_drag_out
  L11_2 = A0_2._on_good_item_release
  L12_2 = A0_2._on_good_item_click
  L13_2 = A0_2._on_good_item_gamepad_select
  L14_2 = A0_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_depot_rect
  L9_2 = A0_2._binder
  L9_2 = L9_2.rect_depot
  L7_2(L8_2, L9_2)
  return L3_2
end
L3_1._on_good_item_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._remove_panel_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1._on_good_item_press = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[Alley] _on_good_item_gamepad_select"
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._remove_panel_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1._on_good_item_gamepad_select = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._last_select_good_id
  if L3_2 == nil then
    L3_2 = A1_2.GoodsID
    A0_2._last_select_good_id = L3_2
    return
  end
  L3_2 = A0_2._clicked_good_id_map
  L4_2 = A1_2.GoodsID
  L3_2[L4_2] = true
  L4_2 = A2_2
  L3_2 = A2_2.remove_reddot
  L3_2(L4_2)
  L3_2 = A1_2.GoodsID
  A0_2._last_select_good_id = L3_2
end
L3_1._remove_panel_reddot = L4_1
function L4_1(A0_2, A1_2)
  A0_2._enable_item_drag_out = A1_2
end
L3_1.enable_item_drag_out = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._enable_item_drag_out
  if L2_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.is_forbid_op
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._is_mouse_below_depot_rect
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A1_2.GoodsPropPath
  if L2_2 == "" then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "\230\145\134\232\180\167\233\133\141\231\189\174\228\184\173prop\232\183\175\229\190\132\228\184\141\229\173\152\229\156\168\239\188\140ID\239\188\154"
    L4_2 = A1_2.GoodsID
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._packing_goods_num_map
  L3_2 = A1_2.GoodsID
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = A1_2.Count
  if L2_2 >= L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.load_shop_good
  L5_2 = A1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_item_list
  L4_2 = L3_2
  L3_2 = L3_2.ManualStopDragging
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_item_list
  L3_2.ForbidDrag = true
end
L3_1._on_good_item_drag_out = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Input
  L1_2 = L1_2.mousePosition
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_depot
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L4_2.y
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_depot
  L6_2 = L6_2.rect
  L6_2 = L6_2.y
  L5_2 = L5_2 < L6_2
  return L5_2
end
L3_1._is_mouse_below_depot_rect = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_item_list
  L2_2.ForbidDrag = false
end
L3_1._on_good_item_release = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._auto_settle_success = false
  L2_2 = A0_2._is_auto_settle_unlock
  if L2_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.is_forbid_op
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = A1_2.GoodsPropPath
  if L2_2 == "" then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "\230\145\134\232\180\167\233\133\141\231\189\174\228\184\173prop\232\183\175\229\190\132\228\184\141\229\173\152\229\156\168\239\188\140ID\239\188\154"
    L4_2 = A1_2.GoodsID
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._packing_goods_num_map
  L3_2 = A1_2.GoodsID
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = A1_2.Count
  if L2_2 >= L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.load_shop_good
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._pack_ui3d_page
  L5_2 = L4_2
  L4_2 = L4_2.auto_settle
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._auto_settle_success = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._is_order_finish
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
    if not L4_2 then
      goto lbl_72
    end
  end
  L4_2 = A0_2._pack_ui3d_page
  L5_2 = L4_2
  L4_2 = L4_2.get_cur_select_good
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._pack_ui3d_page
  L6_2 = L5_2
  L5_2 = L5_2.switch_select_target
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.AlleyPackGoodData
    L5_2.IsAutoSettleSelect = true
    goto lbl_75
    ::lbl_72::
    L4_2 = A0_2._pack_ui3d_page
    L5_2 = L4_2
    L4_2 = L4_2.unselect_cur_good
    L4_2(L5_2)
  end
  ::lbl_75::
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._auto_settle_success
    if L4_2 then
      L4_2 = A0_2._pack_ui3d_page
      L5_2 = L4_2
      L4_2 = L4_2.switch_joy_stick_state
      L6_2 = L1_1.GoodOperation
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = A0_2._pack_ui3d_page
    L5_2 = L4_2
    L4_2 = L4_2.switch_joy_stick_state
    L6_2 = L1_1.UINavigation
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._auto_settle_success
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._statistic_record_auto_settle
    L4_2(L5_2)
  else
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_ActivityAlley_Shipping_GoodsNotMatch"
    L4_2(L5_2, L6_2)
  end
end
L3_1._on_good_item_click = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._auto_settle_success
  return L1_2
end
L3_1.is_auto_settle_success = L4_1
function L4_1(A0_2, A1_2)
  A0_2._is_auto_settle_unlock = A1_2
end
L3_1.enable_auto_settle = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._order_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._order_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_all_target_finish
    return L1_2(L2_2)
  end
  L1_2 = A0_2._special_order_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._special_order_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_all_target_finish
    return L1_2(L2_2)
  end
  L1_2 = false
  return L1_2
end
L3_1._is_order_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L2_2 = A0_2._goods_item_list
    return L2_2
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._goods_item_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.GoodsType
    if L8_2 == A1_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L3_1._get_filter_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._packing_goods_num_map = L1_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_packing_good_data_dict
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.GoodDef
    L4_2 = L4_2.GoodID
    L5_2 = A0_2._packing_goods_num_map
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      L5_2 = A0_2._packing_goods_num_map
      L5_2[L4_2] = 0
    end
    L5_2 = A0_2._packing_goods_num_map
    L6_2 = A0_2._packing_goods_num_map
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2 + 1
    L5_2[L4_2] = L6_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
end
L3_1._refresh_packing_good_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._settled_goods_num_map = L1_2
  L1_2 = {}
  A0_2._settled_goods_data_map = L1_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_packing_good_data_dict
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.GoodDef
    L4_2 = L4_2.GoodID
    L5_2 = A0_2._pack_ui3d_page
    L6_2 = L5_2
    L5_2 = L5_2.is_alley_good_settled
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = A0_2._settled_goods_num_map
      L5_2 = L5_2[L4_2]
      if L5_2 == nil then
        L5_2 = A0_2._settled_goods_num_map
        L5_2[L4_2] = 0
        L5_2 = A0_2._goods_data_map
        L5_2 = L5_2[L4_2]
        L6_2 = A0_2._settled_goods_data_map
        L6_2[L4_2] = L5_2
      end
      L5_2 = A0_2._settled_goods_num_map
      L6_2 = A0_2._settled_goods_num_map
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2 + 1
      L5_2[L4_2] = L6_2
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
end
L3_1._refresh_settle_good_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_good_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_tab_left
  L4_2 = A0_2._on_btn_gamepad_tab_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_tab_right
  L4_2 = A0_2._on_btn_gamepad_tab_right
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._bind_gamepad_btns = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L1_2 = A0_2._pack_ui3d_page
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.get_joy_stick_state
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1.UINavigation
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L3_1._on_btn_gamepad_tab_left = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L1_2 = A0_2._pack_ui3d_page
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.get_joy_stick_state
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1.UINavigation
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L3_1._on_btn_gamepad_tab_right = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1.UINavigation
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.force_set_default_navigation_target
      L2_2(L3_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.clear_cur_selected_object
    L2_2(L3_2)
  end
end
L3_1._on_joy_stick_state_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.AutoPlaceCount
    L2_2 = L2_2 + 1
    L1_2.AutoPlaceCount = L2_2
  end
end
L3_1._statistic_record_auto_settle = L4_1
L4_1 = "Tutorial_Alley_Pack_GoodsSettle"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._trigger_tutorial_goods_map
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._gen_goods_map_key
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "\233\135\145\228\186\186\229\183\183\230\145\134\232\180\167\229\188\149\229\175\188\232\180\167\231\137\169\239\188\140Custom Str, key: "
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.trigger_custom_string
  L3_2 = L1_2
  L2_2(L3_2)
end
L3_1._try_trigger_tutorial_goods_map = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L4_1
  L2_2 = pairs
  L3_2 = A0_2._settled_goods_num_map
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "_%s_%s"
    L10_2 = L5_2
    L11_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L1_2 = L7_2 .. L8_2
  end
  return L1_2
end
L3_1._gen_goods_map_key = L5_1
return L3_1
