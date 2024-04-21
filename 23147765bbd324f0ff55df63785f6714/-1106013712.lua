local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelUpMaterialPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._material_datas = L1_2
  L1_2 = {}
  A0_2._material_selected = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_materials
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._material_selected = A1_2
  A0_2._onclick_add_material = A2_2
  A0_2._onclick_reduce_material = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_materials
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_scrollview
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._material_selected = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
end
L0_1.set_material_select = L2_1
function L2_1(A0_2)
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._long_press_callback = A1_2
  A0_2._long_press_event_listner = A2_2
end
L0_1.bind_long_press = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._material_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ItemFactory
  L6_2 = L6_2.CreateItemData
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetItemCountByConfigID
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_view_by_item
  L10_2 = L6_2
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_count
  L10_2 = A0_2._material_selected
  L10_2 = L10_2[L5_2]
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_minus_btn
  L10_2 = A0_2._material_selected
  L10_2 = L10_2[L5_2]
  L10_2 = 0 < L10_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._on_click_add
  L12_2 = A0_2._on_click_reduce
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_2
  L8_2 = L4_2.bind_long_press
  L10_2 = A0_2
  L11_2 = A0_2._on_long_press
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_trigger_click_on_navigation
  L10_2 = false
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_minus_select_callback
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_minus_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_minus_unselect_callback
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_minus_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
  return L3_2
end
L0_1._on_material_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._onclick_add_material
    L4_2 = A0_2._owner
    L5_2 = A1_2.ConfigID
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_click_add = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._onclick_reduce_material
    L4_2 = A0_2._owner
    L5_2 = A1_2.ConfigID
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_click_reduce = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._long_press_callback
    L4_2 = A0_2._long_press_event_listner
    L5_2 = A1_2.ConfigID
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_long_press = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._material_selected
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._material_datas
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.sort_reward_item
  L2_2 = A0_2._material_datas
  L1_2(L2_2)
end
L0_1._init_materials = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._material_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_scrollview = L2_1
return L0_1
