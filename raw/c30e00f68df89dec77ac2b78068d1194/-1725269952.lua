local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicDetailSingleTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicDetailSingleTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicUpgradeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicUpgradeTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSubMenuPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2
  A0_2._relic = A3_2
  A0_2.node_detail_panel = A4_2
  A0_2.node_upgrade_panel = A5_2
  L7_2 = A6_2 or L7_2
  if not A6_2 then
    L7_2 = 1
  end
  A0_2._default_sub_menu_id = L7_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  return L1_2
end
L0_1.get_cur_selected_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_tab_btn_object
    return L1_2(L2_2)
  end
end
L0_1.get_cur_tab_btn_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group
      L2_2.alpha = A1_2
    end
  end
end
L0_1.set_canvas_group_alpha = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_relic_detail_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_relic_upgrade_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_item_select_callback_func
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.set_tab_select_callback
    L3_2 = A0_2._tab_item_select_callback_obj
    L4_2 = A0_2._tab_item_select_callback_func
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_sub_menu_id
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._relic_detail_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicDetailSingleTabItem
  L4_2 = G
  L4_2 = L4_2.RelicDetailSingleTabItemBinder
  L5_2 = A0_2._relic
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._relic_detail_tab_item = L1_2
  L1_2 = A0_2._relic_detail_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._relic_detail_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._relic_detail_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_relic_detail_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicUpgradeTabItem
  L4_2 = G
  L4_2 = L4_2.RelicUpgradeTabItemBinder
  L5_2 = A0_2._relic
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._relic_upgrade_tab_item = L1_2
  L1_2 = A0_2._relic_upgrade_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._relic_upgrade_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2.node_upgrade_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._relic_upgrade_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_upgrade
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_relic_upgrade_tab_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._tab_item_select_callback_obj = A1_2
  A0_2._tab_item_select_callback_func = A2_2
end
L0_1.reg_tab_select_call_back = L1_1
return L0_1
