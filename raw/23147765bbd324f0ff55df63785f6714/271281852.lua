local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMaterialListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendMaterialListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "OnPageFadeInAnimKeyFrame"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._item_panels = L3_2
  L3_2 = {}
  A0_2._btn_list = L3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_list
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_owner = A2_2
end
L0_1.set_item_select_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2._index = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A1_2
  L5_2 = A1_2.get_list_title
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = A1_2
  L3_2 = A1_2.get_mat_count
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.get_mat_rows
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  A0_2._btn_list = L5_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_item_list
  L7_2 = #L7_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2 = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.get_blackboard
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._binder
    L10_2 = L10_2.panel_item_list
    L10_2 = L10_2[L9_2]
    L12_2 = L10_2
    L11_2 = L10_2.safe_set_active
    L13_2 = true
    L11_2(L12_2, L13_2)
    L12_2 = L10_2
    L11_2 = L10_2.setup_view
    L13_2 = L4_2[L9_2]
    L15_2 = A1_2
    L14_2 = A1_2.get_mat_type
    L14_2 = L14_2(L15_2)
    L16_2 = A1_2
    L15_2 = A1_2.get_is_show_mat_name
    L15_2, L16_2 = L15_2(L16_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = L10_2
    L11_2 = L10_2.update_single_selection
    L14_2 = L5_2
    L13_2 = L5_2.query
    L15_2 = "CurSingleSelection"
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2, L15_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = L10_2
    L11_2 = L10_2.set_on_select_callback
    L13_2 = A0_2._on_item_select
    L14_2 = A0_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._btn_list
    L14_2 = L10_2
    L13_2 = L10_2.get_root_btn
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2.setup_navigation
  L8_2 = A0_2._btn_list
  L9_2 = NavigationType
  L9_2 = L9_2.Horizontal
  L6_2(L7_2, L8_2, L9_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  return L1_2
end
L0_1.get_btn_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 then
    L1_2 = A0_2._on_select_callback_owner
    if L1_2 ~= nil then
      L1_2 = A0_2._on_select_callback
      L2_2 = A0_2._on_select_callback_owner
      L3_2 = A0_2._index
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_item_select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
end
L0_1._on_page_anim_key_frame = L2_1
return L0_1
