local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.RelicType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicRecommendPropertyPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = A1_2.PropertyDataDict
  L5_2 = L4_2
  L4_2 = L4_2.ContainsKey
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = A1_2.PropertyDataDict
    L5_2 = L5_2[A2_2]
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = {}
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_title
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = L3_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_textid_by_type
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_AvatarRelic_Recommend_SubTitle_3"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._setup_title = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L0_1.HEAD
  L3_2 = A2_2 ~= L3_2
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_info_list
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_info_list
    L9_2 = L9_2[L7_2]
    L11_2 = L9_2
    L10_2 = L9_2.safe_set_active
    L12_2 = L8_2 ~= nil
    L10_2(L11_2, L12_2)
    if L8_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.setup_view
      L12_2 = L8_2
      L13_2 = A0_2._main_property_filter
      L10_2(L11_2, L12_2, L13_2)
      L11_2 = L9_2
      L10_2 = L9_2.register_filter_callback
      L12_2 = A0_2._on_filter
      L13_2 = A0_2
      L10_2(L11_2, L12_2, L13_2)
      L11_2 = L9_2
      L10_2 = L9_2.set_filter_btn_visible
      L12_2 = L3_2
      L10_2(L11_2, L12_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_navi
  L4_2(L5_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._filter_panel = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.get_main_property_filter
  L2_2 = L2_2(L3_2)
  A0_2._main_property_filter = L2_2
end
L1_1.set_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter_btn_state
  L1_2(L2_2)
end
L1_1.on_filter_changed = L2_1
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
    L6_2 = L5_2.refresh_filter_btn_state
    L6_2(L7_2)
  end
end
L1_1._refresh_filter_btn_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._main_property_filter
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._main_property_filter
  L3_2 = L2_2
  L2_2 = L2_2.clear
  L2_2(L3_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._main_property_filter
    L3_2 = L2_2
    L2_2 = L2_2.set_filter_state_by_type
    L4_2 = A1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_filters
  L2_2(L3_2)
end
L1_1._on_filter = L2_1
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
  L2_2 = A0_2._suit_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_info_list
    L2_2 = L2_2[1]
    L3_2 = A0_2._suit_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_last_navi_panel
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.set_next_navi_panel
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L5_2 = L2_2
      L4_2 = L2_2.set_pre_navi_panel
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
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
function L2_1(A0_2, A1_2)
  A0_2._suit_panel = A1_2
end
L1_1.set_suit_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info_list
  L1_2 = L1_2[1]
  return L1_2
end
L1_1.get_first_navi_panel = L2_1
return L1_1
