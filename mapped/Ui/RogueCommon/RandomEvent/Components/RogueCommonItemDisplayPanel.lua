local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueCommonItemDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._item_list = A1_2
  L2_2 = {}
  A0_2._item_ids = L2_2
  L2_2 = pairs
  L3_2 = A0_2._item_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._item_ids
    L9_2 = L6_2.ConfigID
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._item_list
  L4_2 = L4_2.Count
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_extra_key_map_info
  L4_2 = "Menu_UnchangeLeftStickButton"
  L5_2 = "ActionGroupTextmapID_ItemDetail"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_extra_key_map_info_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.box_ray_cast_filter
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.box_ray_cast_filter
      L2_2 = L1_2
      L1_2 = L1_2.ForceRebuildHull
      L1_2(L2_2)
    end
  end
end
L0_1.rebuild_ray_cast_filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.is_destroyed
  if L3_2 then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_26
    end
  end
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
  ::lbl_26::
  L5_2 = A0_2._item_list
  L5_2 = L5_2[A2_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ItemFactory
  L6_2 = L6_2.CreateItemData
  L7_2 = L5_2.ConfigID
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2.Count
  L6_2.Count = L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_view_by_item
  L9_2 = L6_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count
  L9_2 = L5_2.Count
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_name
  L9_2 = L6_2.Name
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_name_display
  L9_2 = true
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = A0_2._item_ids
    L2_2.items = L3_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1._on_in_control_action_click = L1_1
return L0_1
