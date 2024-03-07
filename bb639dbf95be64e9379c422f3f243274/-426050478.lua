local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicLockStatusFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicLevelStatusFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicEquipmentStatusFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicFilterStatusTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._active_filter_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._filters = nil
  A0_2._filter_changed_callback = nil
  A0_2._filter_changed_callback_self = nil
  A0_2._last_selected_object = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = {}
  A0_2._filters = L5_2
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = G
    L10_2 = L10_2.IsInstanceOf
    L11_2 = L9_2
    L12_2 = G
    L12_2 = L12_2.RelicLockStatusFilter
    L10_2 = L10_2(L11_2, L12_2)
    if not L10_2 then
      L10_2 = G
      L10_2 = L10_2.IsInstanceOf
      L11_2 = L9_2
      L12_2 = G
      L12_2 = L12_2.RelicLevelStatusFilter
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = G
        L10_2 = L10_2.IsInstanceOf
        L11_2 = L9_2
        L12_2 = G
        L12_2 = L12_2.RelicEquipmentStatusFilter
        L10_2 = L10_2(L11_2, L12_2)
        if not L10_2 then
          goto lbl_36
        end
      end
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._filters
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    ::lbl_36::
  end
  A0_2._relic_base_type = A2_2
  A0_2._filter_changed_callback = A3_2
  A0_2._filter_changed_callback_self = A4_2
  L5_2 = ipairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.all_filter_panel
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._filters
    L10_2 = L10_2[L8_2]
    if L10_2 ~= nil then
      L12_2 = L9_2
      L11_2 = L9_2.init_filter
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      L12_2 = L9_2
      L11_2 = L9_2.safe_set_active
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._active_filter_panels
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    else
      L12_2 = L9_2
      L11_2 = L9_2.safe_set_active
      L13_2 = false
      L11_2(L12_2, L13_2)
    end
  end
end
L0_1.init_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._active_filter_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
end
L0_1.clear_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_text_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Relic_Filter_Tab_2"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_text_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Relic_Filter_Tab_2"
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
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
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  A0_2._last_selected_object = L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._active_filter_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._filters
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_filter_changed_callback
    L8_2 = A0_2._filter_changed_callback
    L9_2 = A0_2._filter_changed_callback_self
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._active_filter_panels
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
  L3_2 = A0_2._active_filter_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.refresh_navi
    L7_2(L8_2)
  end
end
L0_1._refresh_navi = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._last_selected_object
  if L1_2 ~= nil then
    L1_2 = A0_2._last_selected_object
    return L1_2
  end
  L1_2 = A0_2._active_filter_panels
  L1_2 = L1_2[1]
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = nil
  ::lbl_15::
  return L2_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
