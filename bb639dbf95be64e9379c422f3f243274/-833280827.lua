local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.RogueSelectAeonPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueSelectAeonCoverPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueSelectAeonCoverPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueScheduleCheckPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectAeonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectAeonPageBinder
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
  A0_2._first_open = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._rogue_area_id = A1_2
  A0_2._avatar_id_list = A2_2
  A0_2._rogue_aeon_rows = nil
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 5
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_aeon_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
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
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.RogueScheduleCheckPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_schedule = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TriggerRogueBonusSelect
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickSelectRogueAeon
  L4_2 = A0_2._on_click_select_rogue_aeon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._rogue_aeon_rows
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L1_2.ItemMinTrackRate = 0.9
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._mark_seen_aeons
  L1_2(L2_2)
end
L0_1._on_lost_focus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._mark_seen_aeons
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._item_might_recycled
    if L2_2 then
      A0_2._item_might_recycled = false
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_list
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToItemIndex
      L4_2 = A0_2._record_index
      L4_2 = L4_2 - 1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_list
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = A0_2._record_index
      L4_2 = L4_2 - 1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L3_2 = L2_2.UserObjectData
        if L3_2 ~= nil then
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
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetSelectableAeonIDList
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueAeonExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L3_2[L7_2]
    L10_2 = 1
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = #L1_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  A0_2._rogue_aeon_rows = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.IsRogueSelectAeonPageSeen
  if not L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2.IsRogueSelectAeonPageSeen = true
    L4_2 = 0
    L5_2 = L3_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = G
      L8_2 = L8_2.RogueUtils
      L8_2 = L8_2.mark_aeon_seen
      L9_2 = L3_2[L7_2]
      L8_2(L9_2)
    end
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.RogueSeenSelectableAeons
    L4_2(L5_2)
  end
end
L0_1._init_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L7_2 = L7_2.RogueSelectAeonCoverPanel
  L8_2 = G
  L8_2 = L8_2.RogueSelectAeonCoverPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._rogue_aeon_rows
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_click_aeon
  L9_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_select_aeon
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind_reddot
  L7_2 = "RogueNewUnlockAeon"
  L8_2 = A0_2._rogue_aeon_rows
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.AeonID
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A1_2
  L5_2 = A1_2.PushTrackIndex
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_aeon_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._rogue_aeon_rows
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._panel_schedule
  if L3_2 then
    L3_2 = A0_2._panel_schedule
    L4_2 = L3_2
    L3_2 = L3_2.check_schedule
    L3_2 = L3_2(L4_2)
    if L3_2 == false then
      return
    end
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Rogue.Aeon.RogueSelectAeonDetailPage"
  L5_2 = A0_2._rogue_aeon_rows
  L6_2 = A1_2
  L7_2 = A0_2._rogue_area_id
  L8_2 = A0_2._avatar_id_list
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_click_aeon = L2_1
function L2_1(A0_2, A1_2)
  A0_2._cur_select_index = A1_2
end
L0_1._on_select_aeon = L2_1
function L2_1(A0_2, A1_2)
  A0_2._select_rogue_aeon_id = A1_2
end
L0_1._on_click_select_rogue_aeon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._item_might_recycled = true
  L1_2 = A0_2._cur_select_index
  A0_2._record_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_left = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._item_might_recycled = true
  L1_2 = A0_2._cur_select_index
  A0_2._record_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = A0_2._rogue_aeon_rows
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_right = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2._first_open
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_get_new_unlock_aeon_index
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    A0_2._first_open = false
  end
  L2_2 = A0_2._select_rogue_aeon_id
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2._rogue_aeon_rows
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.AeonID
      L8_2 = A0_2._select_rogue_aeon_id
      if L7_2 == L8_2 then
        L1_2 = L5_2 - 1
      end
    end
  end
  L2_2 = L1_2 + 1
  A0_2._cur_select_index = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L2_1
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
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RogueSeenUnlockAeons
  L3_2 = ipairs
  L4_2 = A0_2._rogue_aeon_rows
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Contains
    L10_2 = L7_2.AeonID
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L1_2 = L6_2 - 1
    end
  end
  return L1_2
end
L0_1._try_get_new_unlock_aeon_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._rogue_aeon_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RogueUtils
    L6_2 = L6_2.mark_aeon_seen
    L7_2 = L5_2.AeonID
    L6_2(L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSeenSelectableAeons
  L1_2(L2_2)
end
L0_1._mark_seen_aeons = L2_1
return L0_1
