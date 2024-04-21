local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionGearTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Quest/EvolveBuild/Tab/EvolveBuildWeaponIcon.png"
L2_1 = "SpriteOutput/Quest/EvolveBuild/Tab/EvolveBuildOrnamentIcon.png"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EvolveBuildCollectionGearDetailPanel
  L4_2 = G
  L4_2 = L4_2.EvolveBuildCollectionGearDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._collection_detail_panel = L1_2
  L1_2 = A0_2._collection_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pre_selected_panel
  if L1_2 then
    L1_2 = A0_2._pre_selected_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_checked
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gear_types
  L1_2 = L1_2[1]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Plugin
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_selected
    L4_2 = L2_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_selected
    L4_2 = L1_1
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.tab_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.click_item_by_uid
    L2_3 = A0_2.uid
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_added = L3_1
function L3_1(A0_2, A1_2)
  A0_2._tab_title = A1_2
end
L0_1.setup_tab_title = L3_1
function L3_1(A0_2, A1_2)
  A0_2._gear_types = A1_2
end
L0_1.setup_gear_types = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._list_panels = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._gear_types
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.EvolveBuildCollectionGearListPanel
  L8_2 = G
  L8_2 = L8_2.EvolveBuildCollectionGearListPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_btn_root_callback
  L7_2 = A0_2._on_collection_item_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._gear_types
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._list_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  if 0 < A2_2 then
    L5_2 = A0_2._list_panels
    L5_2 = L5_2[A2_2]
    L6_2 = L5_2
    L5_2 = L5_2.get_static_list_view
    L5_2 = L5_2(L6_2)
    L7_2 = L4_2
    L6_2 = L4_2.get_static_list_view
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.SetDirectionRefListview
    L8_2 = L5_2
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.EventSystems
    L9_2 = L9_2.MoveDirection
    L9_2 = L9_2.Up
    L6_2(L7_2, L8_2, L9_2)
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2
  L6_2 = L4_2.get_root_transform
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_item_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._pre_selected_panel
  if L2_2 then
    L2_2 = A0_2._pre_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._collection_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.collection_gear
  L2_2(L3_2, L4_2)
  A0_2._pre_selected_panel = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_zoom
  L2_2 = L2_2(L3_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 61
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect_detail
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.get_cur_zoom
    L2_2 = L2_2(L3_2)
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 33
      L5_2 = A0_2._binder
      L5_2 = L5_2.scroll_rect_detail
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_collection_item_select = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.is_current_tab_item
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 61
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_rect_detail
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 33
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_rect_detail
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L3_1
return L0_1
