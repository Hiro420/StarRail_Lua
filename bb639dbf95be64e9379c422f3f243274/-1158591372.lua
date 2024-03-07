local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Rogue.Menu.MapTab.RogueRoomIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.MapTab.RogueRoomIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.MapTab.RogueRoomLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.MapTab.RogueRoomLinePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.MapTab.RogueRoomTreeRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuMapTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "SpriteOutput/Rogue/Tab/ExploreIcon.png"
L3_1 = "UIText_Rogue_Menu_Tab_1"
L4_1 = "SpriteOutput/Rogue/Map/RogueDivergenceIcon.png"
L5_1 = "UIText_Rogue_Map_Divergence_Name"
L6_1 = "UIText_Rogue_Map_Divergence_Desc"
function L7_1(A0_2)
  local L1_2
  A0_2._rogue_map_data = nil
  A0_2._rogue_room_tree = nil
  A0_2._selected_index = nil
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._rogue_map_data = nil
  A0_2._rogue_room_tree = nil
  A0_2._selected_index = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L3_1
  return L1_2
end
L0_1.get_tab_title = L7_1
function L7_1(A0_2, A1_2)
  A0_2._data_provider = A1_2
end
L0_1.register_data_provider = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_room_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_room_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_environment
  L4_2 = A0_2._on_btn_environment
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_room_list
  if L1_2 ~= nil then
    L1_2 = A0_2._selected_index
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_room_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._selected_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_room_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemNearestItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MapData
  A0_2._rogue_map_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInRogueEndlessMode
  L1_2 = L1_2()
  A0_2._is_in_rogue_endless = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_room_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_room
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_environment
  L1_2(L2_2)
end
L0_1._refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_progress_params
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L6_2 = "/"
  L7_2 = L2_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_progress = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._build_rogue_room_tree
  L1_2(L2_2)
  L1_2 = A0_2._rogue_room_tree
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_room_list
  L2_2 = L2_2.ItemTotalCount
  if L1_2 ~= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_room_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_room_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_room_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = A0_2._selected_index
    L4_2 = L4_2 - 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_room_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._setup_room_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._rogue_room_tree
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._rogue_room_tree = L1_2
  L1_2 = A0_2._rogue_map_data
  L2_2 = L1_2
  L1_2 = L1_2.GetStartRogueSiteData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.New
  L3_2 = G
  L3_2 = L3_2.RogueRoomTreeRow
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.add_site_data_item
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_init_selected_index
  L5_2 = A0_2._rogue_room_tree
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._rogue_room_tree
  L5_2 = A0_2._rogue_room_tree
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_2
  while L3_2 ~= nil do
    L5_2 = L3_2
    L4_2 = L3_2.GetNextSiteIDArray
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.Length
    if 0 < L5_2 then
      L5_2 = G
      L5_2 = L5_2.New
      L6_2 = G
      L6_2 = L6_2.RogueRoomTreeRow
      L5_2 = L5_2(L6_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._rogue_room_tree
      L8_2 = A0_2._rogue_room_tree
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = G
      L6_2 = L6_2.New
      L7_2 = G
      L7_2 = L7_2.RogueRoomTreeRow
      L6_2 = L6_2(L7_2)
      L7_2 = 0
      L8_2 = L4_2.Length
      L8_2 = L8_2 - 1
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = A0_2._rogue_map_data
        L12_2 = L11_2
        L11_2 = L11_2.GetRogueSiteData
        L13_2 = L4_2[L10_2]
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 ~= nil then
          L13_2 = L6_2
          L12_2 = L6_2.add_site_data_item
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
          L13_2 = A0_2
          L12_2 = A0_2._try_init_selected_index
          L14_2 = A0_2._rogue_room_tree
          L14_2 = #L14_2
          L14_2 = L14_2 + 1
          L15_2 = L11_2
          L12_2(L13_2, L14_2, L15_2)
        end
      end
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._rogue_room_tree
      L9_2 = A0_2._rogue_room_tree
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_site_data_item
      L9_2 = 0
      L7_2 = L7_2(L8_2, L9_2)
      L3_2 = L7_2
    else
      L3_2 = nil
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_add_rogue_endless_node
  L4_2(L5_2)
end
L0_1._build_rogue_room_tree = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A2_2.SiteID
  L4_2 = A0_2._rogue_map_data
  L4_2 = L4_2.CurSiteID
  if L3_2 == L4_2 then
    A0_2._selected_index = A1_2
  end
end
L0_1._try_init_selected_index = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2
  L3_2 = A0_2._is_rogue_endless_node
  L5_2 = A2_2 + 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_rogue_endless_scroll_item
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._rogue_room_tree
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = L3_2
  L4_2 = L3_2.get_count
  L4_2 = L4_2(L5_2)
  if 0 < L4_2 then
    L4_2 = 0
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = 1
  ::lbl_22::
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    if L4_2 == 0 then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.RogueRoomIconPanel
      L10_2 = G
      L10_2 = L10_2.RogueRoomIconPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    else
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.RogueRoomLinePanel
      L10_2 = G
      L10_2 = L10_2.RogueRoomLinePanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  if L4_2 == 0 then
    L7_2 = L6_2
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L3_2
    L11_2 = A0_2._rogue_map_data
    L11_2 = L11_2.CurSiteID
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_selected
    L10_2 = A0_2._selected_index
    L11_2 = A2_2 + 1
    L10_2 = L10_2 == L11_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A0_2
    L11_2 = A0_2._on_tree_row_click
    L12_2 = A2_2 + 1
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L7_2 = L6_2
    L8_2 = A0_2._rogue_room_tree
    L8_2 = L8_2[A2_2]
    L10_2 = L8_2
    L9_2 = L8_2.has_rogue_site_data_finish
    L9_2 = L8_2 ~= nil and L9_2
    L11_2 = L7_2
    L10_2 = L7_2.setup_view
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L5_2
end
L0_1._on_room_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_room_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_room_list
  L1_2 = L1_2.ItemTotalCount
  if L1_2 <= 0 then
    return
  end
  L2_2 = 0
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_room_list
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      L8_2 = L7_2
      L7_2 = L7_2.setup_selected
      L9_2 = A0_2._selected_index
      L10_2 = L5_2 + 1
      L9_2 = L9_2 == L10_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_room_selected = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._selected_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_room_selected
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_rogue_endless_node
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_cur_room_rogue_endless
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_cur_room
    L2_2(L3_2)
  end
end
L0_1._on_tree_row_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._selected_index
  if L1_2 == nil then
    A0_2._selected_index = 1
  end
  L1_2 = A0_2._rogue_room_tree
  L2_2 = A0_2._selected_index
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_show_rogue_site_data
  L4_2 = A0_2._rogue_map_data
  L4_2 = L4_2.CurSiteID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.icon
    L6_2 = L4_1
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._get_rogue_room_type_row
    L6_2 = L2_2
    L5_2 = L2_2.GetRogueRoomType
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    if L3_2 == nil then
      return
    end
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.icon
    L7_2 = L3_2.RogueRoomTypeIcon
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.RogueRoomTypeTextmapID
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L7_2 = A0_2
    L6_2 = A0_2._get_cur_room_desc_text_id
    L8_2 = L3_2
    L9_2 = A0_2._rogue_map_data
    L9_2 = L9_2.AreaID
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._setup_cur_room = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_in_rogue_endless
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RogueEndlessUtils
    L3_2 = L3_2.get_rogue_map_room_desc_by_type
    L4_2 = A1_2.RogueRoomType
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      return L3_2
    end
  end
  L3_2 = A1_2.RoomTypeDescTextmapID2
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    if L3_2 ~= L4_2 then
      goto lbl_24
    end
  end
  L4_2 = A1_2.RoomTypeDescTextmapID
  do return L4_2 end
  ::lbl_24::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueAreaConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RogueUtils
  L5_2 = L5_2.IsRogueAreaChestLock
  L6_2 = L4_2.AreaProgress
  L5_2 = L5_2(L6_2)
  if L5_2 then
    return L3_2
  end
  L5_2 = A1_2.RoomTypeDescTextmapID
  return L5_2
end
L0_1._get_cur_room_desc_text_id = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueRoomTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "RogueRoomType.txt\233\133\141\231\189\174\230\137\190\228\184\141\229\136\176 => RogueRoomType\239\188\154"
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  return L2_2
end
L0_1._get_rogue_room_type_row = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_in_rogue_endless
  if not L1_2 then
    return
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._rogue_room_tree
  L3_2 = A0_2._rogue_room_tree
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = G
  L4_2 = L4_2.New
  L5_2 = G
  L5_2 = L5_2.RogueRoomTreeRow
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._rogue_room_tree
  L3_2 = A0_2._rogue_room_tree
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = G
  L4_2 = L4_2.New
  L5_2 = G
  L5_2 = L5_2.RogueRoomTreeRow
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._try_add_rogue_endless_node = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._is_in_rogue_endless
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._rogue_room_tree
  L2_2 = L2_2 ~= nil
  return L2_2
end
L0_1._is_rogue_endless_node = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueRoomIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueRoomIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_rogue_endless_entrance
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_selected
  L7_2 = A0_2._selected_index
  L8_2 = A2_2 + 1
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_tree_row_click
  L9_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._setup_rogue_endless_scroll_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = L1_1.RogueEndlessConstValue
  L4_2 = L4_2.MapRoomIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1.RogueEndlessConstValue
  L3_2 = L3_2.MapRoomTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1.RogueEndlessConstValue
  L3_2 = L3_2.MapRoomDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_cur_room_rogue_endless = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_environment
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_in_rogue_endless
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_in_rogue_endless
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_environment
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityRogueEndless_Level_Rules"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_btn_environment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_rogue_endless_environment_info
  L1_2(L2_2)
end
L0_1._on_btn_environment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_in_rogue_endless
  if L1_2 then
    L1_2 = L1_1.EndlessProgressInfo
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = L1_1.EndlessProgressInfo
  L1_2 = L1_2.CurAreaID
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.RogueEndlessGetAreaData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMapEnvInfoDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_show_rogue_endless_environment_info = L7_1
return L0_1
