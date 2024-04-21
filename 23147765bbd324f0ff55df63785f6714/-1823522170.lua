local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameBingoCPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyCookieDiagramCountOver"
L2_1 = {}
L2_1.Start = 1
L2_1.Progress = 2
L2_1.Finish = 3
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameBingoCPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameBingoCPageBinder
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
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._game_data = A1_2
  L2_2 = A1_2.GameType
  A0_2._game_type = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._game_data
  L3_2 = L3_2.ResourceData
  L2_2 = L2_2(L3_2)
  A0_2._resource_data_table = L2_2
  L2_2 = L0_1.GameInfo
  L2_2 = L2_2.BingoData
  A0_2._bingo_data = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._bingo_data
  L3_2 = L3_2.ResourceIDList
  L2_2 = L2_2(L3_2)
  A0_2._bingo_table = L2_2
  L2_2 = {}
  A0_2._display_resource_id = L2_2
  L2_2 = 1
  L3_2 = A0_2._bingo_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._display_resource_id
    L8_2 = A0_2._game_data
    L8_2 = L8_2.ResourceIDList
    L9_2 = A0_2._bingo_table
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2 - 1
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  A0_2._is_pos_flip = L2_2
  L2_2 = 1
  L3_2 = A0_2._display_resource_id
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._bingo_data
    L6_2 = L6_2.FlipPosList
    L7_2 = L6_2
    L6_2 = L6_2.Contains
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._is_pos_flip
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = {}
  A0_2._active_number = L2_2
  L2_2 = {}
  A0_2._active_pos = L2_2
  L2_2 = A0_2._bingo_data
  L2_2 = L2_2.FlipPosList
  L2_2 = L2_2.Count
  L2_2 = 0 < L2_2
  A0_2._is_in_progress = L2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._game_data
  L4_2 = A0_2._display_resource_id
  L5_2 = A0_2._is_pos_flip
  L6_2 = nil
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.register_start_callback
  L3_2 = A0_2._on_start_btn_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.register_cookie_click_callback
  L3_2 = A0_2._on_cookie_btn_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.register_anim_event_callback
  L3_2 = A0_2._play_count_over
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._bingo_data
  L1_2 = L1_2.IsGameOver
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_game_over
    L1_2(L2_2)
  else
    L1_2 = A0_2._is_in_progress
    if L1_2 then
      L1_2 = L2_1.Progress
      A0_2._state = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._init_game_start_state
      L1_2(L2_2)
    else
      L1_2 = L2_1.Start
      A0_2._state = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_count
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = 4
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameBingoFlipResult
  L4_2 = A0_2._on_bingo_flip
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameBingoFlipResult
  L4_2 = A0_2._on_bingo_flip
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
  return
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._is_pos_flip
  L3_2[A2_2] = true
  A0_2._cur_flip_cookie_index = A2_2
end
L3_1._on_cookie_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.GameInfo
  L1_2 = L1_2.BingoData
  L1_2 = L1_2.IsGameOver
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bingo
  L3_2 = L2_2
  L2_2 = L2_2.flip_cookie
  L4_2 = A0_2._cur_flip_cookie_index
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._active_number
  L4_2 = A0_2._bingo_table
  L5_2 = A0_2._cur_flip_cookie_index
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._active_pos
  L4_2 = A0_2._cur_flip_cookie_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._result
  L3_2 = A0_2._result
  L4_2 = A0_2._bingo_table
  L5_2 = A0_2._cur_flip_cookie_index
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2 * L4_2
  A0_2._result = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_bingo
  L4_2 = L3_2
  L3_2 = L3_2.setup_game_in_progress_result_change
  L5_2 = L2_2
  L6_2 = A0_2._result
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._active_number
  L5_2 = #L5_2
  L5_2 = 4 - L5_2
  L3_2(L4_2, L5_2)
  if L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_game_over
    L3_2(L4_2)
  end
end
L3_1._on_bingo_flip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.Progress
  A0_2._state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_game_start_state
  L1_2(L2_2)
end
L3_1._on_start_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.setup_game_start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.set_result_panel_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._is_pos_flip
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._is_pos_flip
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._active_number
      L7_2 = A0_2._bingo_table
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._active_pos
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._active_number
  L3_2 = #L3_2
  L3_2 = 4 - L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._bingo_data
  L1_2 = L1_2.BaseValue
  A0_2._result = L1_2
  L1_2 = 1
  L2_2 = A0_2._active_number
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._active_number
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._result
    L5_2 = L5_2 * L6_2
    A0_2._result = L5_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.set_result_init_number
  L3_2 = A0_2._result
  L1_2(L2_2, L3_2)
end
L3_1._init_game_start_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.Finish
  A0_2._state = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bingo
  L2_2 = L1_2
  L1_2 = L1_2.setup_game_over
  L3_2 = A0_2._active_pos
  L4_2 = false
  L5_2 = A0_2._result
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._is_game_over = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._is_pos_flip
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._is_pos_flip
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._active_number
      L7_2 = A0_2._bingo_table
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._active_pos
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = 1
  L2_2 = A0_2._active_number
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_num
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_quest
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_num
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_ActivityMonopoly_Game_MonopolyBingoC_TimeValue"
    L8_2 = A0_2._active_number
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_base_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._bingo_data
  L3_2 = L3_2.BaseValue
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_result
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._bingo_data
  L3_2 = L3_2.BaseValue
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_bingo
  L5_2 = L4_2
  L4_2 = L4_2.get_ratio
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L3_1._init_result_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_count
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1._play_count_over = L4_1
return L3_1
