local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MaterialCostListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
function L3_1(A0_2, A1_2, A2_2)
  A0_2._is_focus_by_click = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._click_callback = A2_2
  A0_2._click_minus_callback = A3_2
end
L0_1.bind_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._material_data_list = A1_2
  if A2_2 ~= nil and A2_2 == false then
    A0_2._is_focus_by_click = A2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_scrollview
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._material_data_list = L1_2
  L1_2 = {}
  A0_2._material_btn_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_material_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.InventoryItemIconPanel
    L8_2 = G
    L8_2 = L8_2.InventoryItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._material_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.GetItemCountByConfigID
  L8_2 = L5_2.ID
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.ItemFactory
  L7_2 = L7_2.CreateItemData
  L8_2 = L5_2.ID
  L7_2 = L7_2(L8_2)
  L7_2.Count = L6_2
  L9_2 = L4_2
  L8_2 = L4_2.setup_view_by_item
  L10_2 = L7_2
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_count
  L10_2 = L6_2
  L11_2 = L5_2.Num
  L12_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_trigger_click_on_navigation
  L10_2 = false
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_focus_by_click
  L10_2 = A0_2._is_focus_by_click
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.bind_click
  L10_2 = A0_2._click_event_listner
  L11_2 = A0_2._click_callback
  L12_2 = A0_2._click_minus_callback
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = A0_2
  L8_2 = A0_2.update_all_items
  L8_2(L9_2)
  return L3_2
end
L0_1._on_material_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._material_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_all_items
  L1_2(L2_2)
end
L0_1._refresh_scrollview = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_all_items
  L1_2(L2_2)
end
L0_1.empty_scrollview = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_materials
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._material_btn_list = L1_2
  L1_2 = A0_2._material_data_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = 0
  L2_2 = A0_2._material_data_list
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_materials
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = G
    L6_2 = L6_2.ComponentExtensions
    L6_2 = L6_2.SafeGetCmpt
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Button
    L7_2 = L7_2(L8_2)
    L8_2 = L5_2
    L9_2 = ""
    L10_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._material_btn_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._material_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.update_all_items = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = A0_2._material_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_data_list
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ID
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.PurposeType
    L8_2 = G
    L8_2 = L8_2.InventoryUtils
    L8_2 = L8_2.is_path_material
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = L6_2.Num
      if L8_2 == 0 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.scroll_materials
        L9_2 = L8_2
        L8_2 = L8_2.GetShownItemByItemIndex
        L10_2 = L5_2 - 1
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L8_2.UserObjectData
        L10_2 = L9_2
        L9_2 = L9_2.set_mask
        L11_2 = A1_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L0_1.set_item_mask = L3_1
return L0_1
