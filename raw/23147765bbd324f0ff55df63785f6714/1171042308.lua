local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.RogueSelectAeonDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueScheduleCheckPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectAeonDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "RoguePathEchoDetail_SwitchR"
L3_1 = "RoguePathEchoDetail_SwitchL"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectAeonDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_DontCache
  A0_2._view_cache_type = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeon_ids = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeons_data_list = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._rogue_aeon_rows = A1_2
  A0_2._cur_index = A2_2
  A0_2._rogue_area_id = A3_2
  A0_2._avatar_id_list = A4_2
  A0_2._has_switch = false
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 121
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_left
  L4_2 = A0_2._on_btn_arrow_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_right
  L4_2 = A0_2._on_btn_arrow_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ban
  L4_2 = A0_2._on_btn_ban
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.RogueScheduleCheckPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_schedule = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_banned_aeons
  L2_2 = L1_2
  L1_2 = L1_2.register_on_item_click_callback
  L3_2 = A0_2._on_aeons_icon_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail_2
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L1_2 = L1_2.IsBanAeonUnlocked
  A0_2._is_ban_aeon_unlocked = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_banned_aeons
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_ban_aeon_unlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._rogue_aeon_rows
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.setup_select_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.set_interactable
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickSelectRogueAeon
  L4_2 = L1_2.AeonID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reload_banned_aeon_cache
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._has_switch = true
  L3_2 = A0_2._rogue_aeon_rows
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_detail
  L5_2 = L4_2
  L4_2 = L4_2.setup_select_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_detail
  L5_2 = L4_2
  L4_2 = L4_2.set_interactable
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._rogue_aeon_rows
  L5_2 = A0_2._cur_index
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_detail_2
  L6_2 = L5_2
  L5_2 = L5_2.setup_select_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_detail_2
  L6_2 = L5_2
  L5_2 = L5_2.set_interactable
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_detail_2
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.ClickSelectRogueAeon
  L7_2 = L4_2.AeonID
  L5_2(L6_2, L7_2)
end
L0_1._show_switch_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._selected_banned_aeons_data_list = L1_2
  L1_2 = A0_2._is_ban_aeon_unlocked
  if L1_2 then
    L1_2 = A0_2._rogue_aeon_rows
    L2_2 = A0_2._cur_index
    L1_2 = L1_2[L2_2]
    L2_2 = G
    L2_2 = L2_2.RogueUtils
    L2_2 = L2_2.try_get_rogue_nous_selected_banned_aeon
    L3_2 = L1_2.AeonID
    L2_2 = L2_2(L3_2)
    A0_2._selected_banned_aeons_data_list = L2_2
  end
  L1_2 = {}
  A0_2._selected_banned_aeon_ids = L1_2
  L1_2 = pairs
  L2_2 = A0_2._selected_banned_aeons_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._selected_banned_aeon_ids
    L8_2 = L5_2.AeonID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_banned_aeons
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._selected_banned_aeons_data_list
  L1_2(L2_2, L3_2)
end
L0_1._reload_banned_aeon_cache = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_index
  L2_2 = A0_2._cur_index
  if L2_2 == 1 then
    L2_2 = A0_2._rogue_aeon_rows
    L2_2 = #L2_2
    A0_2._cur_index = L2_2
  else
    L2_2 = A0_2._cur_index
    L2_2 = L2_2 - 1
    A0_2._cur_index = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_switch_view
  L4_2 = L1_2
  L5_2 = A0_2._cur_index
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_switch
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reload_banned_aeon_cache
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._on_btn_arrow_left = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_index
  L2_2 = A0_2._cur_index
  L3_2 = A0_2._rogue_aeon_rows
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    A0_2._cur_index = 1
  else
    L2_2 = A0_2._cur_index
    L2_2 = L2_2 + 1
    A0_2._cur_index = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_switch_view
  L4_2 = L1_2
  L5_2 = A0_2._cur_index
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_switch
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reload_banned_aeon_cache
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._on_btn_arrow_right = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._rogue_aeon_rows
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._panel_schedule
  if L2_2 then
    L2_2 = A0_2._panel_schedule
    L3_2 = L2_2
    L2_2 = L2_2.check_schedule
    L2_2 = L2_2(L3_2)
    if L2_2 == false then
      return
    end
  end
  L2_2 = nil
  L3_2 = A0_2._selected_banned_aeon_ids
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.System
    L3_2 = L3_2.Collections
    L3_2 = L3_2.Generic
    L3_2 = L3_2.List
    L4_2 = CS
    L4_2 = L4_2.System
    L4_2 = L4_2.UInt32
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2()
    L2_2 = L3_2
    L3_2 = 1
    L4_2 = A0_2._selected_banned_aeon_ids
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = L2_2
      L7_2 = L2_2.Add
      L9_2 = A0_2._selected_banned_aeon_ids
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.StartRogueWithAeon
  L5_2 = A0_2._rogue_area_id
  L6_2 = A0_2._avatar_id_list
  L7_2 = L2_2
  L8_2 = L1_2.AeonID
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_btn_confirm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_aeons_icon_click
  L1_2(L2_2)
end
L0_1._on_btn_ban = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._rogue_aeon_rows
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousPathEchoBanDialog"
  L4_2 = L1_2.AeonID
  L5_2 = A0_2._selected_banned_aeons_data_list
  L6_2 = A0_2._on_select_banned_aeons
  L7_2 = A0_2
  L8_2 = "Rogue"
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_aeons_icon_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._selected_banned_aeons_data_list = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_banned_aeons
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_banned_aeons_data_list
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._selected_banned_aeon_ids = L2_2
  L2_2 = pairs
  L3_2 = A0_2._selected_banned_aeons_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.AeonID
    L8_2 = A0_2._cur_selected_aeon_id
    if L7_2 ~= L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._selected_banned_aeon_ids
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = A0_2._rogue_aeon_rows
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.try_save_rouge_nous_pref_data
  L4_2 = L2_2.AeonID
  L5_2 = A0_2._selected_banned_aeon_ids
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prefs
  L6_2 = L6_2.User
  L6_2 = L6_2.RogueSelectedBanAeons
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_select_banned_aeons = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_switch
  if L1_2 then
    L1_2 = A0_2._binder
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_detail_2
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_detail_2
        L2_2 = L1_2
        L1_2 = L1_2.get_first_selected_object
        return L1_2(L2_2)
      end
    end
  else
    L1_2 = A0_2._binder
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_detail
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_detail
        L2_2 = L1_2
        L1_2 = L1_2.get_first_selected_object
        return L1_2(L2_2)
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
return L0_1
