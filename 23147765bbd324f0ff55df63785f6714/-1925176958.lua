local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelicGridItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelicGridItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicTabBoxTypeListItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_list_view_relic_box
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_static_list_view_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_list_view_relic_box
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  A0_2._callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._get_tab_current_box_item_callback = A1_2
  A0_2._get_tab_current_box_item_callback_self = A2_2
end
L0_1.register_get_tab_current_box_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._get_tab_current_box_item_callback
  if L1_2 then
    L1_2 = A0_2._get_tab_current_box_item_callback_self
    if L1_2 then
      L1_2 = A0_2._get_tab_current_box_item_callback
      L2_2 = A0_2._get_tab_current_box_item_callback_self
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._current_box_item
      if L2_2 then
        L2_2 = A0_2._current_box_item
        L2_2 = L2_2.Row
        L2_2 = L2_2.Type
        L3_2 = L1_2.Row
        L3_2 = L3_2.Type
        if L2_2 ~= L3_2 then
          A0_2._current_box_item = L1_2
        end
      end
    end
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_list_view_relic_box
  return L1_2
end
L0_1.get_static_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._relic_box_data_list = A1_2
  A0_2._current_box_item = A2_2
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsObjectNull
  L5_2 = A0_2._binder
  L5_2 = L5_2.static_list_view_relic_box
  L5_2 = L5_2.mScrollRect
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.static_list_view_relic_box
    L4_2.mScrollRect = A3_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemComposeTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._relic_box_data_list
  L5_2 = L5_2[1]
  L5_2 = L5_2.Row
  L5_2 = L5_2.Type
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.TypeTextmapID
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.static_list_view_relic_box
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._relic_box_data_list
  L7_2 = #L7_2
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.static_list_view_relic_box
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemComposeRelicGridItem
    L8_2 = G
    L8_2 = L8_2.ItemComposeRelicGridItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A0_2._callback
      L3_3 = A0_3
      L4_3 = A1_3
      L2_3(L3_3, L4_3)
      A0_2._current_box_item = A0_3
    end
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._relic_box_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._current_box_item
  L8_2 = L8_2 == L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_static_list_view_change = L1_1
return L0_1
