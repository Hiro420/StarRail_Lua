local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropHintListviewPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropLinkInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropLinkInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DropHintListviewPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._drop_link_list = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_dropinfo_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cached_click_target = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._drop_link_list = A1_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._drop_link_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_goto_sort_param
    L4_3 = A0_3.GotoID
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_goto_sort_param
    L5_3 = A1_3.GotoID
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_3.Sort
    L5_3 = A1_3.Sort
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_drop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._drop_link_list
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InventoryModule
  L3_2 = L3_2.GetItemComeFrom
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = #L2_2
  L3_2 = 0 < L3_2
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_view
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view_by_item_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._drop_link_list
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.has_drop = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._drop_hint_go_to_callback = A1_2
  A0_2._drop_hint_go_to_callback_self = A2_2
end
L0_1.register_drop_hint_go_to_callback = L1_1
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
    L7_2 = L7_2.DropLinkInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.DropLinkInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._drop_link_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_handler
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L4_2
    if L1_3 then
      L1_3 = L4_2._binder
      if L1_3 then
        L1_3 = L4_2._binder
        L1_3 = L1_3.button
        L1_3 = L1_3.gameObject
        A0_2._cached_click_target = L1_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.save_navigation_target
        L3_3 = A0_2._cached_click_target
        L1_3(L2_3, L3_3)
      end
    end
  end
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_drop_hint_go_to_callback
  L7_2 = A0_2._drop_hint_go_to_callback
  L8_2 = A0_2._drop_hint_go_to_callback_self
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_dropinfo_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_list_view
  L1_2 = L1_2.ItemCount
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._cached_click_target
  if L1_2 ~= nil then
    L1_2 = A0_2._cached_click_target
    A0_2._cached_click_target = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.transform
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 0 then
    L2_2 = 0
    return L2_2
  else
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.CanGoto
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = 2
      return L2_2
    else
      L2_2 = 1
      return L2_2
    end
  end
end
L0_1._get_goto_sort_param = L1_1
return L0_1
