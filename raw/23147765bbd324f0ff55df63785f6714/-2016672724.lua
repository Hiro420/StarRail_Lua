local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackOrderItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackOrderItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyPackOrderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._depot_panel_ref = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.fetch_ui3d
  L4_2 = G
  L4_2 = L4_2.ActivityAlleyPackUI3DPage
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._pack_ui3d_page = L2_2
end
L0_1.set_depot_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_item_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_order_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_item_list_view
  L1_2.UseWeakActive = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_order_data = A1_2
end
L0_1.init_order_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_order_data
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2._cur_order_data
    L2_2 = L2_2.OrderContent
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = {}
  ::lbl_13::
  A0_2._order_content_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_item_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._order_content_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_item_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._cur_order_data
  if L1_2 == nil then
    A0_2.is_finished_all = false
    L2_2 = A0_2
    L1_2 = A0_2.show_status_ani
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_settled_goods
  L1_2 = L1_2(L2_2)
  L2_2 = true
  L3_2 = pairs
  L4_2 = A0_2._order_content_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.GoodsID
    L8_2 = L1_2[L8_2]
    if not L8_2 then
      L8_2 = 0
    end
    L9_2 = L7_2.GoodsCnt
    L9_2 = L8_2 >= L9_2
    L10_2 = A0_2._binder
    L10_2 = L10_2.order_item_list_view
    L11_2 = L10_2
    L10_2 = L10_2.GetShownItemByItemIndex
    L12_2 = L6_2 - 1
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 ~= nil then
      L11_2 = L10_2.UserObjectData
      if L11_2 ~= nil then
        L11_2 = L10_2.UserObjectData
        L13_2 = L11_2
        L12_2 = L11_2.setup_cur_count
        L14_2 = L8_2
        L12_2(L13_2, L14_2)
        L13_2 = L11_2
        L12_2 = L11_2.set_is_finish
        L14_2 = L9_2
        L12_2(L13_2, L14_2)
      end
    end
    if L2_2 then
      L2_2 = L9_2
    end
  end
  A0_2.is_finished_all = L2_2
  L4_2 = A0_2
  L3_2 = A0_2.show_status_ani
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_show_order_finish_toast
  L3_2(L4_2)
end
L0_1.refresh_order = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._is_ani_finish
    if L2_2 then
      return
    end
  end
  A0_2._is_ani_finish = A1_2
end
L0_1.show_status_ani = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityAlleyPackOrderItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityAlleyPackOrderItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._order_content_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_order_item = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_order_data
  if L1_2 ~= nil then
    L1_2 = A0_2.is_finished_all
    if L1_2 then
      L1_2 = A0_2._cur_order_data
      L1_2 = L1_2.OrderProfit
      return L1_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_order_profit = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_order_data
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1.is_all_target_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._depot_panel_ref
  if L1_2 ~= nil then
    L1_2 = A0_2._depot_panel_ref
    L2_2 = L1_2
    L1_2 = L1_2.get_settled_goods_num_map
    return L1_2(L2_2)
  end
  L1_2 = {}
  return L1_2
end
L0_1._get_settled_goods = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_order_data
  if L1_2 ~= nil then
    L1_2 = A0_2.is_finished_all
    if L1_2 then
      goto lbl_9
    end
  end
  A0_2._already_showed_order_finish_toast = false
  do return end
  ::lbl_9::
  L1_2 = A0_2._is_showing_order_finish_toast
  if not L1_2 then
    L1_2 = A0_2._already_showed_order_finish_toast
    if not L1_2 then
      goto lbl_17
    end
  end
  A0_2._already_showed_order_finish_toast = true
  do return end
  ::lbl_17::
  A0_2._is_showing_order_finish_toast = true
  A0_2._already_showed_order_finish_toast = true
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Activity.ActivityAlley.Pack.Toast.AlleyPackOrderFinishHintDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    A0_2._is_showing_order_finish_toast = false
  end
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.show_finish_order_effect
  L2_2(L3_2)
end
L0_1._try_show_order_finish_toast = L1_1
return L0_1
