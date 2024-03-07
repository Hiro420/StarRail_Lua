local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueMenuBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueMenuBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuBuffTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Rogue/Tab/GenreBuffIcon.png"
L2_1 = "UIText_Rogue_MainMenu_Buff"
function L3_1(A0_2)
  local L1_2
  A0_2._all_buff_table = nil
  A0_2._display_buff_data_table = nil
  A0_2._show_title_index_table = nil
  A0_2._bufftype_tab_control = nil
  A0_2._default_tab_index = 1
  A0_2._selected_index = 0
  A0_2._selected_panel = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2._all_buff_table = L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._all_buff_table
    L9_2 = A0_2._all_buff_table
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.set_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_tab_title = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._txt_cmpt = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sub_title
  L2_2(L3_2)
end
L0_1.set_sub_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_buff_list
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._selected_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_buff_list
    L2_2 = L1_2
    L1_2 = L1_2.IsItemWithinViewport
    L3_2 = A0_2._selected_index
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._selected_panel
      L1_2 = L1_2._binder
      L1_2 = L1_2.btn_root
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.left_tab_control_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.right_tab_control_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.left_tab_control_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.right_tab_control_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_buff_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_init_bufftype_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bufftype_tab_view
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
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_buff_list
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sub_title
  L1_2(L2_2)
  L1_2 = A0_2._display_buff_data_table
  L1_2 = L1_2 == nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_buff_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = 0
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._bufftype_tab_control
    L2_2 = L2_2.current_select_item
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.setup_empty_tip
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_empty_tip
      L3_2(L4_2, L5_2)
    end
    return
  end
  L2_2 = A0_2._display_buff_data_table
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._bufftype_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._txt_cmpt
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._bufftype_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._sub_title_text_ids
  L3_2 = L1_2.uid
  L2_2 = L2_2[L3_2]
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._txt_cmpt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._refresh_sub_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.sort_rogue_buff_table
  L2_2 = A0_2._display_buff_data_table
  L1_2(L2_2)
end
L0_1._sort_display_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._show_title_index_table
  if L1_2 == nil then
    L1_2 = {}
    A0_2._show_title_index_table = L1_2
  else
    L1_2 = pairs
    L2_2 = A0_2._show_title_index_table
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._show_title_index_table
      L6_2[L4_2] = nil
    end
  end
  L1_2 = nil
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = A0_2._display_buff_data_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.GetRogueAeonID
    L8_2 = L8_2(L9_2)
    L10_2 = L7_2
    L9_2 = L7_2.GetRogueBuffType
    L9_2 = L9_2(L10_2)
    if L6_2 == 1 or L9_2 ~= L1_2 or L8_2 ~= L2_2 then
      L10_2 = A0_2._show_title_index_table
      L10_2[L6_2] = true
    end
    L2_2 = L8_2
    L1_2 = L9_2
  end
end
L0_1._refresh_title_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._show_title_index_table
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._show_title_index_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end
L0_1._need_show_title = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._need_show_title
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = A1_2
    L4_2 = A1_2.GetRogueAeonID
    L4_2 = L4_2(L5_2)
    if L4_2 == 0 then
      L5_2 = A1_2
      L4_2 = A1_2.GetRogueBuffTypeRow
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.RogueBuffTypeTitle
      L5_2 = nil
      return L4_2, L5_2
    else
      L4_2 = "UIText_Rogue_BuffList_BattleEvent_Title"
      L5_2 = G
      L5_2 = L5_2.TextmapStatic
      L5_2 = L5_2.GetText
      L7_2 = A1_2
      L6_2 = A1_2.GetRogueBuffTypeRow
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.RogueBuffTypeTextmapID
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      return L4_2, L5_2, L6_2, L7_2
    end
  end
  L4_2 = nil
  L5_2 = nil
  return L4_2, L5_2
end
L0_1._get_show_title_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueMenuBuffRowPanel
    L8_2 = G
    L8_2 = L8_2.RogueMenuBuffRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._display_buff_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_title
  L9_2 = A0_2
  L8_2 = A0_2._get_show_title_text
  L10_2 = L5_2
  L11_2 = A2_2 + 1
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_selected
  L8_2 = A0_2._selected_index
  L8_2 = L8_2 == A2_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_buff_row_click
  L10_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_buff_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._selected_index = A1_2
  A0_2._selected_panel = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._on_buff_row_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._bufftype_tab_control
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._bufftype_tab_control = L1_2
  L1_2 = A0_2._bufftype_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_type_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._bufftype_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_bufftype_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueBuffTypeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._sub_title_text_ids = L2_2
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L4_2 = A0_2
    L3_2 = A0_2._init_rogue_buff_type_tab_item
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._sub_title_text_ids
    L5_2 = L2_2.RogueBuffTypeSubTitle
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._bufftype_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._bufftype_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._default_tab_index
  L2_2(L3_2, L4_2)
end
L0_1._try_init_bufftype_tab_control = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueEnhanceBuffTabItem
  L5_2 = G
  L5_2 = L5_2.RogueEnhanceBuffTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_buff_type_tab_control
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._bufftype_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_rogue_buff_type_tab_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._bufftype_tab_control
  L2_2 = L2_2.current_select_item
  L4_2 = L2_2
  L3_2 = L2_2.filter
  L5_2 = A0_2._all_buff_table
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._display_buff_data_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._sort_display_buff
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_title_data
  L3_2(L4_2)
  A0_2._selected_index = 0
  A0_2._selected_panel = nil
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = 0
  L3_2(L4_2, L5_2)
end
L0_1._on_bufftype_tab_select_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._bufftype_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._bufftype_tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.refresh_num
    L9_2 = A0_2._all_buff_table
    L7_2(L8_2, L9_2)
  end
end
L0_1._refresh_bufftype_tab_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._bufftype_tab_control
      if L1_2 then
        L1_2 = A0_2._bufftype_tab_control
        L2_2 = L1_2
        L1_2 = L1_2.select_prev
        L1_2(L2_2)
        L2_2 = A0_2
        L1_2 = A0_2.force_set_first_navigation_target
        L1_2(L2_2)
      end
    end
  end
end
L0_1._select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._bufftype_tab_control
      if L1_2 then
        L1_2 = A0_2._bufftype_tab_control
        L2_2 = L1_2
        L1_2 = L1_2.select_next
        L1_2(L2_2)
        L2_2 = A0_2
        L1_2 = A0_2.force_set_first_navigation_target
        L1_2(L2_2)
      end
    end
  end
end
L0_1._select_next = L3_1
return L0_1
