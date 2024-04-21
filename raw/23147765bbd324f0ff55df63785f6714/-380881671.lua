local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingEnterPuzzlePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingEnterPuzzleTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingChallengeTargetInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingEnterPuzzlePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.WolfBroShootingModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = 2
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingEnterPuzzlePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_quest_updated = false
  A0_2._cur_select_gun_play_level = 1
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._gun_play_game_mode = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_reward_item_id_list
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = {}
    L2_2.items = L1_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_tab_btn_object
    return L1_2(L2_2)
  else
    L1_2 = nil
    return L1_2
  end
end
L0_1.get_first_selected_object = L4_1
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
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventureBlockInput
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_common_mode_view
  L1_2(L2_2)
  L1_2 = A0_2._is_quest_updated
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_end_less_mode
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_end_less_mode_view
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._update_latest_tab_index
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_normal_mode_view
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._init_ui_navigation
      L1_2(L2_2)
    end
    A0_2._is_quest_updated = false
  end
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._tab_item_panel_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.update_view
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_latest_tab_index
  L1_2 = L1_2(L2_2)
  A0_2._default_tab_index = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.move_to_current_item
  L1_2(L2_2)
end
L0_1._update_latest_tab_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_end_less_mode
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_end_less_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_end_less_mode_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._init_tab_control
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_mode_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_goods_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingChallengeTargetInfoPanel"
  L6_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingChallengeTargetInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._end_less_reward_list_panel = L1_2
  L1_2 = A0_2._end_less_reward_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_end_less_reward_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._is_quest_updated = true
end
L0_1._on_quest_updated = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_item_panel_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_maze_puzzle_level_info_config
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.WolfBroShootingEnterPuzzleTabItem
    L10_2 = G
    L10_2 = L10_2.WolfBroShootingEnterPuzzleTabItemBinder
    L11_2 = A0_2._gun_play_game_mode
    L12_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2.button_prefab_index = 0
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = A0_2._binder
    L10_2 = L10_2.tab_control_root
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._tab_item_panel_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tab_select
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_latest_tab_index
  L2_2 = L2_2(L3_2)
  A0_2._default_tab_index = L2_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._default_tab_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.move_to_current_item
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1._init_tab_control = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_select_gun_play_level = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_normal_mode_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_right_panel
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "RaidRightPanelRefresh"
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._cur_select_gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Title
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_detail
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Description
    L2_2(L3_2, L4_2)
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetWolfBroShootingBestScore
    L4_2 = A0_2._gun_play_game_mode
    L4_2 = #L4_2
    L5_2 = A0_2._cur_select_gun_play_level
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_max_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_common_mode_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_common_mode_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_end_less_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._reward_item_data_list = L1_2
  L1_2 = {}
  A0_2._reward_item_list = L1_2
  L1_2 = {}
  A0_2._reward_item_set = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._cur_select_gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.QuestList
  L2_2 = L2_2[0]
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = L3_2.RewardID
  L4_2 = L4_2(L5_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._reward_item_data_list
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._reward_item_list
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._reward_item_set
    L11_2 = L9_2.ItemID
    L10_2[L11_2] = L2_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_challenge_target
  L6_2 = L5_2
  L5_2 = L5_2.ResetTrigger
  L7_2 = "Succeed"
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_challenge_target
  L6_2 = L5_2
  L5_2 = L5_2.ResetTrigger
  L7_2 = "Pending"
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.Status
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  if L5_2 ~= L6_2 then
    L5_2 = L3_2.Status
    L6_2 = CS
    L6_2 = L6_2.LEOGBBOPKKO
    L6_2 = L6_2.JKFPIINHGPD
    if L5_2 ~= L6_2 then
      goto lbl_91
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_challenge_target
  L6_2 = L5_2
  L5_2 = L5_2.SetTrigger
  L7_2 = "Succeed"
  L5_2(L6_2, L7_2)
  goto lbl_96
  ::lbl_91::
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_challenge_target
  L6_2 = L5_2
  L5_2 = L5_2.SetTrigger
  L7_2 = "Pending"
  L5_2(L6_2, L7_2)
  ::lbl_96::
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.QuestDataExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.FinishWayExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2.FinishWayID
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_challenge_target
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = "MazeText_Maze_GamePlay_Movie_RewardTarget"
  L10_2 = L6_2.ParamInt1
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.challenge_goods_list_view
  L8_2 = L7_2
  L7_2 = L7_2.SetListItemCount
  L9_2 = A0_2._reward_item_data_list
  L9_2 = #L9_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.challenge_goods_list_view
  L8_2 = L7_2
  L7_2 = L7_2.RefreshAllShownItem
  L7_2(L8_2)
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.CheckShootingLevelIsLockByPreLevel
  L9_2 = L1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_challenge
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_unlock_hint
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2._setup_un_lock_tip
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_normal_mode_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_common_mode_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_end_less_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._cur_select_gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = L1_2.QuestList
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._end_less_reward_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckShootingLevelIsLockByPreLevel
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_un_lock_tip
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_end_less_mode_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleWolfGunPlayLevelExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.GunMode
    L8_2 = #L8_2
    L9_2 = A0_2._gun_play_game_mode
    L9_2 = #L9_2
    if L8_2 == L9_2 then
      L8_2 = {}
      L8_2.maze_puzzle_level_row = L7_2
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.CheckShootingLevelIsLockByPreLevel
      L11_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.is_lock = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1._get_maze_puzzle_level_info_config = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._gun_play_game_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GunPlayModeType
  L2_2 = L2_2.EndLess
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_end_less_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L3_2 = A0_2
  L2_2 = A0_2._get_maze_puzzle_level_info_config
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.is_lock
    if L8_2 == false then
      L1_2 = L6_2
    end
  end
  return L1_2
end
L0_1._get_latest_tab_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = "ChallengeLevelPage_FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._cur_select_gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2.TriggerCustomString
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L1_2.TriggerCustomString
    L2_2(L3_2)
  end
end
L0_1._on_btn_challenge_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckShootingLevelIsLockByPreLevel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_unlock_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "MazeText_Maze_GamePlay_Movie_UnlockHint"
    L6_2 = A1_2.UnlockCondition
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_un_lock_tip = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.ItemID
  L6_2 = A0_2._reward_item_data_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.Count
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count_display
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._reward_item_set
  L7_2 = L7_2[L5_2]
  L8_2 = L2_1
  L9_2 = L8_2
  L8_2 = L8_2.TryGetQuestData
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2.Status
  L10_2 = CS
  L10_2 = L10_2.LEOGBBOPKKO
  L10_2 = L10_2.CMOFEAFMGAK
  if L9_2 == L10_2 then
    L10_2 = L4_2
    L9_2 = L4_2.set_attachment_getted
    L11_2 = true
    L9_2(L10_2, L11_2)
  else
    L10_2 = L4_2
    L9_2 = L4_2.set_attachment_getted
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  return L3_2
end
L0_1._on_goods_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2._is_end_less_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = {}
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MazePuzzleWolfGunPlayLevelExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._gun_play_game_mode
    L4_2 = #L4_2
    L5_2 = A0_2._cur_select_gun_play_level
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L3_2.QuestList
    L4_2 = L4_2(L5_2)
    L5_2 = ipairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L2_1
      L11_2 = L10_2
      L10_2 = L10_2.TryGetQuestData
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = G
      L11_2 = L11_2.RewardUtils
      L11_2 = L11_2.CreateRewardItemTableSorted
      L12_2 = L10_2.RewardID
      L11_2 = L11_2(L12_2)
      L12_2 = ipairs
      L13_2 = L11_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = L16_2.ItemID
        L17_2 = L2_2[L17_2]
        if L17_2 == nil then
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L1_2
          L19_2 = L16_2.ItemID
          L17_2(L18_2, L19_2)
          L17_2 = L16_2.ItemID
          L2_2[L17_2] = true
        end
      end
    end
    return L1_2
  else
    L1_2 = A0_2._reward_item_list
    return L1_2
  end
end
L0_1._get_reward_item_id_list = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
