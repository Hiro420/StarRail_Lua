local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnFilterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicSetFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicNormalSuitFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicPlanarSuitFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicRarityFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicSubPropertyFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicMainPropertyFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicSubPropertyNumFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicLockStatusFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicLevelStatusFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicEquipmentStatusFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.OrFilterGroup"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.RelicType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicFilterPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = {}
L2_1.Common = 0
L2_1.RelicSell = 1
L2_1.RelicLevelUp = 2
L1_1.RelicFilterDisplayType = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = L1_1.RelicFilterDisplayType
    L4_2 = L4_2.Common
  end
  A0_2._filter_display_type = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicNormalSuitFilter
  L4_2 = L4_2(L5_2)
  A0_2._normal_suit_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicPlanarSuitFilter
  L4_2 = L4_2(L5_2)
  A0_2._planar_suit_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicRarityFilter
  L4_2 = L4_2(L5_2)
  A0_2._rarity_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicMainPropertyFilter
  L4_2 = L4_2(L5_2)
  A0_2._main_property_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicSubPropertyFilter
  L4_2 = L4_2(L5_2)
  A0_2._sub_property_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RelicLockStatusFilter
  L4_2 = L4_2(L5_2)
  A0_2._lock_status_filter = L4_2
  L4_2 = {}
  L5_2 = A0_2._normal_suit_filter
  L6_2 = A0_2._planar_suit_filter
  L7_2 = A0_2._rarity_filter
  L8_2 = A0_2._main_property_filter
  L9_2 = A0_2._sub_property_filter
  L10_2 = A0_2._lock_status_filter
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  A0_2._all_filter = L4_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.OrFilterGroup
  L6_2 = A0_2._normal_suit_filter
  L7_2 = A0_2._planar_suit_filter
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._set_filter_group = L4_2
  L4_2 = {}
  L5_2 = A0_2._set_filter_group
  L6_2 = A0_2._rarity_filter
  L7_2 = A0_2._main_property_filter
  L8_2 = A0_2._sub_property_filter
  L9_2 = A0_2._lock_status_filter
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  A0_2._filters = L4_2
  L4_2 = A0_2._filter_display_type
  L5_2 = L1_1.RelicFilterDisplayType
  L5_2 = L5_2.RelicSell
  if L4_2 ~= L5_2 then
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.RelicLevelStatusFilter
    L4_2 = L4_2(L5_2)
    A0_2._level_status_filter = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._all_filter
    L6_2 = A0_2._level_status_filter
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._filters
    L6_2 = A0_2._level_status_filter
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._filter_display_type
  L5_2 = L1_1.RelicFilterDisplayType
  L5_2 = L5_2.RelicSell
  if L4_2 ~= L5_2 then
    L4_2 = A0_2._filter_display_type
    L5_2 = L1_1.RelicFilterDisplayType
    L5_2 = L5_2.RelicLevelUp
    if L4_2 ~= L5_2 then
      L4_2 = G
      L4_2 = L4_2.new
      L5_2 = G
      L5_2 = L5_2.RelicEquipmentStatusFilter
      L4_2 = L4_2(L5_2)
      A0_2._equipment_status_filter = L4_2
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._all_filter
      L6_2 = A0_2._equipment_status_filter
      L4_2(L5_2, L6_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._filters
      L6_2 = A0_2._equipment_status_filter
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = L0_1.Unknow
  A0_2._relic_base_type = L4_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_filter
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._all_filter
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_filter
  L2_2(L3_2, L4_2)
end
L1_1.save_btn_list = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_setup_filter = A1_2
  A0_2._on_filter_finished = A2_2
  A0_2._callback_self = A3_2
end
L1_1.register_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._relic_base_type = A1_2
  L2_2 = A0_2._main_property_filter
  L3_2 = L2_2
  L2_2 = L2_2.set_available_property_types
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.get_available_property_by_relic_type
  L5_2 = A0_2._relic_base_type
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_filter
  L2_2(L3_2)
end
L1_1.set_relic_base_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._all_filter
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_locked_datas
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L1_1.set_locked_relics = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
end
L1_1.reset_filter_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._normal_suit_filter
  L3_2 = L2_2
  L2_2 = L2_2.count_relic_set
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._planar_suit_filter
  L3_2 = L2_2
  L2_2 = L2_2.count_relic_set
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
end
L1_1.set_source_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_setup_filter
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.do_filter
  L2_2 = A0_2._data
  L3_2 = A0_2._filters
  return L1_2(L2_2, L3_2)
end
L1_1.get_filter_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_setup_filter
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.do_filter
  L2_2 = A0_2._data
  L3_2 = A0_2._filters
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_filter_finished
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_filter
  L2_2(L3_2)
end
L1_1.refresh_filters = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._normal_suit_filter
  return L1_2
end
L1_1.get_normal_suit_filter = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._planar_suit_filter
  return L1_2
end
L1_1.get_planar_suit_filter = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._main_property_filter
  return L1_2
end
L1_1.get_main_property_filter = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_filter
  return L1_2
end
L1_1.get_filters = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_setup_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._all_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    if L1_2 ~= nil then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.RelicFilterDialog
  L3_2 = A0_2._data
  L4_2 = A0_2._all_filter
  L5_2 = A0_2._relic_base_type
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_filter_changed_callback
  L4_2 = A0_2._on_filter_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_btn_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.do_filter
  L2_2 = A0_2._data
  L3_2 = A0_2._filters
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_filter_finished
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target_by_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L5_2 = A0_2._owner
  L6_2 = L5_2
  L5_2 = L5_2.get_first_selected_object
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_filter
  L2_2(L3_2)
end
L1_1._on_filter_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_any_filter_on
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_no_filter
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_no_filter
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fitler_on
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fitler_on
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_btn_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._all_filter
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_filter_on
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L1_1._is_any_filter_on = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A1_2
  L4_2 = A0_2._callback_self
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._invoke_callback = L2_1
return L1_1
