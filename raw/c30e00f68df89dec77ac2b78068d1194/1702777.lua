local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousPathEchoBanDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoBanDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoBanDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._selected_banned_aeon_ids = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeons_data_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_aeon_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoBanPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoBanPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_banned_aeons = L1_2
  L1_2 = A0_2._panel_banned_aeons
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ban_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2.tag = A5_2
  A0_2._selected_aeon_id = A1_2
  A0_2._selected_banned_aeons_data_list = A2_2
  A0_2._cur_selection_count = 0
  L6_2 = 1
  L7_2 = L1_1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A2_2[L9_2]
    if L10_2 ~= nil then
      L10_2 = A0_2._cur_selection_count
      L10_2 = L10_2 + 1
      A0_2._cur_selection_count = L10_2
    end
  end
  A0_2._on_exit_callback = A3_2
  A0_2._on_exit_callback_owner = A4_2
  L6_2 = pairs
  L7_2 = A0_2._selected_banned_aeons_data_list
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._selected_banned_aeon_ids
    L13_2 = L10_2.AeonID
    L11_2(L12_2, L13_2)
  end
  L6_2 = A0_2.tag
  if L6_2 == "Rogue" then
    L6_2 = G
    L6_2 = L6_2.RogueUtils
    L6_2 = L6_2.create_all_selectable_ban_aeon_data
    L7_2 = A0_2._selected_aeon_id
    L8_2 = A0_2._selected_banned_aeon_ids
    L6_2 = L6_2(L7_2, L8_2)
    A0_2._selectable_banned_data_list = L6_2
  else
    L6_2 = A0_2.tag
    if L6_2 == "RogueNous" then
      L6_2 = G
      L6_2 = L6_2.RogueNousUtils
      L6_2 = L6_2.create_all_selectable_ban_aeon_data
      L7_2 = A0_2._selected_aeon_id
      L8_2 = A0_2._selected_banned_aeon_ids
      L6_2 = L6_2(L7_2, L8_2)
      A0_2._selectable_banned_data_list = L6_2
    end
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_display
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_exit_callback
  if L1_2 then
    L1_2 = A0_2._on_exit_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_exit_callback
      L2_2 = A0_2._on_exit_callback_owner
      L3_2 = A0_2._selected_banned_aeons_data_list
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_root_btn
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.gameObject
    return L4_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._cur_selection_count
  L3_2 = L1_1
  if L2_2 >= L3_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_RogueNous_AeonDetail_Ban_UpperLimit_Tip_1"
    L2_2(L3_2, L4_2)
    return
  end
  A1_2.IsSelected = true
  L2_2 = A0_2._cur_selection_count
  L2_2 = L2_2 + 1
  A0_2._cur_selection_count = L2_2
  L2_2 = 1
  L3_2 = L1_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_banned_aeons_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L6_2 = A0_2._selected_banned_aeons_data_list
      L6_2[L5_2] = A1_2
      break
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2._selectable_banned_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.AeonID
    L8_2 = A1_2.AeonID
    if L7_2 == L8_2 then
      L6_2.IsSelected = true
      break
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._try_select_aeon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A1_2.IsSelected = false
  L2_2 = A0_2._cur_selection_count
  L2_2 = L2_2 - 1
  A0_2._cur_selection_count = L2_2
  L2_2 = 1
  L3_2 = L1_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_banned_aeons_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.AeonID
      L8_2 = A1_2.AeonID
      if L7_2 == L8_2 then
        L7_2 = A0_2._selected_banned_aeons_data_list
        L7_2[L5_2] = nil
        break
      end
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2._selectable_banned_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.AeonID
    L8_2 = A1_2.AeonID
    if L7_2 == L8_2 then
      L6_2.IsSelected = false
      break
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._try_unselect_aeon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._panel_banned_aeons
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_banned_aeons_data_list
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.aeon_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._selectable_banned_data_list
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.aeon_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._refresh_display = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueNousPathEchoBanItemPanel
    L8_2 = G
    L8_2 = L8_2.RogueNousPathEchoBanItemPanelBinder
    L9_2 = "ListItem"
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_on_click_callback
    L7_2 = A0_2._on_item_icon_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._selectable_banned_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_aeon_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.IsSelected
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_unselect_aeon
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_select_aeon
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = A1_2.IsSelected
  L3_2(L4_2, L5_2)
end
L0_1._on_item_icon_click = L2_1
return L0_1
