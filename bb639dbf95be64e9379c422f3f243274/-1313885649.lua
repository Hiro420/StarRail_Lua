local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.SelectSortNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SelectSortNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OrderTypeListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._data = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L2_2 = L2_2.list_name
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.order_list
  L4_2 = L3_2
  L3_2 = L3_2.init
  L5_2 = A0_2
  L6_2 = 0
  L7_2 = A0_2._on_item_change
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.order_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._data
  L5_2 = L5_2.all_sort_type
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_item_index
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = A0_2._data
  L2_2 = L2_2.all_sort_type
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.order_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.UserObjectData
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._data
    L9_2 = L9_2.all_sort_type
    L10_2 = L4_2 + 1
    L9_2 = L9_2[L10_2]
    L10_2 = A0_2._on_item_click
    L11_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._data
  L2_2 = L2_2.all_sort_type
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.index = nil
  end
  L1_2 = ipairs
  L2_2 = A0_2._data
  L2_2 = L2_2.current_sort_type
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.index = L4_2
  end
end
L0_1._refresh_item_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_list
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
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_list
  return L1_2
end
L0_1.get_static_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.maxSelection
  if L1_2 == 1 then
    L1_2 = A0_2._data
    L1_2 = L1_2.mustSelect
    if L1_2 then
      return
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.current_sort_type
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._unselect_item
    L7_2 = A0_2._data
    L7_2 = L7_2.current_sort_type
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.sort_type
    L5_2(L6_2, L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1.unselect_all = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._data
  L3_2 = L3_2.all_sort_type
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sort_type
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_index_in_all_sort_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._data
  L3_2 = L3_2.current_sort_type
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sort_type
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_index_in_current_sort_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_index_in_current_sort_type
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.current_sort_type
  L3_2 = L3_2[L2_2]
  L3_2.isSelected = false
  L3_2 = A0_2._data
  L3_2 = L3_2.current_sort_type
  L3_2 = L3_2[L2_2]
  L3_2.index = nil
  L3_2 = table
  L3_2 = L3_2.remove
  L4_2 = A0_2._data
  L4_2 = L4_2.current_sort_type
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._unselect_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_index_in_all_sort_type
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.all_sort_type
  L3_2 = L3_2[L2_2]
  L3_2.isSelected = true
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._data
  L4_2 = L4_2.current_sort_type
  L5_2 = A0_2._data
  L5_2 = L5_2.all_sort_type
  L5_2 = L5_2[L2_2]
  L3_2(L4_2, L5_2)
end
L0_1._select_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SelectSortNode
    L8_2 = G
    L8_2 = L8_2.SelectSortNodeBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L5_2 = L3_2.ItemTransform
    if L5_2 == nil then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "item.transform is nil !!!"
      L5_2(L6_2)
    end
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._data
  L5_2 = L5_2.all_sort_type
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.enable_multi_select
  L8_2 = A0_2._data
  L8_2 = L8_2.is_enable_multi_select
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._on_item_click
  L10_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L3_2 = A0_2._data
  L3_2 = L3_2.maxSelection
  if L3_2 == 1 then
    L3_2 = A0_2._data
    L3_2 = L3_2.current_sort_type
    L3_2 = L3_2[1]
    if L3_2 ~= nil then
      L3_2 = A0_2._data
      L3_2 = L3_2.current_sort_type
      L3_2 = L3_2[1]
      L3_2 = L3_2.sort_type
      if L3_2 == A1_2 then
        L3_2 = A0_2._data
        L3_2 = L3_2.mustSelect
        if not L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._unselect_item
          L5_2 = A0_2._data
          L5_2 = L5_2.current_sort_type
          L5_2 = L5_2[1]
          L5_2 = L5_2.sort_type
          L3_2(L4_2, L5_2)
          L2_2 = true
        end
    end
    else
      L3_2 = A0_2._data
      L3_2 = L3_2.current_sort_type
      L3_2 = L3_2[1]
      if L3_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2._unselect_item
        L5_2 = A0_2._data
        L5_2 = L5_2.current_sort_type
        L5_2 = L5_2[1]
        L5_2 = L5_2.sort_type
        L3_2(L4_2, L5_2)
      end
      L4_2 = A0_2
      L3_2 = A0_2._select_item
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L2_2 = true
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_toggle_sort_type
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.refresh
    L3_2(L4_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_index_in_current_sort_type
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._unselect_item
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  else
    L3_2 = A0_2._data
    L3_2 = L3_2.current_sort_type
    L3_2 = #L3_2
    L4_2 = A0_2._data
    L4_2 = L4_2.maxSelection
    if L3_2 >= L4_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = "UIText_Toast_MultiSort_MaxCount"
      L3_2(L4_2, L5_2)
      L3_2 = false
      return L3_2
    end
    L4_2 = A0_2
    L3_2 = A0_2._select_item
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
end
L0_1._try_toggle_sort_type = L1_1
return L0_1
