local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ImmediateAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceBossPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceBossPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueAnimationTypeFactory"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = {}
L2_1.DiceTurn = 1
L2_1.DiceEvent = 2
L2_1.MapMain = 3
L2_1.DiceBoss = 4
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
  L3_2 = L3_2.ChessRogueBoardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._modifier_data_item = nil
  A0_2._modifier_select_data = nil
  A0_2._boss_cell_data_item = nil
  A0_2._action_queue = nil
  A0_2._is_playing_pre_move_action = false
  A0_2._is_finish_pre_move_action = false
  A0_2._pre_move_cell_change_data = nil
  A0_2._dice_event_cell_change_data = nil
  A0_2._dice_roll_cell_change_data = nil
  A0_2._aeon_cell_change_data = nil
  A0_2._board_event_cell_change_data = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L2_1.MapMain
  end
  A0_2._cur_page_tab = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = "DiceMainConsolePanel_FadeIn"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_finish_dice_turn_to_map_main
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = "DiceStage_EventToConsole"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_finish_dice_event_to_map_main
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ConfirmChessRogueRollDice
  L4_2 = L0_1._on_confirm_roll_dice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRogueModifierSelectCellRsp
  L4_2 = L0_1._on_modifier_select_cell_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueSelectCellRsp
  L4_2 = L0_1._on_select_cell_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowChessRogueBossSelect
  L4_2 = L0_1._on_show_boss_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueActionPointUpdate
  L4_2 = L0_1._on_action_point_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueAeonModifierValueUpdate
  L4_2 = L0_1._on_aeon_modifier_value_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueDLC1Dot3EnterCell
  L4_2 = L0_1._on_click_to_enter_cell
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueModifierStart
  L4_2 = L0_1._on_chess_rogue_modifier_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueModifierChangeCell
  L4_2 = L0_1._on_chess_rogue_cell_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickChessRogueBoardCell
  L4_2 = L0_1._on_click_cell
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshBoardCellSelected
  L4_2 = L0_1._on_refresh_cell_selected
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueLeftStickInput
  L4_2 = L0_1._on_chess_rogue_left_stick_input
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowChessRogueShortCutWheelDialog
  L4_2 = L0_1._on_show_chess_rogue_short_cut_wheel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshRogueCoin
  L4_2 = L0_1._on_rogue_coin_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L0_1._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueBuffSelect
  L4_2 = L0_1._on_trigger_rogue_buff_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueMiracleSelect
  L4_2 = L0_1._on_trigger_rogue_miracle_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueBuffReward
  L4_2 = L0_1._on_get_rogue_buff_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpRogueBuffLevelReward
  L4_2 = L0_1._on_up_rogue_buff_level_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueMiracleReward
  L4_2 = L0_1._on_get_rogue_miracle_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueCommonDisplay
  L4_2 = L0_1._show_common_display_dialog
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_nous_value_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_view
  L3_2 = A0_2._cur_page_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_notify_tutorial
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_frame
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_board_frame
    L2_2 = L1_2
    L1_2 = L1_2.reset_title_fade_in
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurChessRogueBoardDataItem
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.TutorialTaskUnlock
    L5_2 = "RogueDLC_ChessBoard_"
    L6_2 = tostring
    L7_2 = L2_2.ChessBoardID
    L6_2 = L6_2(L7_2)
    L7_2 = "_"
    L8_2 = tostring
    L9_2 = L2_2.CurCellID
    L8_2 = L8_2(L9_2)
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_notify_tutorial = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_hud_panel_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.DiceTurn
  L2_2 = A1_2 ~= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_board_frame
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_turn
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_1.DiceTurn
  L5_2 = A1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_event
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_1.DiceEvent
  L5_2 = A1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_map_main
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_1.MapMain
  L5_2 = A1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.panel_dice_boss
  if L3_2 ~= nil then
    L3_2 = A0_2.panel_dice_boss
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = L2_1.DiceBoss
    L5_2 = A1_2 == L5_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_1.DiceTurn
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_dice_turn
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_board_frame
    L4_2 = L3_2
    L3_2 = L3_2.setup_res_bar
    L3_2(L4_2)
    L3_2 = A0_2._nous_value_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._nous_value_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = L2_1.DiceEvent
    if A1_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_dice_event
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L3_2(L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_board_frame
      L4_2 = L3_2
      L3_2 = L3_2.show_dice_event_nodes
      L3_2(L4_2)
      L3_2 = A0_2._nous_value_panel
      if L3_2 ~= nil then
        L3_2 = A0_2._nous_value_panel
        L4_2 = L3_2
        L3_2 = L3_2.safe_set_active
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_dice_event
      L6_2 = L5_2
      L5_2 = L5_2.get_first_selected_object
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = L2_1.MapMain
      if A1_2 == L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.panel_map_main
        L4_2 = L3_2
        L3_2 = L3_2.setup_view
        L5_2 = L1_1.ChessRogueData
        L7_2 = A0_2
        L6_2 = A0_2._get_switch_to_map_main_cell_change_data
        L6_2, L7_2 = L6_2(L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L4_2 = A0_2
        L3_2 = A0_2._try_set_aeon_modifier_pre_value
        L3_2(L4_2)
        L4_2 = A0_2
        L3_2 = A0_2._try_set_action_point_pre_value
        L3_2(L4_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.panel_board_frame
        L4_2 = L3_2
        L3_2 = L3_2.show_map_main_nodes
        L3_2(L4_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.panel_board_frame
        L4_2 = L3_2
        L3_2 = L3_2.setup_bubble_state
        L5_2 = "bubbleChoose"
        L6_2 = false
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A0_2._nous_value_panel
        if L3_2 ~= nil then
          L3_2 = A0_2._nous_value_panel
          L4_2 = L3_2
          L3_2 = L3_2.safe_set_active
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = A0_2._binder
        L5_2 = L5_2.panel_map_main
        L6_2 = L5_2
        L5_2 = L5_2.get_first_selected_object
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = L2_1.DiceBoss
        if A1_2 == L3_2 then
          L3_2 = A0_2.panel_dice_boss
          if L3_2 == nil then
            L4_2 = A0_2
            L3_2 = A0_2._create_dice_boss_panel
            L3_2 = L3_2(L4_2)
            A0_2.panel_dice_boss = L3_2
          end
          L3_2 = A0_2.panel_dice_boss
          L4_2 = L3_2
          L3_2 = L3_2.setup_view
          L5_2 = A0_2._boss_cell_data_item
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._binder
          L3_2 = L3_2.panel_board_frame
          L4_2 = L3_2
          L3_2 = L3_2.show_dice_boss_nodes
          L3_2(L4_2)
          L3_2 = A0_2._nous_value_panel
          if L3_2 ~= nil then
            L3_2 = A0_2._nous_value_panel
            L4_2 = L3_2
            L3_2 = L3_2.safe_set_active
            L5_2 = false
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L0_1._refresh_panel_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._pre_move_cell_change_data
  if L1_2 ~= nil then
    L1_2 = A0_2._pre_move_cell_change_data
    return L1_2
  end
  L1_2 = A0_2._dice_event_cell_change_data
  if L1_2 ~= nil then
    L1_2 = A0_2._dice_event_cell_change_data
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_switch_to_map_main_cell_change_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L2_1.DiceTurn
  L2_2 = A1_2 ~= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hud_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_team
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.ChessRogueModule
    L4_2 = L3_2
    L3_2 = L3_2.GetChessBoardPageFuncEntranceList
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.System
    L4_2 = L4_2.Collections
    L4_2 = L4_2.Generic
    L4_2 = L4_2.List
    L5_2 = CS
    L5_2 = L5_2.System
    L5_2 = L5_2.UInt32
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2()
    L5_2 = 0
    L6_2 = L3_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2[L8_2]
      L9_2 = L9_2.UnlockID
      if L9_2 ~= 0 then
        L10_2 = L4_2
        L9_2 = L4_2.Add
        L11_2 = L3_2[L8_2]
        L11_2 = L11_2.UnlockID
        L9_2(L10_2, L11_2)
      end
    end
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.SystemOpenModule
    L6_2 = L5_2
    L5_2 = L5_2.ConditionPrepared
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.ThenLuaAction
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_top_func_entrances_panel
      L0_3(L1_3)
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_hud_panel_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetChessBoardPageFuncEntranceList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.UnlockID
    if L7_2 ~= 0 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.SystemOpenModule
      L7_2 = L7_2.IsOpen
      L8_2 = L1_2[L6_2]
      L8_2 = L8_2.UnlockID
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        goto lbl_34
      end
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2)
    ::lbl_34::
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.top_func_entrances_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_top_func_entrances_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.ChessRogueData
  L2_2 = L1_2.DiceInfo
  if L2_2 ~= nil then
    L3_2 = L2_2.DiceModifiers
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = nil
  ::lbl_9::
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if not (L4_2 <= 0) then
      goto lbl_16
    end
  end
  L4_2 = nil
  L5_2 = nil
  do return L4_2, L5_2 end
  ::lbl_16::
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.GetRogueModifierSelectData
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = L3_2[L7_2]
      L10_2 = L8_2
      return L9_2, L10_2
    end
  end
  L4_2 = L3_2[0]
  L5_2 = nil
  return L4_2, L5_2
end
L0_1._get_show_dice_modifier_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ChessRogueData
  L2_2 = L1_2.AeonInfo
  L2_2 = L2_2.SelectedAeonData
  if L2_2 ~= nil then
    L3_2 = L2_2.EffectType3
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_aeon_modifier_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._modifier_data_item = A1_2
  A0_2._modifier_select_data = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_event
  L4_2 = L3_2
  L3_2 = L3_2.init_data
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_1.DiceEvent
  A0_2._cur_page_tab = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_panel_view
  L5_2 = A0_2._cur_page_tab
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_switch_dice_to_event
  L3_2(L4_2)
end
L0_1._switch_page_dice_turn_to_dice_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.MapMain
  A0_2._cur_page_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_view
  L3_2 = A0_2._cur_page_tab
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_map_main
  L2_2 = L1_2
  L1_2 = L1_2.on_input_lock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_dice_to_main
  L1_2(L2_2)
end
L0_1._switch_page_dice_turn_to_map_main = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.MapMain
  A0_2._cur_page_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_view
  L3_2 = A0_2._cur_page_tab
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_map_main
  L2_2 = L1_2
  L1_2 = L1_2.on_input_lock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_event_to_main
  L1_2(L2_2)
end
L0_1._switch_page_dice_event_to_map_main = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_action_point_change
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_aeon_modifier_change_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_pre_move_action
  L1_2(L2_2)
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.has_left_action
    L1_2 = L1_2(L2_2)
    if L1_2 ~= false then
      goto lbl_18
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_pre_move_action_finished
  L1_2(L2_2)
  goto lbl_29
  ::lbl_18::
  L2_2 = A0_2
  L1_2 = A0_2._set_is_playing_pre_move_action
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.set_queue_finished_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_pre_move_action_finished
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.start_do_action
  L1_2(L2_2)
  ::lbl_29::
end
L0_1._on_finish_dice_turn_to_map_main = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_aeon_modifier_change_effect
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_map_main
  L2_2 = L1_2
  L1_2 = L1_2.on_input_unlock
  L1_2(L2_2)
end
L0_1._on_finish_dice_event_to_map_main = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._boss_cell_data_item = A1_2
  L2_2 = L2_1.DiceBoss
  A0_2._cur_page_tab = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_panel_view
  L4_2 = A0_2._cur_page_tab
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_switch_main_to_boss
  L2_2(L3_2)
end
L0_1._switch_page_map_main_to_boss_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._nous_value_panel = L1_2
  L1_2 = A0_2._nous_value_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._nous_value_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_handle_update_notify
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_nous_value_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_coin_change_num
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_coin_change_num
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_board_frame
      L2_2 = L1_2
      L1_2 = L1_2.play_anim_res_change
      L3_2 = A0_2._rogue_coin_change_num
      L1_2(L2_2, L3_2)
      A0_2._rogue_coin_change_num = 0
    end
  end
end
L0_1.try_play_coin_refresh_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_frame
  L2_2 = L1_2
  L1_2 = L1_2.setup_res_bar
  L1_2(L2_2)
end
L0_1.refresh_res_bar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_show_dice_modifier_data
  L1_2, L2_2 = L1_2(L2_2)
  A0_2._modifier_data_item = L1_2
  if L2_2 ~= nil then
    L3_2 = L2_2.IsSelected
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._switch_page_dice_turn_to_dice_event
      L5_2 = L1_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2._switch_page_dice_turn_to_map_main
    L3_2(L4_2)
  end
end
L0_1._on_confirm_roll_dice = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._on_modifier_event_action_finished
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_add_elation_random_result_action
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_add_dice_event_action
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_add_reward_dialog_action
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._action_queue
    L3_2 = L2_2
    L2_2 = L2_2.set_queue_finished_callback
    L4_2 = A0_2
    L5_2 = A0_2._on_modifier_event_action_finished
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._action_queue
    L3_2 = L2_2
    L2_2 = L2_2.start_do_action
    L2_2(L3_2)
  end
end
L0_1._on_modifier_select_cell_rsp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_map_main
  L3_2 = L2_2
  L2_2 = L2_2.on_select_cell_rsp
  L2_2(L3_2)
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_add_select_action
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.set_queue_finished_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_select_action_finished
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.start_do_action
  L2_2(L3_2)
end
L0_1._on_select_cell_rsp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._switch_page_map_main_to_boss_select
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_show_boss_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceTurn
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_turn
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_dice_turn
      L3_2 = L2_2
      L2_2 = L2_2.is_active
      L2_2 = L2_2(L3_2)
      if L2_2 then
        A0_2._pre_action_point = A1_2
      end
    end
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.MapMain
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_map_main
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_map_main
      L3_2 = L2_2
      L2_2 = L2_2.is_active
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._need_play_point_change_on_move
        if L2_2 ~= true then
          A0_2._point_num_before_move = A1_2
        end
        A0_2._need_play_point_change_on_move = true
      end
    end
  end
end
L0_1._on_action_point_update = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.MapMain
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.is_active
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._action_queue
        if L1_2 ~= nil then
          L1_2 = A0_2._action_queue
          L2_2 = L1_2
          L1_2 = L1_2.is_doing
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            goto lbl_38
          end
        end
        L1_2 = L1_1
        L2_2 = L1_2
        L1_2 = L1_2.SetShowAeonModifierChangeEffect
        L1_2(L2_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_map_main
        L2_2 = L1_2
        L1_2 = L1_2.setup_aeon_progress_view
        L3_2 = L1_1.ChessRogueData
        L3_2 = L3_2.DiceInfo
        L1_2(L2_2, L3_2)
        goto lbl_39
        ::lbl_38::
        A0_2._need_play_aeon_modifier_value_change = true
      end
    end
  end
  ::lbl_39::
end
L0_1._on_aeon_modifier_value_update = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceEvent
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_event
    L3_2 = L2_2
    L2_2 = L2_2._on_click_cell
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._cur_page_tab
    L3_2 = L2_1.MapMain
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_map_main
      L3_2 = L2_2
      L2_2 = L2_2._on_click_cell
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_cell = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.DiceEvent
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_dice_event
    L2_2 = L1_2
    L1_2 = L1_2._on_refresh_cell_selected
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_page_tab
    L2_2 = L2_1.MapMain
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2._on_refresh_cell_selected
      L1_2(L2_2)
    end
  end
end
L0_1._on_refresh_cell_selected = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._on_click_to_enter_cell = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceEvent
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._cur_page_tab
    L3_2 = L2_1.MapMain
    if L2_2 ~= L3_2 then
      goto lbl_25
    end
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.EmptyAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_action_name
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  ::lbl_25::
end
L0_1._on_chess_rogue_modifier_start = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.ModifierSourceType
  L3_2 = A0_2._cur_page_tab
  L4_2 = L2_1.DiceTurn
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.LCMLACLKNDI
    L3_2 = L3_2.OGMDHDMDJEB
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_merge_cell_change_data
      L5_2 = A0_2._pre_move_cell_change_data
      L6_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._pre_move_cell_change_data = L3_2
      return
    end
  end
  L3_2 = A0_2._cur_page_tab
  L4_2 = L2_1.DiceEvent
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.LCMLACLKNDI
    L3_2 = L3_2.OGMDHDMDJEB
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_merge_cell_change_data
      L5_2 = A0_2._dice_event_cell_change_data
      L6_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._dice_event_cell_change_data = L3_2
      return
    end
  end
  L3_2 = A0_2._cur_page_tab
  L4_2 = L2_1.MapMain
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.LCMLACLKNDI
    L3_2 = L3_2.OGMDHDMDJEB
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_merge_cell_change_data
      L5_2 = A0_2._dice_roll_cell_change_data
      L6_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._dice_roll_cell_change_data = L3_2
    end
    L3_2 = CS
    L3_2 = L3_2.LCMLACLKNDI
    L3_2 = L3_2.GLLBDAOAGOG
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_merge_cell_change_data
      L5_2 = A0_2._aeon_cell_change_data
      L6_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._aeon_cell_change_data = L3_2
    end
    L3_2 = CS
    L3_2 = L3_2.LCMLACLKNDI
    L3_2 = L3_2.MGMLDOFAHAD
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._check_action_queue_is_doing
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._try_add_board_event_cell_change_action
        L5_2 = A1_2
        L6_2 = A0_2._board_event_effect_type
        L3_2(L4_2, L5_2, L6_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._try_merge_cell_change_data
        L5_2 = A0_2._board_event_cell_change_data
        L6_2 = A1_2
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        A0_2._board_event_cell_change_data = L3_2
      end
    end
  end
end
L0_1._on_chess_rogue_cell_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.Merge
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    return A1_2
  else
    return A2_2
  end
end
L0_1._try_merge_cell_change_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.is_doing
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1._check_action_queue_is_doing = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.TopPage
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.ChildDialogs
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TopPage
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.ChildDialogs
      L2_2 = L2_2.Count
      if L2_2 ~= 0 then
        goto lbl_31
      end
    end
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    A0_2._rogue_coin_change_num = L2_2
  ::lbl_31::
  else
    L3_2 = A0_2
    L2_2 = A0_2.refresh_res_bar
    L2_2(L3_2)
  end
end
L0_1._on_rogue_coin_refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "ShowBubbleGo" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_frame
    L3_2 = L2_2
    L2_2 = L2_2.play_map_main_title_fade_in
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_frame
    L3_2 = L2_2
    L2_2 = L2_2.play_bubble_fade_animation
    L4_2 = "bubbleGo"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "ShowBubbleChoose" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_frame
    L3_2 = L2_2
    L2_2 = L2_2.play_dice_event_title_fade_in
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_event
    L3_2 = L2_2
    L2_2 = L2_2.has_cell_can_select
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_board_frame
      L3_2 = L2_2
      L2_2 = L2_2.play_bubble_fade_animation
      L4_2 = "bubbleChoose"
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  if A1_2 == "ChessRogueBoxEventInfo" then
    L2_2 = A0_2._binder
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_map_main
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.panel_map_main
        L3_2 = L2_2
        L2_2 = L2_2.is_active
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.panel_map_main
          L3_2 = L2_2
          L2_2 = L2_2.setup_aeon_progress_view
          L4_2 = L1_1.ChessRogueData
          L4_2 = L4_2.DiceInfo
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._on_ui_animation_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_animation
  L3_2 = "DiceMainEventPanel_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._play_switch_dice_to_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_animation
  L3_2 = "DiceMainConsolePanel_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._play_switch_dice_to_main = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_animation
  L3_2 = "DiceStage_EventToConsole"
  L1_2(L2_2, L3_2)
end
L0_1._play_switch_event_to_main = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_switch_animation
  L3_2 = "DiceStage_ConsoleToBoss"
  L1_2(L2_2, L3_2)
end
L0_1._play_switch_main_to_boss = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation_root
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L2_2(L3_2, L4_2)
end
L0_1._play_switch_animation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ActionQueue
    L1_2 = L1_2(L2_2)
    A0_2._action_queue = L1_2
  else
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
end
L0_1._init_action_queue = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
end
L0_1.init_modifer_event_action_queue = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice_event
  L2_2 = L1_2
  L1_2 = L1_2.get_elation_random_animation_action
  L3_2 = A0_2._modifier_data_item
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.get_action_pos
  L4_2 = CS
  L4_2 = L4_2.LCMLACLKNDI
  L4_2 = L4_2.OGMDHDMDJEB
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.insert_action
    L5_2 = L1_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_add_elation_random_result_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._dice_event_cell_change_data
  if L1_2 ~= nil then
    L1_2 = A0_2._dice_event_cell_change_data
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._try_add_modifier_event_action
      L3_2 = A0_2._dice_event_cell_change_data
      L4_2 = A0_2._modifier_data_item
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  A0_2._dice_event_cell_change_data = nil
end
L0_1._try_add_dice_event_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeEndOfFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_active
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._switch_page_dice_event_to_map_main
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2)
end
L0_1._on_modifier_event_action_finished = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
end
L0_1.init_pre_move_action_queue = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pre_move_cell_change_data
  if L1_2 ~= nil then
    L1_2 = A0_2._modifier_data_item
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._try_add_modifier_event_action
      L3_2 = A0_2._pre_move_cell_change_data
      L4_2 = A0_2._modifier_data_item
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  A0_2._pre_move_cell_change_data = nil
end
L0_1._try_add_pre_move_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_finish_pre_move_action = true
  L2_2 = A0_2
  L1_2 = A0_2._set_is_playing_pre_move_action
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.try_play_coin_refresh_anim
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_map_main
  L2_2 = L1_2
  L1_2 = L1_2.on_input_unlock
  L1_2(L2_2)
end
L0_1._on_pre_move_action_finished = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_playing_pre_move_action = A1_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_root
    L3_2 = A0_2._is_playing_pre_move_action
    L3_2 = not L3_2
    L2_2.blocksRaycasts = L3_2
  end
end
L0_1._set_is_playing_pre_move_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
end
L0_1.init_select_action_queue = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._is_board_event_change_action_point
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_add_move_action
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_add_after_move_action
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_add_board_event_action
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_add_delay_point_change_action
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_add_select_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 ~= nil
  return L2_2
end
L0_1._is_board_event_change_action_point = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._need_play_point_change_on_move
  if L2_2 then
    L2_2 = not A1_2
  end
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._create_point_change_action
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.init_call_back_rogue_coin_refresh
    L6_2 = A0_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_map_main
      L1_3 = L0_3
      L0_3 = L0_3.play_location_move_animation
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.try_play_coin_refresh_anim
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_show_aeon_modifier_change_effect
      L0_3(L1_3)
    end
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._action_queue
    L5_2 = L4_2
    L4_2 = L4_2.insert_action
    L6_2 = L3_2
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._try_create_point_toast_action
    L6_2 = A0_2._point_num_before_move
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = A0_2._action_queue
      L6_2 = L5_2
      L5_2 = L5_2.insert_action
      L7_2 = L4_2
      L8_2 = 2
      L5_2(L6_2, L7_2, L8_2)
    end
    return
  end
  L3_2 = nil
  L4_2 = A0_2._need_play_aeon_modifier_value_change
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_map_main
    L5_2 = L4_2
    L4_2 = L4_2.get_aeon_progress_change_action
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.SetShowAeonModifierChangeEffect
    L4_2(L5_2)
  end
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.init_call_back_rogue_coin_refresh
    L6_2 = A0_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_map_main
      L1_3 = L0_3
      L0_3 = L0_3.play_location_move_animation
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.try_play_coin_refresh_anim
      L0_3(L1_3)
    end
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._action_queue
    L5_2 = L4_2
    L4_2 = L4_2.insert_action
    L6_2 = L3_2
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_map_main
  L5_2 = L4_2
  L4_2 = L4_2.get_location_move_animation_action
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init_call_back_rogue_coin_refresh
  L7_2 = A0_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.try_play_coin_refresh_anim
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._action_queue
  L6_2 = L5_2
  L5_2 = L5_2.insert_action
  L7_2 = L4_2
  L8_2 = 1
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._try_add_move_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._dice_roll_cell_change_data
  if L1_2 ~= nil then
    L1_2 = A0_2._modifier_data_item
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._try_add_modifier_event_action
      L3_2 = A0_2._dice_roll_cell_change_data
      L4_2 = A0_2._modifier_data_item
      L1_2(L2_2, L3_2, L4_2)
      A0_2._dice_roll_cell_change_data = nil
    end
  end
  L1_2 = A0_2._aeon_cell_change_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._try_add_cell_change_action
    L3_2 = A0_2._aeon_cell_change_data
    L5_2 = A0_2
    L4_2 = A0_2._get_aeon_modifier_type
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._aeon_cell_change_data = nil
  end
end
L0_1._try_add_after_move_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.BoardEventId
  end
  L3_2 = A1_2 or L3_2
  if A1_2 then
    L3_2 = A1_2.ModifierEffectType
  end
  A0_2._board_event_effect_type = L3_2
  if L2_2 ~= nil and 0 < L2_2 then
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.DialogAction
    L6_2 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueModifierDialog"
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = L4_2
    L5_2 = L4_2.init
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.new
    L6_2 = G
    L6_2 = L6_2.ImmediateAction
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_callback
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._nous_value_panel
      if L0_3 ~= nil then
        L0_3 = A0_2._nous_value_panel
        L1_3 = L0_3
        L0_3 = L0_3.refresh_cur_value
        L2_3 = false
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    L6_2(L7_2, L8_2)
    L6_2 = nil
    L7_2 = A0_2._board_event_cell_change_data
    if L7_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._try_get_cell_change_action
      L9_2 = A0_2._board_event_cell_change_data
      L10_2 = L3_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
      A0_2._board_event_cell_change_data = nil
    end
    L7_2 = A0_2._action_queue
    L8_2 = L7_2
    L7_2 = L7_2.get_action_pos
    L9_2 = CS
    L9_2 = L9_2.LCMLACLKNDI
    L9_2 = L9_2.MGMLDOFAHAD
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.insert_action
      L10_2 = L4_2
      L11_2 = L7_2 + 1
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.insert_action
      L10_2 = L5_2
      L11_2 = L7_2 + 2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.insert_action
      L10_2 = L6_2
      L11_2 = L7_2 + 3
      L8_2(L9_2, L10_2, L11_2)
    else
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.add_action
      L10_2 = L4_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.add_action
      L10_2 = L5_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.add_action
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
    if L6_2 ~= nil then
      L8_2 = A0_2._action_queue
      L9_2 = L8_2
      L8_2 = L8_2.add_action
      L10_2 = G
      L10_2 = L10_2.new
      L11_2 = G
      L11_2 = L11_2.WaitSecondAction
      L12_2 = 0.5
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1._try_add_board_event_action = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._action_queue
  if L3_2 == nil then
    return
  end
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_get_cell_change_action
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._action_queue
  L5_2 = L4_2
  L4_2 = L4_2.add_action
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._action_queue
  L5_2 = L4_2
  L4_2 = L4_2.add_action
  L6_2 = G
  L6_2 = L6_2.new
  L7_2 = G
  L7_2 = L7_2.WaitSecondAction
  L8_2 = 0.5
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._try_add_board_event_cell_change_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._need_play_point_change_on_move
  if L2_2 then
    L2_2 = A1_2
  end
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._create_point_change_action
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.init_call_back_rogue_coin_refresh
    L6_2 = A0_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.try_play_coin_refresh_anim
      L0_3(L1_3)
    end
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._action_queue
    L5_2 = L4_2
    L4_2 = L4_2.add_action
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._try_create_point_toast_action
    L6_2 = A0_2._point_num_before_move
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = A0_2._action_queue
      L6_2 = L5_2
      L5_2 = L5_2.add_action
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
    return
  end
end
L0_1._try_add_delay_point_change_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.confirm_to_enter_cell
      L1_2(L2_2)
    end
  end
end
L0_1._on_select_action_finished = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    return
  end
  L4_2 = A2_2
  L3_2 = A2_2.GetRogueModifierEffectType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_add_cell_change_action
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._try_add_modifier_event_action = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    return
  end
  L3_2 = A0_2._action_queue
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_get_cell_change_action
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._action_queue
  L5_2 = L4_2
  L4_2 = L4_2.get_action_pos
  L6_2 = A1_2.ModifierSourceType
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._action_queue
    L6_2 = L5_2
    L5_2 = L5_2.insert_action
    L7_2 = L3_2
    L8_2 = L4_2 + 1
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2._action_queue
    L6_2 = L5_2
    L5_2 = L5_2.add_action
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._try_add_cell_change_action = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2 ~= nil and L3_2
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if L4_2 ~= 0 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L5_2 = A0_2
  L4_2 = A0_2.get_map_panel
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.ChessRogueModule
  L6_2 = L5_2
  L5_2 = L5_2.GetCurSubMode
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.ChessRogueAnimationTypeFactory
  L6_2 = L6_2.get_animation_type_for_dice_effect
  L7_2 = A2_2
  L8_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 == nil then
    return
  end
  L9_2 = L4_2
  L8_2 = L4_2.get_animation_action
  L10_2 = L3_2
  L11_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L8_2 ~= nil and L7_2 then
    L10_2 = L8_2
    L9_2 = L8_2.init_call_back_rogue_coin_refresh
    L11_2 = A0_2
    L12_2 = A0_2.try_play_coin_refresh_anim
    L9_2(L10_2, L11_2, L12_2)
  end
  return L8_2
end
L0_1._try_get_cell_change_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_frame
  L2_2 = L1_2
  L1_2 = L1_2.get_map_panel
  return L1_2(L2_2)
end
L0_1.get_map_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_frame
  L3_2 = L2_2
  L2_2 = L2_2.get_cell_panel
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_cell_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.RewardDialogAction
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ConfigID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HGGDPEHMDBH
    L9_2 = L9_2.NIBJBHPOFNO
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      A0_2._rogue_coin_change_num = 0
      L8_2 = L2_2
      L7_2 = L2_2.init_call_back
      L9_2 = A0_2
      L10_2 = A0_2.refresh_res_bar
      L7_2(L8_2, L9_2, L10_2)
      break
    end
  end
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_add_reward_dialog_action = L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.DialogAction
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = ...
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_dialog_action = L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_dialog_action
  L4_2 = A1_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = "RogueDisplay"
  L5_2 = L2_2
  L4_2 = L2_2.set_action_name
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._action_queue
  L5_2 = L4_2
  L4_2 = L4_2.is_doing
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._action_queue
    L5_2 = L4_2
    L4_2 = L4_2.get_action_last_pos
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2 + 1
      if L5_2 then
        goto lbl_28
      end
    end
    L5_2 = 1
    ::lbl_28::
    L6_2 = A0_2._action_queue
    L7_2 = L6_2
    L6_2 = L6_2.insert_action
    L8_2 = L2_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2._action_queue
    L5_2 = L4_2
    L4_2 = L4_2.add_action
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  return L2_2
end
L0_1._try_add_rogue_display_dialog_action = L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_dialog_action
  L4_2 = A1_2
  L5_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_sysc_load
  L3_2(L4_2)
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._try_add_rogue_select_dialog_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Item1
  L4_2 = A0_2
  L3_2 = A0_2._try_add_rogue_display_dialog_action
  L5_2 = "Ui.Rogue.Buff.RogueBuffGetDialog"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_get_rogue_buff_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Item1
  L4_2 = A0_2
  L3_2 = A0_2._try_add_rogue_display_dialog_action
  L5_2 = "Ui.Rogue.Buff.RogueEnhanceBuffResultDialog"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_up_rogue_buff_level_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.Item1
  L3_2 = A1_2.Item4
  L5_2 = A0_2
  L4_2 = A0_2._try_add_rogue_display_dialog_action
  L6_2 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
  L7_2 = L2_2
  L8_2 = false
  L9_2 = L3_2
  L10_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_sysc_load
  L5_2(L6_2)
end
L0_1._on_get_rogue_miracle_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueCommonDisplayType
  L3_2 = L3_2.Get
  if L2_2 == L3_2 then
    L2_2 = A1_2.DisplayItemList
    if L2_2 ~= nil then
      L2_2 = A1_2.DisplayItemList
      L2_2 = L2_2.Count
      if 0 < L2_2 then
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2._try_add_rogue_display_dialog_action
      L4_2 = "Ui.RogueCommon.RandomEvent.RogueCommonGetDialog"
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.RogueCommonDisplayType
    L3_2 = L3_2.Drop
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._try_add_rogue_display_dialog_action
      L4_2 = "Ui.RogueCommon.RandomEvent.RogueCommonDropDialog"
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.RogueCommonDisplayType
      L3_2 = L3_2.RepairMiracle
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._try_add_rogue_display_dialog_action
        L4_2 = "Ui.RogueCommon.RandomEvent.RogueCommonRepairMiracleDialog"
        L5_2 = A1_2
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.RogueCommonDisplayType
        L3_2 = L3_2.GetDestroyedMiracle
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._try_add_rogue_display_dialog_action
          L4_2 = "Ui.RogueCommon.RandomEvent.RogueCommonGetDialog"
          L5_2 = A1_2
          L6_2 = "UIText_RogueNous_Get_Broken_Miracle_Hint_1"
          L2_2(L3_2, L4_2, L5_2, L6_2)
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.RogueCommonDisplayType
          L3_2 = L3_2.DestroyMiracle
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._try_add_rogue_display_dialog_action
            L4_2 = "Ui.RogueCommon.RandomEvent.RogueCommonDropDialog"
            L5_2 = A1_2
            L6_2 = "UIText_RogueNous_Miracle_Broken_Hint_1"
            L2_2(L3_2, L4_2, L5_2, L6_2)
          end
        end
      end
    end
  end
end
L0_1._show_common_display_dialog = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._try_add_rogue_select_dialog_action
  L4_2 = "Ui.Rogue.Buff.RogueSelectBuffPage"
  L5_2 = A1_2
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_trigger_rogue_buff_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._try_add_rogue_select_dialog_action
  L4_2 = "Ui.Rogue.Miracle.RogueSelectMiraclePage"
  L5_2 = A1_2
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_trigger_rogue_miracle_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WaitSecondAction
  L3_2 = 1
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_map_main
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_map_main
        L1_3 = L0_3
        L0_3 = L0_3.is_active
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = A0_2._binder
          L0_3 = L0_3.panel_map_main
          L1_3 = L0_3
          L0_3 = L0_3.setup_action_point_view
          L0_3(L1_3)
          L0_3 = A0_2._binder
          L0_3 = L0_3.panel_map_main
          L1_3 = L0_3
          L0_3 = L0_3.play_action_point_reduce_animation
          L0_3(L1_3)
        end
      end
    end
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  return L1_2
end
L0_1._create_point_change_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil and 0 <= A1_2 then
    L2_2 = L1_1.ChessRogueData
    L2_2 = L2_2.AreaInfo
    L2_2 = L2_2.CurActionPoint
    if L2_2 < 0 then
      L4_2 = A0_2
      L3_2 = A0_2._create_dialog_action
      L5_2 = "Ui.RogueDLC.ChessRogue.Toast.ChessRogueActionPointToastDialog"
      return L3_2(L4_2, L5_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._try_create_point_toast_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.MapMain
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.is_active
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._pre_action_point
        if L1_2 ~= nil then
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_map_main
          L2_2 = L1_2
          L1_2 = L1_2.setup_action_point_view
          L3_2 = A0_2._pre_action_point
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1._try_set_action_point_pre_value = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.MapMain
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.is_active
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._pre_action_point
        if L1_2 ~= nil then
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_map_main
          L2_2 = L1_2
          L1_2 = L1_2.setup_action_point_view
          L1_2(L2_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_map_main
          L2_2 = L1_2
          L1_2 = L1_2.play_action_point_reduce_animation
          L1_2(L2_2)
          A0_2._pre_action_point = nil
        end
      end
    end
  end
end
L0_1._try_show_action_point_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.MapMain
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.is_active
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L1_1
        L2_2 = L1_2
        L1_2 = L1_2.NeedShowAeonModifierChangeEffect
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_map_main
          L2_2 = L1_2
          L1_2 = L1_2.setup_aeon_progress_view
          L3_2 = L1_1.ChessRogueData
          L3_2 = L3_2.DiceInfo
          L4_2 = L1_1
          L5_2 = L4_2
          L4_2 = L4_2.GetPreAeonModifierValue
          L4_2, L5_2 = L4_2(L5_2)
          L1_2(L2_2, L3_2, L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._try_set_aeon_modifier_pre_value = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_page_tab
  L2_2 = L2_1.MapMain
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_map_main
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_map_main
      L2_2 = L1_2
      L1_2 = L1_2.is_active
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L1_1
        L2_2 = L1_2
        L1_2 = L1_2.NeedShowAeonModifierChangeEffect
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = L1_1
          L2_2 = L1_2
          L1_2 = L1_2.SetShowAeonModifierChangeEffect
          L1_2(L2_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_map_main
          L2_2 = L1_2
          L1_2 = L1_2.play_aeon_progress_change_effect
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._try_show_aeon_modifier_change_effect = L4_1
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
  local L1_2
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
  local L1_2
end
L0_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_leave_special_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceEvent
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_event
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_dice_event
      L3_2 = L2_2
      L2_2 = L2_2._on_chess_rogue_left_stick_input
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.MapMain
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_map_main
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_map_main
      L3_2 = L2_2
      L2_2 = L2_2._on_chess_rogue_left_stick_input
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_chess_rogue_left_stick_input = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceEvent
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_event
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L1_2 = true
    end
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.MapMain
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_map_main
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L1_2 = true
    end
  end
  L2_2 = A0_2._cur_page_tab
  L3_2 = L2_1.DiceBoss
  if L2_2 == L3_2 then
    L2_2 = A0_2.panel_dice_boss
    if L2_2 ~= nil then
      L2_2 = A0_2.panel_dice_boss
      L3_2 = L2_2
      L2_2 = L2_2.is_active
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L1_2 = true
      end
    end
  end
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Maze.Wheel.ChessRogueShortCutWheelDialog"
    L2_2(L3_2)
  end
end
L0_1._on_show_chess_rogue_short_cut_wheel = L4_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueSubMode
L5_1 = L5_1.ChessRogue
L4_1[L5_1] = "UI/Rogue/DLC/Dice/Widget/DiceBossChooseContent.prefab"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueSubMode
L5_1 = L5_1.ChessRogueNous
L4_1[L5_1] = "UI/Rogue/DLC/RogueNous/Widget/RogueNousBossChooseContent.prefab"
L5_1 = "Content"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1[L1_2]
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.sync_load_prefab
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_dice_boss_loader_root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2.transform
  L5_2 = L5_1
  L4_2.name = L5_2
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.ChessRogueDiceBossPanel
  L7_2 = G
  L7_2 = L7_2.ChessRogueDiceBossPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_dice_boss_root
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._create_dice_boss_panel = L6_1
return L0_1
