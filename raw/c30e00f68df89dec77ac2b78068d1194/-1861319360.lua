local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeUpgradeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeUpgradeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeBreakTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeBreakTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSubMenuPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2
  A0_2._equip_data = A3_2
  A0_2.node_detail_panel = A4_2
  A0_2.node_upgrade_panel = A5_2
  A0_2.node_break_panel = A6_2
  L8_2 = A7_2 or L8_2
  if not A7_2 then
    L8_2 = 1
  end
  A0_2._default_sub_menu_id = L8_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  if not L1_2 then
    L1_2 = nil
  end
  A0_2._equip_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_light_cone_detail_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_light_cone_upgrade_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_light_cone_break_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_sub_menu_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_point_callback = A1_2
end
L0_1.register_select_point_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._close_point_detail_callback = A1_2
end
L0_1.register_close_point_detail_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._light_cone_detail_tab_item
  if L1_2 then
    L1_2 = A0_2._light_cone_detail_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._light_cone_upgrade_tab_item
  if L1_2 then
    L1_2 = A0_2._light_cone_upgrade_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._light_cone_break_tab_item
  if L1_2 then
    L1_2 = A0_2._light_cone_break_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  return L1_2
end
L0_1.get_cur_selected_object = L1_1
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
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2.setup_in_control_button_enable
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setup_in_control_button_enable
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group
    L2_2.alpha = A1_2
  end
end
L0_1.setup_canvas_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._ui3d = A1_2
  L2_2 = A0_2._light_cone_upgrade_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_ui3d
  L4_2 = A0_2._ui3d
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._light_cone_break_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_ui3d
  L4_2 = A0_2._ui3d
  L2_2(L3_2, L4_2)
end
L0_1.setup_ui3d = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeDetailTabItem
  L4_2 = G
  L4_2 = L4_2.LightConeDetailTabItemBinder
  L5_2 = A0_2._equip_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._light_cone_detail_tab_item = L1_2
  L1_2 = A0_2._light_cone_detail_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._light_cone_detail_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._light_cone_detail_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_light_cone_detail_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeUpgradeTabItem
  L4_2 = G
  L4_2 = L4_2.LightConeUpgradeTabItemBinder
  L5_2 = A0_2._equip_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._light_cone_upgrade_tab_item = L1_2
  L1_2 = A0_2._light_cone_upgrade_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._light_cone_upgrade_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2.node_upgrade_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._light_cone_upgrade_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_upgrade
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_light_cone_upgrade_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeBreakTabItem
  L4_2 = G
  L4_2 = L4_2.LightConeBreakTabItemBinder
  L5_2 = A0_2._equip_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._light_cone_break_tab_item = L1_2
  L1_2 = A0_2._light_cone_break_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._light_cone_break_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2.node_break_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._light_cone_break_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_break
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_light_cone_break_tab_item = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._select_point_callback = nil
  A0_2._close_point_detail_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
