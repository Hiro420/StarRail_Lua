local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhoneTheme.PhoneThemeSelectPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PersonalizeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhoneThemeSelectPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhoneThemeSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._theme_ids = L1_2
  A0_2._current_theme_id = 0
  A0_2._in_display = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizePhoneThemeUnlocked
  L4_2 = A0_2._on_theme_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizePhoneThemeCurrentChanged
  L4_2 = A0_2._on_theme_current_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_trigger_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_display_on
  L4_2 = A0_2._on_btn_display
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_display_off
  L4_2 = A0_2._on_btn_display
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.FetchPersonalizeData
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.PhoneThemeData
  L1_2 = L1_2.CurrentID
  A0_2._current_theme_id = L1_2
  L1_2 = A0_2._current_theme_id
  A0_2._selected_theme_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_player_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_confirm_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_display_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PlayerData
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_player_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.NickName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player_photo
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_id
  L4_2 = L1_2.HeadIconID
  L2_2(L3_2, L4_2)
end
L2_1._refresh_player_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._selected_theme_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected_l
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.PersonalizeUtils
  L5_2 = L5_2.GetPhoneThemeImageL
  L6_2 = A0_2._selected_theme_id
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected_r
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.PersonalizeUtils
  L5_2 = L5_2.GetPhoneThemeImageR
  L6_2 = A0_2._selected_theme_id
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemBGDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_drop
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_item_id
  L4_2 = A0_2._selected_theme_id
  L2_2(L3_2, L4_2)
end
L2_1._refresh_selected_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_locked
  L3_2 = A0_2._selected_theme_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._current_theme_id
  L3_2 = A0_2._selected_theme_id
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_locked
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
end
L2_1._refresh_confirm_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.PhoneThemeData
  L2_2 = L2_2.UnlockedIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = not L2_2
  return L2_2
end
L2_1._is_locked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.PhoneThemeData
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayPhoneThemes
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._theme_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.PhoneThemeSeenIDs
  L2_2 = L0_1.PhoneThemeData
  L2_2 = L2_2.UnlockedIDs
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._theme_ids
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2._current_theme_id
    if A0_3 == L2_3 then
      L2_3 = true
      return L2_3
    else
      L2_3 = A0_2._current_theme_id
      if A1_3 == L2_3 then
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.Contains
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = not L2_3
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.Contains
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    L3_3 = not L3_3
    if L2_3 ~= L3_3 then
      return L3_3
    end
    L4_3 = L1_2
    L5_3 = L4_3
    L4_3 = L4_3.Contains
    L6_3 = A0_3
    L4_3 = L4_3(L5_3, L6_3)
    L4_3 = not L4_3 and L4_3
    L5_3 = L1_2
    L6_3 = L5_3
    L5_3 = L5_3.Contains
    L7_3 = A1_3
    L5_3 = L5_3(L6_3, L7_3)
    L5_3 = not L5_3 and L5_3
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A1_3 < A0_3
    return L6_3
  end
  L3_2(L4_2, L5_2)
end
L2_1._refresh_items_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._theme_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._theme_ids
  L3_2 = A0_2._current_theme_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_item
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByIndex
    L4_2 = L1_2 - 1
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_items_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhoneThemeSelectItemPanel
    L8_2 = G
    L8_2 = L8_2.PhoneThemeSelectItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_theme_selected_changed
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._theme_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._is_locked
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._current_theme_id
  L7_2 = L5_2 == L7_2
  L8_2 = A0_2._selected_theme_id
  L8_2 = L5_2 == L8_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetPhoneTheme
  L3_2 = A0_2._selected_theme_id
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._in_display
  L1_2 = not L1_2
  A0_2._in_display = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_display_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_btn_display = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_display_on
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._in_display
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_display_off
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._in_display
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_to_hide
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._in_display
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
end
L2_1._refresh_display_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_in_special_zoom
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 31
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = A0_2._in_display
      if L2_3 then
        L2_3 = 141
        if L2_3 then
          goto lbl_24
        end
      end
      L2_3 = 140
      ::lbl_24::
      L3_3 = A0_2._binder
      L3_3 = L3_3.scroll_rect
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2)
end
L2_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_view
  L1_2(L2_2)
end
L2_1._on_theme_unlocked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_PhoneThemeToast"
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.PhoneThemeData
  L1_2 = L1_2.CurrentID
  A0_2._current_theme_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_confirm_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_view
  L1_2(L2_2)
end
L2_1._on_theme_current_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._selected_theme_id
  L2_2 = L2_2 ~= A1_2
  A0_2._selected_theme_id = A1_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.RecordSeenTheme
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_confirm_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_items_view
  L3_2(L4_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_switch
    L5_2 = "PhoneThemeSwitch_Com"
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayToEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_switch
    L5_2 = "PhoneThemeSwitch_Com"
    L3_2(L4_2, L5_2)
  end
end
L2_1._on_theme_selected_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_view
  L1_2(L2_2)
end
L2_1._on_anim_trigger_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_selected_theme_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._theme_ids
  L3_2 = A0_2._selected_theme_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_item
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_23
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_23::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L2_1._get_first_selected_theme_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_drop
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L2_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_leave_special_zoom = L3_1
return L2_1
