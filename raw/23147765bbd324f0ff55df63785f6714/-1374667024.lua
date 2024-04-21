local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementQuestPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementListInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementListInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementQuestPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AchievementQuestPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._current_series_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
end
L0_1.ctor = L2_1
L2_1 = nil
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 65
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.type_tab_control
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAchievementTakeQuestRewardSuccess
  L4_2 = A0_2._on_reward_rsp_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowAchievementFinishHint
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshAchievementInfo
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_red_dot_hint_value
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_scroll
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAchievementSeries
  L1_2 = L1_2(L2_2)
  A0_2._series_rows = L1_2
  L1_2 = 1
  L2_2 = A0_2._series_rows
  L2_2 = L2_2.Count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AchievementTabItem
    L8_2 = G
    L8_2 = L8_2.AchievementTabItemBinder
    L9_2 = A0_2._series_rows
    L10_2 = L4_2 - 1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.SeriesID
    L10_2 = A0_2._series_rows
    L11_2 = L4_2 - 1
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.IconPath
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2.button_prefab_index = 0
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_series_item_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.type_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_achievement_type_tabs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_achievement_type_tabs
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._selected_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.type_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._custom_move_tab_item_to
    L2_3 = A0_2._series_rows
    L2_3 = L2_3.Count
    L3_3 = A0_2._selected_index
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  A0_2._take_reward_list_panel_index = L2_2
end
L0_1.update_list_panel_index = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A1_2 or nil
  if not A1_2 then
    L4_2 = 1
  end
  A0_2._selected_index = L4_2
  A0_2._exit_callback = A3_2
  A0_2._exit_callback_owner = A2_2
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_series
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._series_rows
  L4_2 = A0_2._selected_index
  L4_2 = L4_2 - 1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.SeriesTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_schedule
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Achievement_Process"
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSeriesAchievedNum
  L3_2 = A0_2._series_rows
  L4_2 = A0_2._selected_index
  L4_2 = L4_2 - 1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.SeriesID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetVisibleAchievementsNumBySeries
  L4_2 = A0_2._series_rows
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.SeriesID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_completed_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_text
  L2_2(L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAchievementDataBySeries
  L4_2 = A0_2._series_rows
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.SeriesID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._datas = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._datas
  L4_2 = L4_2.Count
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_list_view
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_list_view
    L3_2 = L2_2
    L2_2 = L2_2.SelectByIndex
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    A0_2._take_reward_list_panel_index = nil
  else
    L2_2 = A0_2._datas
    L2_2 = L2_2.Count
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.loop_list_view
      L3_2 = L2_2
      L2_2 = L2_2.SetSelectIndex
      L4_2 = A1_2 or L4_2
      if not A1_2 then
        L4_2 = 0
      end
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.OnItemSizeChanged
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_item_size_changed = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  L5_2 = A0_2._datas
  L5_2 = L5_2[A2_2]
  if L4_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AchievementListInfoPanel
    L9_2 = G
    L9_2 = L9_2.AchievementListInfoPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L4_2 = L6_2
    L7_2 = L4_2
    L6_2 = L4_2.bind
    L8_2 = L3_2.transform
    L6_2(L7_2, L8_2)
    L7_2 = L4_2
    L6_2 = L4_2.register_refresh_callback
    L8_2 = A0_2
    L9_2 = A0_2._on_item_size_changed
    L6_2(L7_2, L8_2, L9_2)
    L3_2.UserObjectData = L4_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._current_series_panels
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = L3_2.transform
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.CachedRectTransform
  L6_2(L7_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._undisplay_hidden_achievements
  if L6_2 ~= nil then
    L6_2 = A0_2._undisplay_hidden_achievements
    L7_2 = L6_2
    L6_2 = L6_2.Contains
    L8_2 = L5_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.play_hidden_achievement_effect
      L6_2(L7_2)
      L6_2 = L1_1
      L7_2 = L6_2
      L6_2 = L6_2.UpdateHiddenAchievementStatusOnFinishDisplay
      L8_2 = L5_2.ID
      L6_2(L7_2, L8_2)
    end
  end
  L6_2 = ipairs
  L7_2 = A0_2._current_series_panels
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.do_refresh_for_desc_btn
    L11_2(L12_2)
  end
  return L3_2
end
L0_1._on_quest_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._selected_index
  if A1_2 == L2_2 then
    return
  end
  L2_2 = {}
  A0_2._current_series_panels = L2_2
  A0_2._selected_index = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAchievementDataBySeries
  L4_2 = A0_2._series_rows
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.SeriesID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._datas = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetUnDisplayHiddenAchievementBySeries
  L4_2 = A0_2._series_rows
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.SeriesID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._undisplay_hidden_achievements = L2_2
end
L0_1._on_series_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._exit_callback
    L2_2 = A0_2._exit_callback_owner
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L3_2 = L3_2.vertical
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = A2_2 / A1_2
    L3_2.verticalNormalizedPosition = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = A2_2 / A1_2
    L3_2.horizontalNormalizedPosition = L4_2
  end
  return
end
L0_1._custom_move_tab_item_to = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A2_2
  A0_2._exit_callback_owner = A1_2
end
L0_1.register_exit_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.Count
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = A1_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.RewardDialog"
  L6_2 = L3_2
  L7_2 = nil
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = A0_2._take_reward_list_panel_index
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._on_scroll
  L4_2(L5_2)
end
L0_1._on_reward_rsp_get = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.viewport
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._viewport_width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.viewport
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._viewport_height = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.content
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._content_width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.content
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._content_height = L1_2
end
L0_1._init_red_dot_hint_value = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.vertical
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_vertical_scroll
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_horizontal_scroll
    L1_2(L2_2)
  end
end
L0_1._on_scroll = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = A0_2._series_rows
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.scroll_rect
    L7_2 = L7_2.content
    L7_2 = L7_2.anchoredPosition
    L7_2 = L7_2.y
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.find_item_gameObject
    L10_2 = L6_2 + 1
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.transform
    L10_2 = L9_2
    L9_2 = L9_2.GetComponent
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.RectTransform
    L11_2, L12_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L9_2.localPosition
    L10_2 = L10_2.y
    L11_2 = L7_2 + L10_2
    L12_2 = L9_2.rect
    L12_2 = L12_2.height
    L11_2 = L11_2 - L12_2
    if L11_2 <= 0 then
      break
    end
    L11_2 = L1_1.SeriesRedDotInfo
    L12_2 = A0_2._series_rows
    L12_2 = L12_2[L6_2]
    L12_2 = L12_2.SeriesID
    L11_2 = L11_2[L12_2]
    if L11_2 ~= nil then
      L11_2 = L1_1.SeriesRedDotInfo
      L12_2 = A0_2._series_rows
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.SeriesID
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.Count
      if 0 < L11_2 then
        L1_2 = true
        break
      end
    end
  end
  L3_2 = A0_2._series_rows
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 0
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.scroll_rect
    L7_2 = L7_2.content
    L7_2 = L7_2.anchoredPosition
    L7_2 = L7_2.y
    L8_2 = A0_2._binder
    L8_2 = L8_2.scroll_rect
    L8_2 = L8_2.viewport
    L8_2 = L8_2.rect
    L8_2 = L8_2.height
    L7_2 = L7_2 + L8_2
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.find_item_gameObject
    L10_2 = L6_2 + 1
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.transform
    L10_2 = L9_2
    L9_2 = L9_2.GetComponent
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.RectTransform
    L11_2, L12_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L9_2.localPosition
    L10_2 = L10_2.y
    L11_2 = L7_2 + L10_2
    if 0 <= L11_2 then
      break
    end
    L11_2 = L1_1.SeriesRedDotInfo
    L12_2 = A0_2._series_rows
    L12_2 = L12_2[L6_2]
    L12_2 = L12_2.SeriesID
    L11_2 = L11_2[L12_2]
    if L11_2 ~= nil then
      L11_2 = L1_1.SeriesRedDotInfo
      L12_2 = A0_2._series_rows
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.SeriesID
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.Count
      if 0 < L11_2 then
        L2_2 = true
        break
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.previous_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.next_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_vertical_scroll = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = A0_2._series_rows
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.scroll_rect
    L7_2 = L7_2.content
    L7_2 = L7_2.anchoredPosition
    L7_2 = L7_2.x
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.find_item_gameObject
    L10_2 = L6_2 + 1
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.transform
    L10_2 = L9_2
    L9_2 = L9_2.GetComponent
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.RectTransform
    L11_2, L12_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L9_2.localPosition
    L10_2 = L10_2.x
    L11_2 = L7_2 + L10_2
    L12_2 = L9_2.rect
    L12_2 = L12_2.width
    L11_2 = L11_2 + L12_2
    if 0 <= L11_2 then
      break
    end
    L11_2 = L1_1.SeriesRedDotInfo
    L12_2 = A0_2._series_rows
    L12_2 = L12_2[L6_2]
    L12_2 = L12_2.SeriesID
    L11_2 = L11_2[L12_2]
    if L11_2 ~= nil then
      L11_2 = L1_1.SeriesRedDotInfo
      L12_2 = A0_2._series_rows
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.SeriesID
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.Count
      if 0 < L11_2 then
        L1_2 = true
        break
      end
    end
  end
  L3_2 = A0_2._series_rows
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 0
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.scroll_rect
    L7_2 = L7_2.content
    L7_2 = L7_2.anchoredPosition
    L7_2 = L7_2.x
    L7_2 = -L7_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.scroll_rect
    L8_2 = L8_2.viewport
    L8_2 = L8_2.rect
    L8_2 = L8_2.width
    L7_2 = L7_2 + L8_2
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.find_item_gameObject
    L10_2 = L6_2 + 1
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.transform
    L10_2 = L9_2
    L9_2 = L9_2.GetComponent
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.RectTransform
    L11_2, L12_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L9_2.anchoredPosition
    L10_2 = L10_2.x
    L11_2 = L8_2.transform
    L11_2 = L11_2.rect
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    if L7_2 >= L10_2 then
      break
    end
    L11_2 = L1_1.SeriesRedDotInfo
    L12_2 = A0_2._series_rows
    L12_2 = L12_2[L6_2]
    L12_2 = L12_2.SeriesID
    L11_2 = L11_2[L12_2]
    if L11_2 ~= nil then
      L11_2 = L1_1.SeriesRedDotInfo
      L12_2 = A0_2._series_rows
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.SeriesID
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.Count
      if 0 < L11_2 then
        L2_2 = true
        break
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.previous_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.next_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_horizontal_scroll = L3_1
return L0_1
