local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallGroupItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallGroupItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PerformanceRecallModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PerformanceRecallContentPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._category_id = 0
  L1_2 = {}
  A0_2._subcategory_ids = L1_2
  L1_2 = {}
  A0_2._recalls_ids = L1_2
  L1_2 = {}
  A0_2._subcategory_to_recall_ids = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_list_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staggered_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_staggered_item_changed
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._category_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_subcategory_recalls
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._category_id
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_subcategory_recalls
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L1_1.refresh_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._recalls_ids
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L1_1.has_recall = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PerformanceRecallExcelTable
  L2_2 = L2_2.GetSubCategoryIDsByCategory
  L3_2 = A0_2._category_id
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._subcategory_ids = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._subcategory_ids
  function L3_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3 < A1_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PerformanceRecallExcelTable
  L2_2 = L2_2.GetRecallIDsByCategory
  L3_2 = A0_2._category_id
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._recalls_ids = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._recalls_ids
  function L3_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3 < A1_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._subcategory_to_recall_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._subcategory_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.PerformanceRecallExcelTable
    L6_2 = L6_2.GetRecallIDsBySubCategory
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._subcategory_to_recall_ids
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.create_lua_table_from_cs_list
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L7_2[L5_2] = L8_2
    L7_2 = table
    L7_2 = L7_2.sort
    L8_2 = A0_2._subcategory_to_recall_ids
    L8_2 = L8_2[L5_2]
    function L9_2(A0_3, A1_3)
      local L2_3
      L2_3 = A0_3 < A1_3
      return L2_3
    end
    L7_2(L8_2, L9_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PerformanceRecallExcelTable
  L1_2 = L1_2.GetSubCategoryIDsByCategory
  L2_2 = A0_2._category_id
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._has_subcategory = L1_2
end
L1_1._refresh_subcategory_recalls = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_subcategory
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_staggered
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_subcategory
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._has_subcategory
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._subcategory_ids
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.staggered_view
    L2_2 = L1_2
    L1_2 = L1_2.ResetListView
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.staggered_view
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._recalls_ids
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.staggered_view
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PerformanceRecallGroupItemPanel
    L8_2 = G
    L8_2 = L8_2.PerformanceRecallGroupItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._subcategory_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._subcategory_to_recall_ids
  L6_2 = L6_2[L5_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._set_list_item_border_navi
  L9_2 = A1_2
  L10_2 = L4_2
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_list_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A2_2
  L4_2 = A2_2.get_static_list
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.ScrollRect
  L4_2.mScrollRect = L5_2
  L5_2 = A1_2
  L4_2 = A1_2.GetShownItemByItemIndex
  L6_2 = A3_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    if L5_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      L7_2 = A2_2
      L6_2 = A2_2.get_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = L5_2
      L8_2 = L5_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Up
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.get_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = A2_2
      L8_2 = A2_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Down
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = A1_2
  L5_2 = A1_2.GetShownItemByItemIndex
  L7_2 = A3_2 + 1
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.UserObjectData
    if L6_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = A2_2
      L7_2 = A2_2.get_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = L6_2
      L9_2 = L6_2.get_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Down
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = A2_2
      L9_2 = A2_2.get_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Up
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L1_1._set_list_item_border_navi = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = "PicItem"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PerformanceRecallItemPanel
    L8_2 = G
    L8_2 = L8_2.PerformanceRecallItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._recalls_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.PerformanceRecallExcelTable
  L6_2 = L6_2.GetRecallItemHeight
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L8_2 = L3_2
  L7_2 = L3_2.SetHeight
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L1_1._on_staggered_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._has_subcategory
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      if L2_2 ~= nil then
        goto lbl_16
      end
    end
    L2_2 = nil
    do return L2_2 end
    ::lbl_16::
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.staggered_view
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._recalls_ids
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.staggered_view
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L1_1.get_first_selected_object = L2_1
return L1_1
