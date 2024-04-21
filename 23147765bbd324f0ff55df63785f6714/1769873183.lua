local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Statistic.HandbookChallengeMemoryStatisticTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Statistic.HandbookChallengeMemoryStatisticTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = "SpriteOutput/TabIcon/DailyQuest/DailyQuestChallengeStoryIcon.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.GuideChallengeType
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "HandbookChallengeTabItem"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._challenge_tab_rows = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._challenge_tab_rows = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tabs
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._challenge_tab_rows = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GuideChallengeTabExcelTable
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.IsGuideChallengeTypeUnlock
    L5_2 = L2_2.GuideType
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._challenge_tab_rows
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L3_1._refresh_challenge_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_tab_control
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_tab_control
    L1_2(L2_2)
  end
  L1_2 = A0_2._challenge_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._challenge_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._challenge_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L4_2 = A0_2
  L3_2 = A0_2._get_default_uid
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._challenge_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L3_1._refresh_tabs = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_tab_control = L1_2
  L1_2 = A0_2._challenge_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btn_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_scroll_rect
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_statistic_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._challenge_tab_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.GuideType
    L7_2 = L2_1.ChallengeStatistic
    if L6_2 == L7_2 then
      L7_2 = A0_2
      L6_2 = A0_2._init_challenge_statistic_tab_item
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = L5_2.GuideType
      L7_2 = L2_1.Challenge
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._init_abyss_tab_item
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = L5_2.GuideType
        L7_2 = L2_1.ChallengeStory
        if L6_2 == L7_2 then
          L7_2 = A0_2
          L6_2 = A0_2._init_story_tab_item
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
end
L3_1._init_tab_control = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.HandbookChallengeAbyssTabItem
  L5_2 = G
  L5_2 = L5_2.HandbookChallengeAbyssTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_challenge_tab_row_config
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._challenge_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L3_1._init_abyss_tab_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.HandbookChallengeStoryTabItem
  L5_2 = G
  L5_2 = L5_2.HandbookChallengeStoryTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_challenge_tab_row_config
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._challenge_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L3_1._init_story_tab_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.HandbookChallengeMemoryStatisticTabItem
  L5_2 = G
  L5_2 = L5_2.HandbookChallengeMemoryStatisticTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_statistic_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_challenge_tab_row_config
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._challenge_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L3_1._init_challenge_statistic_tab_item = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = 1
  return L1_2
end
L3_1._get_default_uid = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._challenge_tab_control
  L2_2 = L2_2.current_select_item
  if L2_2 ~= nil then
    L2_2 = A0_2._challenge_tab_control
    L2_2 = L2_2.current_select_item
    L2_2 = L2_2.get_type_id
    if L2_2 ~= nil then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = A0_2
  L2_2 = A0_2._update_intro_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_res_bar
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshGuide
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._report_tab_select
  L2_2(L3_2)
end
L3_1._on_tab_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_selected_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._res_bar_change_callback
  L4_2 = A0_2._res_bar_change_handler
  L6_2 = L1_2
  L5_2 = L1_2.get_res_bar_config
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1._update_res_bar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_selected_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._intro_change_callback
  L4_2 = A0_2._intro_change_handler
  L6_2 = L1_2
  L5_2 = L1_2.get_intro_data_id
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1._update_intro_info = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_tab_control
  if L1_2 then
    L1_2 = A0_2._challenge_tab_control
    L1_2 = L1_2.current_select_item
  end
  return L1_2
end
L3_1._get_cur_selected_tab_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_selected_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._owner
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = L1_2.__name
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._report_tab_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  return L1_2(L2_2)
end
L3_1._is_enable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_DailyMissionPage_TabLocked"
  L1_2(L2_2, L3_2)
end
L3_1._on_select_when_disable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsGuideTabUnlock
  return L1_2(L2_2)
end
L3_1.is_unlocked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReddotRefreshGuide
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HandbookGuideChallengeLatestUpdate"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._setup_tab_btn_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_by_confirm
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_intro_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_res_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._challenge_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.item_count
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._challenge_tab_control
    L6_2 = L5_2
    L5_2 = L5_2.find_item
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2.on_main_tab_unselect
      if L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.on_main_tab_unselect
        L6_2(L7_2)
      end
    end
  end
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = 124
  return L1_2
end
L3_1.get_short_cut_hint = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._intro_change_callback = A1_2
  A0_2._intro_change_handler = A2_2
end
L3_1.register_intro_change_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._res_bar_change_callback = A1_2
  A0_2._res_bar_change_handler = A2_2
end
L3_1.register_res_bar_change_callback = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L3_1.show_explain = L4_1
function L4_1(A0_2, A1_2)
  A0_2._init_type_id = A1_2
end
L3_1.set_init_param = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L3_1._init_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._challenge_tab_control
      if L2_2 then
        L2_2 = A0_2._challenge_tab_control
        L2_2 = L2_2.current_select_item
      end
      if L2_2 ~= nil then
        L3_2 = L2_2.reset_view
        if L3_2 ~= nil then
          L4_2 = L2_2
          L3_2 = L2_2.reset_view
          L3_2(L4_2)
        end
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L6_2 = L2_2
        L5_2 = L2_2.get_first_selected_object
        L5_2, L6_2 = L5_2(L6_2)
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._challenge_tab_control
    if L2_2 then
      L2_2 = A0_2._challenge_tab_control
      L2_2 = L2_2.current_select_item
    end
    L3_2 = L2_2.can_to_zoom
    L4_2 = L2_2
    L3_2 = L2_2.can_to_zoom
    L5_2 = A1_2
    L3_2 = L2_2 ~= nil and L3_2
    return L3_2
  end
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._challenge_tab_control
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_tab_btn_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._challenge_tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_tab_control
  if L1_2 then
    L1_2 = A0_2._challenge_tab_control
    L1_2 = L1_2.current_select_item
  end
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.force_scrollrect_move
    L2_2(L3_2)
  end
end
L3_1._on_in_control_input_switch = L4_1
return L3_1
