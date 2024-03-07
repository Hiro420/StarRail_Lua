local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.LightCone.LightConeBaseTypeFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeTabItem"
L2_1 = G
L2_1 = L2_1.InventoryTabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "4027"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_sell
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_sell
  L2_2.ActionEnabled = A1_2
end
L0_1._set_func_btn_in_control_enable = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_show_item_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L2_2 = L2_2._binder
  L2_2 = L2_2.scroll_item
  L2_2 = L2_2.InAsyncSetItemCount
  L2_2 = not L2_2
  return L2_2
end
L0_1.can_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.LightConeBaseTypeFilter
  L1_2 = L1_2(L2_2)
  A0_2.light_cone_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2.light_cone_filter
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_added
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._item_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_enable_show_favorite
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_top_bar_area_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._on_select
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_top_bar_area_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._on_unselect
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.super
  L2_2 = L2_2._refresh
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_capacity_limit
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_sell
  L5_2 = A0_2._on_btn_sell
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_lock_setting
  L5_2 = A0_2._on_btn_lock_setting
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._refresh_order_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_filter_panel
  L1_2(L2_2)
end
L0_1._reset_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L1_2 = A0_2.light_cone_filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2._refresh_btn_filter
  L1_2(L2_2)
end
L0_1.reset_sort_and_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_filters
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  if L2_2 then
    L2_2 = L1_2[1]
    L3_2 = L2_2
    L2_2 = L2_2._force_rebuild_filter_data
    L2_2(L3_2)
  end
end
L0_1._on_setup_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2
  L2_2 = L2_2.GetInventoryTabItems
  L4_2 = A0_2._tab_data
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._item_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._item_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_filter_result
  L1_2 = L1_2(L2_2)
  A0_2._item_table = L1_2
end
L0_1._get_item_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2.on_item_changed
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._item_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filters
  L1_2(L2_2)
end
L0_1.on_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2.light_cone_filter
  L4_2 = L4_2.count
  if 0 < L4_2 then
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_equip
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A2_2
      L6_3 = A3_2
      L7_3 = nil
      L8_3 = L0_1._compare_sort_item_secondary
      return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L4_2(L5_2, L6_2)
  else
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_equip
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A2_2
      L6_3 = A3_2
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L4_2(L5_2, L6_2)
  end
end
L0_1._sort = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2.AvatarBaseType
  L5_2 = A1_2.AvatarBaseType
  if L4_2 ~= L5_2 and A3_2 ~= nil then
    L4_2 = A0_2.AvatarBaseType
    if A3_2 == L4_2 then
      L4_2 = true
      return L4_2
    else
      L4_2 = A1_2.AvatarBaseType
      if A3_2 == L4_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L4_2 = A0_2.Rarity
  L5_2 = A1_2.Rarity
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Rarity
    L5_2 = A1_2.Rarity
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.ConfigID
  L5_2 = A1_2.ConfigID
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.ConfigID
    L5_2 = A1_2.ConfigID
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.BelongAvatarID
  L5_2 = A1_2.BelongAvatarID
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.BelongAvatarID
    if L4_2 ~= 0 then
      L4_2 = A1_2.BelongAvatarID
      if L4_2 == 0 then
        L4_2 = true
        return L4_2
      end
    end
    L4_2 = A0_2.BelongAvatarID
    if L4_2 == 0 then
      L4_2 = A1_2.BelongAvatarID
      if L4_2 ~= 0 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L4_2 = A0_2.Level
  L5_2 = A1_2.Level
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Level
    L5_2 = A1_2.Level
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.AvatarBaseType
  L5_2 = A1_2.AvatarBaseType
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.AvatarBaseType
    L4_2 = #L4_2
    L5_2 = A1_2.AvatarBaseType
    L5_2 = #L5_2
    L4_2 = L4_2 < L5_2
    return L4_2
  end
  L4_2 = A0_2.Rank
  L5_2 = A1_2.Rank
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Rank
    L5_2 = A1_2.Rank
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.IsProtected
  L5_2 = A1_2.IsProtected
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.IsProtected
    return L4_2
  end
  L4_2 = A0_2.UID
  L5_2 = A1_2.UID
  L4_2 = L4_2 > L5_2
  return L4_2
end
L0_1._compare_sort_item_secondary = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_finish_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_capacity_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Inventory_EquipCapacity"
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2._tab_data
  L2_2 = L2_2.DisplayCapacityLimit
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  if L2_2 <= L3_2 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#EB4D3D\">%s</color>"
    L4_2 = A0_2._item_table
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._item_table
    L1_2 = #L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._tab_data
  L4_2 = L4_2.DisplayCapacityLimit
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_capacity_limit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeSellPage"
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.ItemSortTypeList
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_sell = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.FromSellPage = false
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L1_2.ReportPageName = L2_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.LightCone.LockSetting.LightConeLockSettingDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_lock_setting = L2_1
return L0_1
