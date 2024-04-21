local L0_1, L1_1, L2_1, L3_1
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
L1_1 = "Ui.Relic.Filter.OrFilterGroup"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.RelicType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicFilterPropertyTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._filters = nil
  A0_2._filter_changed_callback = nil
  A0_2._filter_changed_callback_self = nil
  A0_2._last_selected_object = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._filters = A1_2
  A0_2._relic_base_type = A2_2
  A0_2._filter_changed_callback = A3_2
  A0_2._filter_changed_callback_self = A4_2
end
L1_1.init_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.all_filter_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
end
L1_1.clear_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_text_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Relic_Filter_Tab_1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_text_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Relic_Filter_Tab_1"
  L1_2(L2_2, L3_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  A0_2._last_selected_object = L1_2
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_set_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rarity_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_main_property_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sub_property_filter_panel
  L1_2(L2_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_filter_by_type
  L3_2 = G
  L3_2 = L3_2.RelicNormalSuitFilter
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_filter_by_type
  L4_2 = G
  L4_2 = L4_2.RelicPlanarSuitFilter
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._relic_base_type
  L4_2 = L0_1.NECK
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._relic_base_type
    L4_2 = L0_1.OBJECT
    if L3_2 ~= L4_2 then
      goto lbl_26
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.set_filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = {}
  L6_2 = L2_2
  L7_2 = L1_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  goto lbl_34
  ::lbl_26::
  L3_2 = A0_2._binder
  L3_2 = L3_2.set_filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = {}
  L6_2 = L1_2
  L7_2 = L2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  ::lbl_34::
  L3_2 = A0_2._binder
  L3_2 = L3_2.set_filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_filter_changed_callback
  L5_2 = A0_2._filter_changed_callback
  L6_2 = A0_2._filter_changed_callback_self
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._refresh_set_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_by_type
  L5_2 = G
  L5_2 = L5_2.RelicRarityFilter
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_filter_changed_callback
  L3_2 = A0_2._filter_changed_callback
  L4_2 = A0_2._filter_changed_callback_self
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._refresh_rarity_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_filter_by_type
  L3_2 = G
  L3_2 = L3_2.RelicMainPropertyFilter
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_available_property_by_relic_type
  L3_2 = A0_2._relic_base_type
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  if L2_2 ~= nil then
    L4_2 = #L2_2
    if L4_2 == 1 then
      L3_2 = L2_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.main_property_filter_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.main_property_filter_panel
  L5_2 = L4_2
  L4_2 = L4_2.register_filter_changed_callback
  L6_2 = A0_2._filter_changed_callback
  L7_2 = A0_2._filter_changed_callback_self
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._refresh_main_property_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_property_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_by_type
  L5_2 = G
  L5_2 = L5_2.RelicSubPropertyFilter
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_property_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_filter_changed_callback
  L3_2 = A0_2._filter_changed_callback
  L4_2 = A0_2._filter_changed_callback_self
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._refresh_sub_property_filter_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._filters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.IsInstanceOf
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L6_2
    end
  end
end
L1_1._get_filter_by_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.all_filter_panel
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L1_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.set_next_navi_panel
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_pre_navi_panel
      L9_2 = L1_2
      L7_2(L8_2, L9_2)
    end
    L1_2 = L6_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.all_filter_panel
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.refresh_navi
    L7_2(L8_2)
  end
end
L1_1._refresh_navi = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._last_selected_object
  if L1_2 ~= nil then
    L1_2 = A0_2._last_selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.all_filter_panel
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
