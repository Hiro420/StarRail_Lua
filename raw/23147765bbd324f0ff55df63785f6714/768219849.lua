local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuMiracleTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "SpriteOutput/Rogue/Tab/MagicItem.png"
L3_1 = "RogueBuffDisplayTypeTitle_3"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = {}
  A0_2._rogue_miracle_data_table = L4_2
  if A3_2 ~= nil then
    L5_2 = A3_2
    L4_2 = A3_2.get_selected_miracles
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.create_lua_table_from_cs_list
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    A0_2._rogue_miracle_data_table = L5_2
  end
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._rogue_miracle_data_table = L2_2
end
L0_1.set_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L3_1
  return L1_2
end
L0_1.get_tab_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rogue_miracle
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rogue_miracle
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rogue_miracle
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_rogue_miracle_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
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
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rogue_miracle
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rogue_miracle_data_table
  L1_2 = L1_2 == nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rogue_miracle
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = 0
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = {}
  L5_2 = "ActionGroup_PropertyCheck"
  L6_2 = "ActionGroup_Scroll"
  L7_2 = "ActionGroup_Return"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rogue_miracle
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._rogue_miracle_data_table
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rogue_miracle
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  end
  L5_2 = A0_2._rogue_miracle_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_detail_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.rebuild_desc_layout
  L6_2(L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_click_miracle
  L10_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_rogue_miracle_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rogue_miracle
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rogue_miracle
    L2_2 = L1_2
    L1_2 = L1_2.PlayFadeIn
    L1_2(L2_2)
  end
end
L0_1._play_fade_in = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._rogue_miracle_data_table
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.New
    L4_2 = G
    L4_2 = L4_2.RogueMiracleDetailDialog
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.init
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_detail_title
    L4_2(L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.async_show
    L4_2(L5_2)
  end
end
L0_1._on_click_miracle = L4_1
return L0_1
