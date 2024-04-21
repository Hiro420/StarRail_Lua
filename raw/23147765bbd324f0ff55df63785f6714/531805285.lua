local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Quiz.ActivityMonopolyMiniGameQuizPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Quiz.ActivityMonopolyMiniGameQuizPlayerItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Quiz.ActivityMonopolyMiniGameQuizPlayerItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Quiz.ActivityMonopolyMiniGameQuizPlayerIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Quiz.ActivityMonopolyMiniGameQuizPlayerIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyMiniGameQASendPage_FadeIn"
L2_1 = 4
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameQuizPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameQuizPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.GameInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetQuizData
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2.CurrentQuizID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quiz_data = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._quiz_data
  L2_2 = L2_2.QuizTaskIDs
  L1_2 = L1_2(L2_2)
  A0_2._task_ids = L1_2
  L1_2 = {}
  A0_2._chosen_player_ids = L1_2
  A0_2._current_task_index = 1
  A0_2._selected_player_id = 0
  L1_2 = {}
  A0_2._candidate_player_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIRandomUtils
  L1_2 = L1_2.RangeInt
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = L3_2 + 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._talk_index = L1_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_candidate
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_candidate_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_chosen
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_chosen_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_start_chosen
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_start_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameQuizChosen
  L4_2 = A0_2._on_monopoly_quiz_chosen
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
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._task_ids
  L2_2 = A0_2._current_task_index
  L1_2 = L1_2[L2_2]
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._quiz_data
  L4_2 = L3_2
  L3_2 = L3_2.GetTaskCandidatePlayers
  L5_2 = L1_2
  L6_2 = A0_2._chosen_player_ids
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._candidate_player_ids = L2_2
end
L3_1._update_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_candidate_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_chosen_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_talk_view
  L1_2(L2_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quiz_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.QuizName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Game_Quiz_TaskProgress_Num"
  L4_2 = A0_2._current_task_index
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Game_Quiz_TaskProgress"
  L4_2 = A0_2._current_task_index
  L5_2 = A0_2._task_ids
  L5_2 = #L5_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._task_ids
  L2_2 = A0_2._current_task_index
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyQuizTaskConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TaskDesc
  L3_2(L4_2, L5_2)
end
L3_1._refresh_info_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_candidate
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._candidate_player_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_candidate
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._candidate_player_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_candidate
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 == nil then
      break
    end
    L7_2 = L6_2.UserObjectData
    if L7_2 == nil then
      break
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.UserObjectData
    L9_2 = L9_2._binder
    L9_2 = L9_2.btn_root
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._refresh_candidate_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_chosen
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._task_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_chosen
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._refresh_chosen_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = A0_2._selected_player_id
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
end
L3_1._refresh_btn_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_talk
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Game_Quiz_PamTalk"
  L4_2 = A0_2._talk_index
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L3_1._refresh_talk_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ActivityMonopolyMiniGameQuizPlayerItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameQuizPlayerItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_candidate
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._candidate_player_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A0_2._selected_player_id
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._on_candidate_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ActivityMonopolyMiniGameQuizPlayerIconPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameQuizPlayerIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._chosen_player_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_current
  L8_2 = A2_2 + 1
  L9_2 = A0_2._current_task_index
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._on_chosen_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton
  L1_2.freeze = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_start_turn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "MonopolyGameConfig_IntroDesc_10"
  L4_2 = A0_2._quiz_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.Duration
  L4_2 = L4_2 - 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_start_chosen
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._chosen_player_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_start_chosen
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._refresh_start_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyMiniGameQuizPlayerIconPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameQuizPlayerIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._chosen_player_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._on_start_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._chosen_player_ids
  L3_2 = A0_2._chosen_player_ids
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2._selected_player_id
  if L2_2 == L3_2 then
    L2_2 = A0_2._chosen_player_ids
    L3_2 = A0_2._chosen_player_ids
    L3_2 = #L3_2
    L2_2[L3_2] = A1_2
  else
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._chosen_player_ids
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._selected_player_id
  L2_2 = L2_2 ~= A1_2
  A0_2._selected_player_id = A1_2
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._update_random_talk
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_candidate_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_chosen_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_talk_view
  L3_2(L4_2)
end
L3_1._on_click_candidate = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIRandomUtils
  L1_2 = L1_2.RangeInt
  L2_2 = 1
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._talk_index
  L2_2 = L2_2 + L1_2
  L3_2 = L2_1
  L2_2 = L2_2 % L3_2
  A0_2._talk_index = L2_2
  L2_2 = A0_2._talk_index
  if L2_2 == 0 then
    L2_2 = L2_1
    A0_2._talk_index = L2_2
  end
end
L3_1._update_random_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_task_index
  L2_2 = A0_2._task_ids
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.DHEBEMIMJHB
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.SendMonopolyAcceptQuizCsReq
    L3_2 = A0_2._quiz_data
    L3_2 = L3_2.ID
    L4_2 = A0_2._chosen_player_ids
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._current_task_index
    L1_2 = L1_2 + 1
    A0_2._current_task_index = L1_2
    A0_2._selected_player_id = 0
    L2_2 = A0_2
    L1_2 = A0_2._update_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Select"
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimation
    L3_2 = 0
    L4_2 = "Loop"
    L5_2 = true
    L6_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L3_1._on_btn_confirm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._has_started = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_started
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_start_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1._on_monopoly_quiz_chosen = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_started
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L3_1._on_btn_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_candidate
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
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
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._has_started
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.enable_default_short_cut_hint
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Select"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
end
L3_1._refresh_short_cut_hint = L4_1
return L3_1
