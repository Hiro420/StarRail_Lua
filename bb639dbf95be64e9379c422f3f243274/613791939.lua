local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanelBinder"
L0_1(L1_1)
L0_1 = 1
L1_1 = 2
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueCommonMiracleDisplayPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
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
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._miracle_list = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._miracle_list
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
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroupTextmapID_ActionGroup_Scroll"
  L6_2 = L0_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_extra_key_map_info_active
  L4_2 = false
  L5_2 = L0_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_extra_key_map_info
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroupTextmapID_ActionGroup_PropertyCheck"
  L6_2 = L1_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_extra_key_map_info_active
  L4_2 = true
  L5_2 = L1_1
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
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
L2_1.rebuild_ray_cast_filter = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L7_2 = L7_2.RogueMiracleItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueMiracleItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_26::
  L6_2 = L4_2
  L5_2 = L4_2.setup_detail_view
  L7_2 = A0_2._miracle_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_item_click
  L9_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_item_select
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A0_2._miracle_list
  L5_2 = L5_2[A1_2]
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_detail_title
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L2_1._on_item_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.get_desc_scroll_rect
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.set_extra_key_map_info_active
  L6_2 = L2_2
  L5_2 = L2_2.CanScroll
  L5_2 = L2_2 ~= nil and L5_2
  L6_2 = L0_1
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._on_item_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L2_1.get_first_selected_object = L3_1
return L2_1
