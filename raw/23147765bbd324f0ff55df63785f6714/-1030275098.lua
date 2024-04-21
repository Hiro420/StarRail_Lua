local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementQuestPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementHintDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
L2_1 = 1
L3_1 = 41
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AchievementPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_info
  L1_2(L2_2)
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_text
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = -1
  L4_2 = A0_2._on_series_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_nearest_changed
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_finished
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapItemFinished = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_cbks
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshAchievementInfo
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_text
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_looplistview
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._snap_nearest_item
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_red_dot
    L3_2 = A0_2._snap_nearest_item
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._selected_index
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
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
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_in_middle
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.achievement_series
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_type_panel_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.achievement_series
  L2_2 = L2_2.CurSnapNearestItemIndex
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_in_middle = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_index = L3_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "Move Panel To Item Index 2 "
  L5_2 = tostring
  L6_2 = A0_2._selected_index
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  A0_2._is_snap_moving = false
end
L0_1._on_snap_finished = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_index = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_bar
  L4_2 = A2_2.ItemIndex
  L5_2 = A0_2._series_rows
  L5_2 = L5_2.Count
  L4_2 = L4_2 % L5_2
  L4_2 = L4_2 + 0.5
  L5_2 = A0_2._series_rows
  L5_2 = L5_2.Count
  L4_2 = L4_2 / L5_2
  L3_2.value = L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_AudioManager
  L5_2 = L5_2.AudioConfig
  L5_2 = L5_2.EventBattlePassSelectLightCone
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.save_navigation_target
    L5_2 = A2_2.UserObjectData
    L5_2 = L5_2._binder
    L5_2 = L5_2.root
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_snap_nearest_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAchievementSeries
  L1_2 = L1_2(L2_2)
  A0_2._series_rows = L1_2
  L1_2 = A0_2._series_rows
  L1_2 = L1_2.Count
  A0_2._total_item_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_selected_index
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  A0_2._selected_index = L1_2
end
L0_1._init_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAchievedNum
  L1_2 = L1_2(L2_2)
  A0_2._current_achieved_num = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Achievement_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.golden_achieved_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAchievedNumByRarity
  L5_2 = "High"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sliver_achieved_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAchievedNumByRarity
  L5_2 = "Mid"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.copper_achieved_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAchievedNumByRarity
  L5_2 = "Low"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_achieved_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.AchievedNum
  L1_2(L2_2, L3_2)
end
L0_1._update_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = L1_1.SeriesIDRedDotList
  L3_2 = L2_2.Count
  if L3_2 ~= 0 then
    L3_2 = L2_2[0]
    L4_2 = 0
    L5_2 = A0_2._series_rows
    L5_2 = L5_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._series_rows
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.SeriesID
      if L8_2 == L3_2 then
        L1_2 = L7_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_default_selected_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_info_inited
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.achievement_series
  L2_2 = L2_2.ViewPortWidth
  A0_2._view_port_width = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.achievement_series
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = L2_2.ItemSizeWithPadding
  A0_2._item_width_with_spacing = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2._view_port_width
  L5_2 = A0_2._item_width_with_spacing
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2(L4_2)
  A0_2._full_show_item_count = L3_2
  A0_2._is_info_inited = true
end
L0_1._try_init_view_port_and_item_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = L0_1._exit_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_btn_cbks = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L3_2 = A0_2._selected_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  L2_2 = L1_2
  L1_2 = L1_2.FinishSnapImmediately
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.achievement_series
  L2_2 = L1_2
  L1_2 = L1_2.SetSnapTargetItemIndex
  L3_2 = A0_2._selected_index
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._init_view = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.achievement_series
      L1_3 = L0_3
      L0_3 = L0_3.FinishSnapImmediately
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_looplistview = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_bar
  L1_2.numberOfSteps = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_bar
  L2_2 = A0_2._series_rows
  L2_2 = L2_2.Count
  L2_2 = 1 / L2_2
  L1_2.size = L2_2
end
L0_1._init_scroll_bar = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormat
  L5_2 = "Current Index "
  L6_2 = tostring
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AchievementTypePanel
    L8_2 = G
    L8_2 = L8_2.AchievementTypePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._series_rows
  L5_2 = L5_2.Count
  L5_2 = A2_2 % L5_2
  L6_2 = G
  L6_2 = L6_2.SuperDebug
  L6_2 = L6_2.LogFormat
  L7_2 = "Current Index Real"
  L8_2 = tostring
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L6_2(L7_2)
  L6_2 = A0_2._series_rows
  L6_2 = L6_2[L5_2]
  L8_2 = L4_2
  L7_2 = L4_2.register_exit_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_quest_exit_page
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_select_trigger
  L9_2 = A0_2._on_type_panel_selected
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = A0_2._series_rows
  L9_2 = L9_2[L5_2]
  L9_2 = L9_2.SeriesID
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  return L3_2
end
L0_1._on_series_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_page = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L1_1.SeriesIDRedDotList
  L4_2 = A0_2
  L3_2 = A0_2._get_all_visible_panel_series_id
  L5_2 = A1_2.ItemIndex
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = true
  L5_2 = 0
  L6_2 = L2_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = false
    L10_2 = ipairs
    L11_2 = L3_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L2_2[L8_2]
      if L14_2 == L15_2 then
        L9_2 = true
        break
      end
    end
    if L9_2 == false then
      L4_2 = false
      break
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._set_red_dot_status
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
end
L0_1.refresh_red_dot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.right_btn_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_red_dot_status = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = {}
  L4_2 = A2_2.UserObjectData
  L4_2 = L4_2._index
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2._series_rows
  L7_2 = L7_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._series_rows
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.SeriesID
    if L10_2 == L4_2 then
      L5_2 = L9_2
      break
    end
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L3_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2 - 1
  L7_2 = L5_2 - 1
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = A0_2._full_show_item_count
  L9_2 = L9_2 / 2
  L8_2 = L8_2(L9_2)
  L8_2 = L5_2 - L8_2
  L9_2 = -1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._series_rows
    L12_2 = A0_2._total_item_count
    L12_2 = L6_2 + L12_2
    L13_2 = A0_2._total_item_count
    L12_2 = L12_2 % L13_2
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.SeriesID
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L3_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L6_2 = L6_2 - 1
  end
  L7_2 = L5_2 + 1
  L8_2 = L5_2 + 1
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = A0_2._full_show_item_count
  L10_2 = L10_2 / 2
  L9_2 = L9_2(L10_2)
  L9_2 = L5_2 + L9_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A0_2._series_rows
    L13_2 = A0_2._total_item_count
    L13_2 = L7_2 % L13_2
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.SeriesID
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L3_2
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L7_2 = L7_2 + 1
  end
  return L3_2
end
L0_1._get_all_visible_panel_series_id = L4_1
return L0_1
