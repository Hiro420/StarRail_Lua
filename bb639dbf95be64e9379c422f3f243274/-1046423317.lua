local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.RelicType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicRecommendSuitPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gamepad_btn_navi_detail
  L4_2 = A0_2._on_gamepad_btn_navi_detail
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2._is_any_recommend_filter_on
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._relic_type
  A0_2._relic_type = A2_2
  L6_2 = L0_1.NECK
  if A2_2 ~= L6_2 then
    L6_2 = L0_1.OBJECT
    if A2_2 ~= L6_2 then
      goto lbl_19
    end
  end
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = A1_2.InnerSet
  L6_2 = L6_2(L7_2)
  L3_2 = L6_2
  goto lbl_25
  ::lbl_19::
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = A1_2.OuterSet
  L6_2 = L6_2(L7_2)
  L3_2 = L6_2
  ::lbl_25::
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  if L4_2 then
    L7_2 = A0_2
    L6_2 = A0_2._try_reset_filter
    L8_2 = L5_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_filter_btn_state
  L1_2(L2_2)
end
L1_1.on_filter_changed = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._set_ids
  if not L1_2 then
    L1_2 = {}
  end
  return L1_2
end
L1_1.get_recommend_set_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  A0_2._set_ids = L2_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_info_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_info_list
    L7_2 = L7_2[L5_2]
    L9_2 = L7_2
    L8_2 = L7_2.safe_set_active
    L10_2 = L6_2 ~= nil
    L8_2(L9_2, L10_2)
    if L6_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = L6_2
      L11_2 = A0_2._relic_type
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2
      L8_2 = L7_2.register_filter_callback
      L10_2 = A0_2._on_filter
      L11_2 = A0_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._set_ids
      L10_2 = L6_2.SetID1
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._set_ids
      L10_2 = L6_2.SetID2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_navi
  L2_2(L3_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_info_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_info_list
    L5_2 = L5_2[L4_2]
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
L1_1._is_any_recommend_filter_on = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2 ~= A2_2
  if A1_2 == nil or A2_2 == nil then
    L3_2 = A1_2 ~= A2_2
  else
    L4_2 = L0_1.NECK
    L4_2 = A1_2 == L4_2
    L5_2 = L0_1.NECK
    L5_2 = A2_2 == L5_2
    L3_2 = L4_2 ~= L5_2
  end
  if L3_2 then
    L4_2 = A0_2._normal_suit_filter
    L5_2 = L4_2
    L4_2 = L4_2.clear
    L4_2(L5_2)
    L4_2 = A0_2._planar_suit_filter
    L5_2 = L4_2
    L4_2 = L4_2.clear
    L4_2(L5_2)
    L4_2 = A0_2._filter_panel
    L5_2 = L4_2
    L4_2 = L4_2.refresh_filters
    L4_2(L5_2)
  end
end
L1_1._try_reset_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_info_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_info_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.reset_filter_btn_state
    L6_2(L7_2)
  end
end
L1_1._reset_all_filter_btn_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._filter_panel = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.get_normal_suit_filter
  L2_2 = L2_2(L3_2)
  A0_2._normal_suit_filter = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.get_planar_suit_filter
  L2_2 = L2_2(L3_2)
  A0_2._planar_suit_filter = L2_2
end
L1_1.set_filter_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._normal_suit_filter
  if L2_2 ~= nil then
    L2_2 = A0_2._planar_suit_filter
    if L2_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._normal_suit_filter
  L3_2 = L2_2
  L2_2 = L2_2.clear
  L2_2(L3_2)
  L2_2 = A0_2._planar_suit_filter
  L3_2 = L2_2
  L2_2 = L2_2.clear
  L2_2(L3_2)
  if A1_2 ~= nil then
    L2_2 = A1_2.SetID1
    if L2_2 ~= 0 then
      L2_2 = A0_2._normal_suit_filter
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_state_by_type
      L4_2 = A1_2.SetID1
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._planar_suit_filter
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_state_by_type
      L4_2 = A1_2.SetID1
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = A1_2.SetID2
    if L2_2 ~= 0 then
      L2_2 = A0_2._normal_suit_filter
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_state_by_type
      L4_2 = A1_2.SetID2
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._planar_suit_filter
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_state_by_type
      L4_2 = A1_2.SetID2
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = A0_2._filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_filters
  L2_2(L3_2)
end
L1_1._on_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._on_gamepad_btn_navi_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_info_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_info_list
    L6_2 = L6_2[L5_2]
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
  L3_2 = L3_2.panel_info_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.refresh_navi
    L7_2(L8_2)
  end
end
L1_1._refresh_navi = L2_1
return L1_1
