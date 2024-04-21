local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportOrderInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportShopItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportLayerPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportOrderInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = {}
L2_1.None = 0
L2_1.Show = 1
L2_1.Edit = 2
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._alley_transport_ui3d = L4_2
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.cur_show_layer
  A0_2._cur_show_layer = L4_2
  A0_2._cur_edit_shop_id = nil
  A0_2._cur_edit_shop_panel = nil
  L4_2 = {}
  A0_2._shop_draw_line_completed_state_list = L4_2
  A0_2._last_all_product_profits = 0
  L4_2 = L2_1.Show
  A0_2._cur_show_mode = L4_2
  A0_2._appoint_shop_id = A3_2
  L4_2 = {}
  A0_2._alley_map_shop_info_list = L4_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._tab_select_callback_func = A2_2
end
L0_1.set_tab_select_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    A0_2._cur_show_layer = A1_2
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._cur_show_layer
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2._cur_edit_shop_id
  end
  A0_2._cur_edit_shop_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_show_mode
  L4_2 = L2_1.Edit
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.CheckLineCompletedState
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._shop_draw_line_completed_state_list
  L4_2 = L4_2[A1_2]
  if L4_2 ~= nil then
    L4_2 = A0_2._shop_draw_line_completed_state_list
    L4_2 = L4_2[A1_2]
    if L3_2 == L4_2 then
      goto lbl_35
    end
  end
  L4_2 = A0_2._shop_draw_line_completed_state_list
  L4_2[A1_2] = L3_2
  L5_2 = A0_2
  L4_2 = A0_2._update_energy_tip_view
  L4_2(L5_2)
  L4_2 = A0_2._cur_edit_shop_panel
  if L4_2 then
    L4_2 = A0_2._cur_edit_shop_panel
    L5_2 = L4_2
    L4_2 = L4_2.update_view
    L4_2(L5_2)
  end
  ::lbl_35::
end
L0_1.on_draw_call_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_show_mode
  L3_2 = L2_1.Show
  L1_2(L2_2, L3_2)
end
L0_1.setup_show_mode_by_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllShopListByMapID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  A0_2._alley_map_shop_info_list = L4_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = {}
    L9_2.alley_map_shop_data = L8_2
    L10_2 = A0_2._cur_show_layer
    L9_2.cur_show_layer = L10_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._alley_map_shop_info_list
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._alley_map_shop_info_list
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.IsAlleyShopUnlock
    L4_3 = A0_3.alley_map_shop_data
    L4_3 = L4_3.GridID
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = L1_1
      L3_3 = L2_3
      L2_3 = L2_3.IsAlleyShopUnlock
      L4_3 = A1_3.alley_map_shop_data
      L4_3 = L4_3.GridID
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = true
        return L2_3
    end
    else
      L2_3 = L1_1
      L3_3 = L2_3
      L2_3 = L2_3.IsAlleyShopUnlock
      L4_3 = A0_3.alley_map_shop_data
      L4_3 = L4_3.GridID
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = L1_1
        L3_3 = L2_3
        L2_3 = L2_3.IsAlleyShopUnlock
        L4_3 = A1_3.alley_map_shop_data
        L4_3 = L4_3.GridID
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = false
          return L2_3
      end
      else
        L2_3 = A0_3.alley_map_shop_data
        L2_3 = L2_3.GridID
        L3_3 = A1_3.alley_map_shop_data
        L3_3 = L3_3.GridID
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._shop_item_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._alley_map_shop_info_list
  L4_2(L5_2, L6_2)
end
L0_1._refresh_shop_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_show_mode
  if L2_2 ~= A1_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_alley_transport_route_state
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AlleyTransportRouteState
    L3_2 = L3_2.Edit
    if L2_2 ~= L3_2 then
      A0_2._cur_show_mode = A1_2
      L2_2 = L2_1.Show
      if A1_2 == L2_2 then
        A0_2._cur_edit_shop_panel = nil
        L3_2 = A0_2
        L2_2 = A0_2._try_play_animation
        L4_2 = "AlleyOrderInfoPanel_ToMain"
        L2_2(L3_2, L4_2)
      else
        L2_2 = L2_1.Edit
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._try_play_animation
          L4_2 = "AlleyOrderInfoPanel_ToEdit"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._setup_show_mode = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2._alley_map_shop_info_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._cur_edit_shop_id
    if L8_2 then
      L8_2 = A0_2._cur_edit_shop_id
      L9_2 = L7_2.alley_map_shop_data
      L9_2 = L9_2.GridID
      if L8_2 == L9_2 then
        L2_2 = L6_2
        break
      end
    end
  end
  if 0 < L2_2 then
    L3_2 = A0_2._shop_item_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_by_index
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      A0_2._cur_edit_shop_panel = L3_2
      L4_2 = L3_2._binder
      L4_2 = L4_2.animation
      L5_2 = L4_2
      L4_2 = L4_2.Play
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._try_play_animation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetShowAlleyMapRewardRowListByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.cs_list_to_table
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyMapIDByLayer
  L5_2 = A0_2._cur_show_layer
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetLogisticsScoreByMapID
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L4_2.UnlockLevel
    if 0 < L5_2 then
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.GetAllEnergyCount
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L4_2.UnlockLevel
      L6_2 = L2_2[L6_2]
      L6_2 = L6_2.MapScore
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_completed
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_current_fill
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.slider_current_score
      L8_2 = L5_2 / L6_2
      L7_2.value = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_total_score
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_progress
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = {}
      A0_2._score_progress_data_list = L7_2
      L7_2 = 1
      L8_2 = L4_2.UnlockLevel
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = {}
        L12_2 = L2_2[L10_2]
        L12_2 = L12_2.MapScore
        if L5_2 >= L12_2 then
          L12_2 = G
          L12_2 = L12_2.AlleyTransport
          L12_2 = L12_2.score_progress_state
          L12_2 = L12_2.reach
          L11_2.progress_state = L12_2
        else
          L12_2 = G
          L12_2 = L12_2.AlleyTransport
          L12_2 = L12_2.score_progress_state
          L12_2 = L12_2.empty
          L11_2.progress_state = L12_2
        end
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = A0_2._score_progress_data_list
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      end
      L7_2 = A0_2._score_progress_list_panel
      L8_2 = L7_2
      L7_2 = L7_2.setup_view
      L9_2 = A0_2._score_progress_data_list
      L7_2(L8_2, L9_2)
  end
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_progress
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._update_energy_tip_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportShopItemPanel"
  L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportShopItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._shop_item_list_panel = L1_2
  L1_2 = A0_2._shop_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.shop_list_content
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportScoreProgressItem"
  L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportScoreProgressItemBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._score_progress_list_panel = L1_2
  L1_2 = A0_2._score_progress_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_red_dot
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_reddot_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.bind_reddot
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "AlleyTransportMapLayer_%s"
    L10_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = nil
    L10_2 = A0_2
    L11_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._bind_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L3_2 = L3_2.tab_btn_root
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_floor_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.AlleyTransport
    L5_2 = L5_2.max_layer
    if L4_2 ~= L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.AlleyTransportLayerPanel
      L8_2 = G
      L8_2 = L8_2.AlleyTransportLayerPanelBinder
      L9_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.bind
      L8_2 = A0_2._binder
      L8_2 = L8_2.tab_btn_root
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._tab_control
      L7_2 = L6_2
      L6_2 = L6_2.add_item_created
      L8_2 = L5_2
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_tab_floor_list
      L9_2 = L9_2[L4_2]
      L6_2(L7_2, L8_2, L9_2)
    else
      L5_2 = A0_2._appoint_shop_id
      if L5_2 ~= nil then
        L5_2 = A0_2._appoint_shop_id
        L6_2 = G
        L6_2 = L6_2.AlleyTransport
        L6_2 = L6_2.max_layer_shop_id
        if L5_2 == L6_2 then
          L6_2 = A0_2
          L5_2 = A0_2.create_panel
          L7_2 = G
          L7_2 = L7_2.AlleyTransportLayerPanel
          L8_2 = G
          L8_2 = L8_2.AlleyTransportLayerPanelBinder
          L9_2 = L4_2
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
          L7_2 = L5_2
          L6_2 = L5_2.bind
          L8_2 = A0_2._binder
          L8_2 = L8_2.tab_btn_root
          L6_2(L7_2, L8_2)
          L6_2 = A0_2._tab_control
          L7_2 = L6_2
          L6_2 = L6_2.add_item_created
          L8_2 = L5_2
          L9_2 = A0_2._binder
          L9_2 = L9_2.node_tab_floor_list
          L9_2 = L9_2[L4_2]
          L6_2(L7_2, L8_2, L9_2)
      end
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_tab_floor_list
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
      end
    end
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_show_layer = A1_2
  A0_2._cur_edit_shop_id = 0
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGenerateAlleyMapGridData
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_shop_list
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_energy_tip_view
  L3_2(L4_2)
  L3_2 = A0_2._tab_select_callback_func
  L4_2 = A0_2._callback_obj
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tab_item_clicked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_alley_transport_route_state
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Draw
  if L1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Wipe
    if L1_2 ~= L2_2 then
      L2_2 = A0_2._tab_control
      L3_2 = L2_2
      L2_2 = L2_2.select_prev
      L2_2(L3_2)
    end
  end
end
L0_1._select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_alley_transport_route_state
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Draw
  if L1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Wipe
    if L1_2 ~= L2_2 then
      L2_2 = A0_2._tab_control
      L3_2 = L2_2
      L2_2 = L2_2.select_next
      L2_2(L3_2)
    end
  end
end
L0_1._select_next = L3_1
return L0_1
