local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportShopItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportGoodsItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportShopItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._alley_transport_ui3d = L1_2
  L1_2 = {}
  A0_2._last_complete_draw_line_state_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.alley_map_shop_data
  A0_2._alley_map_shop_data = L2_2
  L2_2 = A1_2.cur_show_layer
  A0_2._cur_show_layer = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new_goods_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._alley_map_shop_data
  L2_2 = L2_2.GridID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L5_2 = L5_2.gameObject
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AlleyGridExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.GridTitle
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.image_shop
  L7_2 = L3_2.ShopInfoIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.get_trigger_name_by_shop_id
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_icon
  L6_2 = L5_2
  L5_2 = L5_2.SetTrigger
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.IsAlleyShopUnlock
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_lock_state
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.image_shop
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._update_shop_goods_info_list
    L5_2(L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.goods_list_view
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.goods_list_view
    L6_2 = L5_2
    L5_2 = L5_2.SetListItemCount
    L7_2 = A0_2._shop_goods_info_list
    L7_2 = #L7_2
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.goods_list_view
    L6_2 = L5_2
    L5_2 = L5_2.RefreshAllShownItem
    L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._update_energy_panel_view
    L5_2(L6_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.goods_list_view
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_lock_state
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetAlleyMapIDByLayer
  L7_2 = A0_2._cur_show_layer
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.CheckLineCompletedState
  L8_2 = L5_2
  L9_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2._last_complete_draw_line_state_list
  L7_2 = L7_2[L2_2]
  if L7_2 ~= false then
    L7_2 = A0_2._last_complete_draw_line_state_list
    L7_2 = L7_2[L2_2]
  end
  if L7_2 == nil and L6_2 == true then
    L7_2 = A0_2._alley_transport_ui3d
    L8_2 = L7_2
    L7_2 = L7_2.get_cur_alley_transport_route_state
    L7_2 = L7_2(L8_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AlleyTransportRouteState
    L8_2 = L8_2.Draw
    if L7_2 == L8_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.animation_root
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = "AlleyTransportOrderInfoItem_Unlock"
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = A0_2._last_complete_draw_line_state_list
  L7_2[L2_2] = L6_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._shop_goods_info_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_energy_panel_view
  L1_2(L2_2)
end
L0_1.update_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsAlleyShopUnlock
  L4_2 = A0_2._alley_map_shop_data
  L4_2 = L4_2.GridID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.CheckLineCompletedState
    L4_2 = L1_2
    L5_2 = A0_2._alley_map_shop_data
    L5_2 = L5_2.GridID
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_un_connect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_energy_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.GetEnergyCount
      L4_2 = L1_2
      L5_2 = A0_2._alley_map_shop_data
      L5_2 = L5_2.GridID
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_energy_num
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_un_connect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_energy_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._update_energy_panel_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._alley_map_shop_data
  L1_2 = L1_2.GridID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyShopExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  A0_2._shop_goods_info_list = L3_2
  L3_2 = 0
  L4_2 = L2_2.ShopGoods
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.ShopGoods
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.GoodsID
    L8_2 = {}
    L8_2.GoodsID = L7_2
    L8_2.IsUnlock = true
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._shop_goods_info_list
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._update_shop_goods_info_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_goods_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AlleyTransportGoodsItemPanel
    L8_2 = G
    L8_2 = L8_2.AlleyTransportGoodsItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._cur_show_layer
  L8_2 = A0_2._shop_goods_info_list
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L9_2 = A0_2._alley_map_shop_data
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_goods_item_changed = L2_1
return L0_1
