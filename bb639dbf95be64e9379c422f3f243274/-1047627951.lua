local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MazeMiniGameMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameLinkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameMagicSquarePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameCompassPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameInsertionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameProgramming.MiniGameProgrammingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameOpticalIllusionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGamePinballPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMiniGameMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeMiniGameMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._cur_maze_puzzle_id = 1017
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prop
  L1_2 = L1_2.PuzzleType
  L1_2 = L1_2.RubikCube
  L1_2 = #L1_2
  A0_2._cur_mini_game_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MazePuzzleChallengeExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MazePuzzleSpecialUIInfoExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.SpecialModeID
    L3_2 = L3_2(L4_2)
    if L2_2 then
      A0_2._cur_maze_puzzle_id = A1_2
      L4_2 = L3_2.PuzzleType
      A0_2._cur_mini_game_type = L4_2
    end
    L5_2 = A0_2
    L4_2 = A0_2._add_notify_handler
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UIClosePuzzleCommon
    L7_2 = A0_2._on_puzzle_finish
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpdateMazePuzzleChallenge
  L4_2 = L0_1._puzzle_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mini_game_config
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mini_game_panel
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonConfirmExit
  L4_2 = A0_2._confirm_to_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonConfirmExit
  L4_2 = A0_2._confirm_to_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleChallengeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_maze_puzzle_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleSpecialUIInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.SpecialModeID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc01
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[0]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[0]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc02
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[1]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[1]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[1]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[1]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc03
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[2]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[2]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._puzzle_update = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.MazeChallengeSystem
  L2_2 = L2_2.CurrentEventDictionary
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2._cur_maze_puzzle_id
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == false then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2._cur_maze_puzzle_id
  L3_2 = L2_2[L3_2]
  return L3_2
end
L0_1._get_puzzle_instance = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleChallengeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_maze_puzzle_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleSpecialUIInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.SpecialModeID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_puzzle_instance
  L3_2 = L3_2(L4_2)
  A0_2._challenge_instance = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Title
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L1_2.TutorialID
  L3_2.GuideID = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target1
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target3
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc01
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_target1
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Desc01
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_slash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[0]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target1_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[0]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc02
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_target2
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Desc02
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_slash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[1]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[1]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[1]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target2_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[1]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.Desc03
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_target3
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Desc03
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_slash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[0]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamCnt
    L5_2 = L5_2[2]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_obtained
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamCnt
    L6_2 = L6_2[2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L5_2 = L5_2[2]
    L5_2 = L5_2 ~= 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_target3_process_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = tostring
    L6_2 = A0_2._challenge_instance
    L6_2 = L6_2.FinParamTotal
    L6_2 = L6_2[2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._init_mini_game_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_mini_game_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PuzzleType
  L2_2 = L2_2.RubikCube
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_mini_game_magic_square_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_mini_game_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prop
    L2_2 = L2_2.PuzzleType
    L2_2 = L2_2.LinkWire
    L2_2 = #L2_2
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._init_mini_game_link_panel
      L1_2(L2_2)
    else
      L1_2 = A0_2._cur_mini_game_type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prop
      L2_2 = L2_2.PuzzleType
      L2_2 = L2_2.Compass
      L2_2 = #L2_2
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._init_mini_game_compass_panel
        L1_2(L2_2)
      else
        L1_2 = A0_2._cur_mini_game_type
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.Prop
        L2_2 = L2_2.PuzzleType
        L2_2 = L2_2.Insertion
        L2_2 = #L2_2
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._init_mini_game_insertion_panel
          L1_2(L2_2)
        else
          L1_2 = A0_2._cur_mini_game_type
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.Prop
          L2_2 = L2_2.PuzzleType
          L2_2 = L2_2.Programming
          L2_2 = #L2_2
          if L1_2 == L2_2 then
            L2_2 = A0_2
            L1_2 = A0_2._init_mini_game_programming_panel
            L1_2(L2_2)
          else
            L1_2 = A0_2._cur_mini_game_type
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.Prop
            L2_2 = L2_2.PuzzleType
            L2_2 = L2_2.OpticalIllusion
            L2_2 = #L2_2
            if L1_2 == L2_2 then
              L2_2 = A0_2
              L1_2 = A0_2._init_mini_game_optical_illusion_panel
              L1_2(L2_2)
            else
              L1_2 = A0_2._cur_mini_game_type
              L2_2 = CS
              L2_2 = L2_2.RPG
              L2_2 = L2_2.Client
              L2_2 = L2_2.Prop
              L2_2 = L2_2.PuzzleType
              L2_2 = L2_2.Pinball
              L2_2 = #L2_2
              if L1_2 == L2_2 then
                L2_2 = A0_2
                L1_2 = A0_2._init_mini_game_pinball_panel
                L1_2(L2_2)
              end
            end
          end
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_background
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonShow
  L3_2 = A0_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleChallengeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_maze_puzzle_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleSpecialUIInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.SpecialModeID
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.IsUImode
    if L3_2 == false then
      L3_2 = A0_2._binder
      L3_2 = L3_2.ui_meta
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIMeta
      L4_2 = L4_2.UIBlurMode
      L4_2 = L4_2.None
      L3_2.BlurBackground = L4_2
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.ui_meta
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIMeta
      L4_2 = L4_2.UIBlurMode
      L4_2 = L4_2.FullScreen
      L3_2.BlurBackground = L4_2
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._init_background = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameLinkPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameLinkPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 111
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_link_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameMagicSquarePanel
  L4_2 = G
  L4_2 = L4_2.MiniGameMagicSquarePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_parent
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_magic_square_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameCompassPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameCompassPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_parent
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_compass_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameInsertionPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameInsertionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 119
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_insertion_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameProgrammingPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameProgrammingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_programming_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGameOpticalIllusionPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameOpticalIllusionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
end
L0_1._init_mini_game_optical_illusion_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MiniGamePinballPanel
  L4_2 = G
  L4_2 = L4_2.MiniGamePinballPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mini_game_panel = L1_2
  L1_2 = A0_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.mini_game_container
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_meta
  L1_2.DisableMainCamera = false
end
L0_1._init_mini_game_pinball_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_mini_game_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PuzzleType
  L2_2 = L2_2.OpticalIllusion
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPuzzleCommonExitClick
    L3_2 = A0_2._cur_maze_puzzle_id
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._cur_mini_game_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prop
    L2_2 = L2_2.PuzzleType
    L2_2 = L2_2.Pinball
    L2_2 = #L2_2
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPuzzleCommonExitClick
      L3_2 = A0_2._cur_maze_puzzle_id
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._confirm_to_close
      L1_2(L2_2)
    end
  end
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_mini_game_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PuzzleType
  L2_2 = L2_2.OpticalIllusion
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPuzzleCommonExitClick
    L3_2 = A0_2._cur_maze_puzzle_id
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._confirm_to_close
    L1_2(L2_2)
  end
end
L0_1._on_btn_close_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPuzzleCommonExit
      L3_3 = A0_2._cur_maze_puzzle_id
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.exit
      L1_3(L2_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Puzzle_Exit"
  L2_2(L3_2, L4_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
end
L0_1._confirm_to_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonExit
  L3_2 = A0_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_puzzle_finish = L1_1
return L0_1
