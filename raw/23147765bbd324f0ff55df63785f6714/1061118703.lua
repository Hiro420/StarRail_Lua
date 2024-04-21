local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.NounArchive.NounArchivePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.NounArchive.NounTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.NounArchive.NounTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NounArchivePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NounArchivePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.GetAllArchiveEntries
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._noun_entries = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_init_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_index = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.ClearAllNewStatus
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = 1
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._noun_entries
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 1
  end
  return L2_2
end
L0_1._get_init_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_noun_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tag_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_tag_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = A0_2._cur_index
  L3_2 = L3_2 - 1
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
end
L0_1._refresh_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._refresh_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._noun_entries
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._noun_entries
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  A0_2._cur_entry = L1_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.OnEntryClick
  L3_2 = A0_2._cur_entry
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_deco
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tag
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_entry
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsIntroPage
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_deco
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._cur_entry
  L2_2 = L2_2.Row
  L2_2 = L2_2.Type
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_deco_terms
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_deco_aeons
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_deco_factions
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 3
  L3_2(L4_2, L5_2)
end
L0_1._refresh_deco = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_desc_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_entry
  L1_2(L2_2, L3_2)
end
L0_1._refresh_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_entry
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_tag_list
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._cur_entry
  L2_2 = L2_2.Row
  L2_2 = L2_2.RelatedTerms
  L1_2 = L1_2(L2_2)
  A0_2._tag_list = L1_2
  L1_2 = A0_2._cur_entry
  L1_2 = L1_2.Row
  L1_2 = L1_2.RelatedTerms
  L1_2 = L1_2.Length
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tag_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if 0 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.tag_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_tag = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_entry
  L1_2 = L1_2.Row
  L1_2 = L1_2.RelatedTerms
  L1_2 = L1_2.Length
  if L1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 33
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 61
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.NounTagPanel
    L8_2 = G
    L8_2 = L8_2.NounTagPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._tag_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._data
  L7_2 = L6_2
  L6_2 = L6_2.GetArchiveEntryByID
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2._on_tag_click
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_get_tag_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TitleInfoRowPanel
  L8_2 = G
  L8_2 = L8_2.TitleInfoRowPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._noun_entries
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.set_color_title
  L8_2 = L5_2.Row
  L8_2 = L8_2.IsIntroPage
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2 + 1
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_locked
  L8_2 = L5_2.IsUnlock
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.IsUnlock
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.set_title
    L8_2 = L5_2.Row
    L8_2 = L8_2.NounTitle
    L6_2(L7_2, L8_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_customize_title
    L8_2 = L1_1.ArchiveLockName
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A2_2 + 1
  L9_2 = A0_2._cur_index
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.RedDotModule
  L6_2 = L6_2.Instance
  L7_2 = L6_2
  L6_2 = L6_2.bind_reddot
  L8_2 = "NounArchive"
  L9_2 = L5_2.RedDotKey
  L10_2 = L4_2
  L12_2 = L4_2
  L11_2 = L4_2.get_node_red_dot
  L11_2, L12_2 = L11_2(L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = A2_2 + 1
  L7_2 = A0_2._cur_index
  if L6_2 == L7_2 then
    A0_2._cur_selected_panel = L4_2
  end
  return L3_2
end
L0_1._on_get_noun_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._data
  if A1_2 == L2_2 then
    return
  end
  L2_2 = A1_2.OwnerArchiveData
  L3_2 = A0_2._data
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = A0_2._noun_entries
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._cur_index = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_list
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.noun_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = A0_2._cur_index
    L4_2 = L4_2 - 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L3_2 = L2_2
    L2_2 = L2_2.ClearAllNewStatus
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.init
    L4_2 = A1_2.OwnerArchiveData
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._custom_setup_view
    L2_2(L3_2)
  end
  A0_2._discard_zoom_enter = true
  L3_2 = A0_2
  L2_2 = A0_2.to_first_zoom
  L2_2(L3_2)
end
L0_1._on_tag_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_index
  if L3_2 == A1_2 then
    return
  end
  A0_2._cur_index = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._on_item_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_selected_panel = A1_2
end
L0_1._set_cur_selected_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._cur_selected_panel
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._cur_selected_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.tag_list
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = 0
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2.UserObjectData
        L6_2 = L5_2
        L5_2 = L5_2.get_first_selected_object
        L5_2, L6_2 = L5_2(L6_2)
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._discard_zoom_enter
    if L2_2 then
      A0_2._discard_zoom_enter = false
      L2_2 = false
      return L2_2
    end
    L2_2 = A0_2._cur_entry
    L2_2 = L2_2 ~= nil
    return L2_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.noun_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
return L0_1
