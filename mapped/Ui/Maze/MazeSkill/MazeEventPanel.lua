local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleUnknownStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleIdentifyStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleMarch7thGuessTheSilhouetteStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleProbeStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleInfoStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleSpecialVisionStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleRemoteControlReleaseStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleTriggerCustomStringStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleSpecialVisionFindSneakMonsterStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzlePutMapPoseSwitcherStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleIsometricViewStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleWolfBroStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeEvent.PuzzleEntityTimeline"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeEventPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.Unknown
L1_1[L2_1] = -1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.IsometricView
L1_1[L2_1] = 8
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.Identify
L1_1[L2_1] = 9
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.Match7thGuessTheSilhouette
L1_1[L2_1] = 10
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.Probe
L1_1[L2_1] = 11
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.Info
L1_1[L2_1] = 12
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.SpecialVision
L1_1[L2_1] = 13
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.RemoteControlRelease
L1_1[L2_1] = 14
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.TriggerCustomString
L1_1[L2_1] = 15
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.SpecialVisionFindSneakMonster
L1_1[L2_1] = 16
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.PutMapPoseSwitcher
L1_1[L2_1] = 18
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PuzzleFunc
L2_1 = L2_1.EntityTimeline
L1_1[L2_1] = 21
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.Unknown
L4_1 = G
L4_1 = L4_1.PuzzleUnknownStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.Identify
L4_1 = G
L4_1 = L4_1.PuzzleIdentifyStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.Match7thGuessTheSilhouette
L4_1 = G
L4_1 = L4_1.PuzzleMarch7thGuessTheSilhouetteStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.Probe
L4_1 = G
L4_1 = L4_1.PuzzleProbeStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.Info
L4_1 = G
L4_1 = L4_1.PuzzleInfoStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.SpecialVision
L4_1 = G
L4_1 = L4_1.PuzzleSpecialVisionStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.RemoteControlRelease
L4_1 = G
L4_1 = L4_1.PuzzleRemoteControlReleaseStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.TriggerCustomString
L4_1 = G
L4_1 = L4_1.PuzzleTriggerCustomStringStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.SpecialVisionFindSneakMonster
L4_1 = G
L4_1 = L4_1.PuzzleSpecialVisionFindSneakMonsterStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.PutMapPoseSwitcher
L4_1 = G
L4_1 = L4_1.PuzzlePutMapPoseSwitcherStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.IsometricView
L4_1 = G
L4_1 = L4_1.PuzzleIsometricViewStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.WolfBro
L4_1 = G
L4_1 = L4_1.PuzzleWolfBroStrategy
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PuzzleFunc
L3_1 = L3_1.EntityTimeline
L4_1 = G
L4_1 = L4_1.PuzzleEntityTimeline
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._accumulation = 0
  A0_2._CD = 0
  A0_2._CD_duration = 3
  A0_2._effect = false
  A0_2._is_forbid = false
  A0_2._is_disable = false
  L1_2 = {}
  A0_2._types = L1_2
  A0_2._type_param = nil
  A0_2._previous_type_param = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prop
  L1_2 = L1_2.PuzzleStatic
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleFunc
  L2_2 = L2_2.Unknown
  L1_2.CurPuzzleFunc = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_image_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_slider
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_place
  L4_2 = A0_2._onClick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnSetCD
  L4_2 = A0_2._on_set_cd
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnCancleCD
  L4_2 = A0_2._on_click_ui_performance_cancle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnEnableEffect
  L4_2 = A0_2._on_set_effect_enable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerAdventureFuncBtn
  L4_2 = A0_2._on_trigger_adventure_func_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnOverride
  L4_2 = A0_2._onOverride
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnCountShow
  L4_2 = A0_2._on_counter_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnCountHide
  L4_2 = A0_2._on_counter_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = A0_2._on_mission_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowIdentifyMainPage
  L4_2 = A0_2._on_short_cut_wheel_show_identify
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2.is_enable_puzzle_func_identify = false
  A0_2._tracking_mission = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  if A1_2 ~= nil then
    L2_2 = L2_1[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  L2_2 = G
  L2_2 = L2_2.PuzzleUnknownStrategy
  do return L2_2 end
  ::lbl_9::
  L2_2 = L2_1[A1_2]
  return L2_2
end
L0_1._get_strategy = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._type_param
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._type_param
  L2_2 = L2_2.FuncType
  return L1_2(L2_2)
end
L0_1._get_config = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetMainWorldTimeScale
  L2_2 = L2_2(L3_2)
  A1_2 = A1_2 * L2_2
  L3_2 = A0_2._active
  if L3_2 then
    L3_2 = A0_2._CD
    if 0 < L3_2 then
      L3_2 = A0_2._CD
      L3_2 = L3_2 - A1_2
      A0_2._CD = L3_2
      L4_2 = A0_2
      L3_2 = A0_2._refresh_CD
      L3_2(L4_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2._tick_func
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_ban_mark
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._is_forbid
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_disable
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._is_forbid
    L5_2 = not L5_2 and L5_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._CD
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_click_ui_performance_update
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_click_ui_performance_cancle
    L1_2(L2_2)
  end
end
L0_1._refresh_CD = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._active
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._onClick
    L1_2(L2_2)
  end
end
L0_1._on_trigger_adventure_func_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._type_param
  L1_2 = L1_2.FuncType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleFunc
  L2_2 = L2_2.SpecialVisionFindSneakMonster
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.AdventureModule
    L2_2 = L1_2.SpecialVisionUseStateManager
    L4_2 = L2_2
    L3_2 = L2_2.CheckUseSpecialVision
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.SpecialVisionType
    L5_2 = L5_2.PlayerSearchSneakMonster
    return L3_2(L4_2, L5_2)
  end
  L1_2 = true
  return L1_2
end
L0_1._check_available = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._check_available
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._CD
  if 0 < L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.AdvWaitingChangeLeader
    if not L2_2 then
      goto lbl_23
    end
  end
  do return end
  ::lbl_23::
  L3_2 = A0_2
  L2_2 = A0_2._on_click_ui_performance
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._report_action
  L2_2(L3_2)
  L2_2 = A0_2._strategy
  L2_2 = L2_2.execute
  L3_2 = A0_2._type_param
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_counter
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnClick
  L2_2(L3_2)
end
L0_1._onClick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._type_param
  L1_2 = L1_2.FuncType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleFunc
  L2_2 = L2_2.SpecialVision
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = "MazeMainPage"
    L3_2 = "SpecialVision"
    L4_2 = "ScanBtn"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._type_param
    L1_2 = L1_2.FuncType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.PuzzleFunc
    L2_2 = L2_2.SpecialVisionFindSneakMonster
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.SDKLuaReportAdapter
      L1_2 = L1_2.ReportUIButtonClick
      L2_2 = "MazeMainPage"
      L3_2 = "SpecialVisionType.PlayerSearchSneakMonster"
      L4_2 = "ScanBtn"
      L5_2 = A0_2._owner
      L5_2 = L5_2.guid
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._report_action = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._types = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_key
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_type_changed
  L2_2(L3_2)
  L2_2 = A0_2._type_param
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._on_set_cd
    L4_2 = A0_2._type_param
    L4_2 = L4_2.CDDuration
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_set_effect_enable
    L4_2 = A0_2._type_param
    L4_2 = L4_2.ShowBtnEffect
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_types = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._tracking_puzzle_func
  if L2_2 == A1_2 then
    A0_2._tracking_puzzle_func = nil
  end
end
L0_1.try_clear_trace_puzzle_func_param = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_set_effect_enable
  L4_2 = A1_2.ShowBtnEffect
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_param
  L3_2 = A1_2.IconPath
  L2_2.OverrideIconPath = L3_2
  L2_2 = A0_2._type_param
  L3_2 = A1_2.CustomEvent
  L2_2.CustomEvent = L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_key
  L2_2(L3_2)
end
L0_1._onOverride = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._strategy
  L1_2 = L1_2.get_current_count
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._has_count = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_forbid
  if not L1_2 then
    L1_2 = A0_2._is_disable
    if not L1_2 then
      L1_2 = A0_2._CD_duration
      if L1_2 ~= 0 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._CD_duration
  A0_2._CD = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_CD
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_CD
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._CD
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_slider
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_slider
  L1_2.value = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_image_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._effect
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_loop_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click_ui_performance = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2._CD
  L2_2 = L2_2 * 10
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_CD
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = tostring
  L5_2 = L1_2 / 10
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_slider
  L3_2 = A0_2._CD
  L4_2 = A0_2._CD_duration
  L3_2 = L3_2 / L4_2
  L2_2.value = L3_2
end
L0_1._on_click_ui_performance_update = L4_1
function L4_1(A0_2, A1_2)
  if A1_2 ~= 0 then
    A0_2._CD_duration = A1_2
  end
end
L0_1._on_set_cd = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._CD = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_CD
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_slider
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_image_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._effect
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_loop_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click_ui_performance_cancle = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._effect = A1_2
  L2_2 = A0_2._effect
  if L2_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_loop_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._CD
    if L2_2 == 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_loop_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_set_effect_enable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventureUIFuncBtnFullUpdateNotify
  L3_2 = A0_2._types
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._type_param
  A0_2._previous_type_param = L1_2
  L1_2 = A0_2._previous_type_param
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._get_strategy
    L3_2 = nil
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._previous_strategy = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_strategy
    L3_2 = A0_2._previous_type_param
    L3_2 = L3_2.FuncType
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._previous_strategy = L1_2
  end
  L1_2 = A0_2._types
  L1_2 = #L1_2
  if L1_2 == 0 then
    A0_2._type_param = nil
    L2_2 = A0_2
    L1_2 = A0_2._get_strategy
    L3_2 = nil
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._strategy = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prop
    L1_2 = L1_2.PuzzleStatic
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.PuzzleFunc
    L2_2 = L2_2.Unknown
    L1_2.CurPuzzleFunc = L2_2
    A0_2._active = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_place
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.AdventureUIFuncBtnRefresh
    L3_2 = A0_2._type_param
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._types
  L1_2 = L1_2[1]
  L2_2 = L1_2.FuncType
  L2_2 = L1_1[L2_2]
  L3_2 = ipairs
  L4_2 = A0_2._types
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MissionID
    if L8_2 == 0 then
      L8_2 = L1_2.MissionID
      if L8_2 == 0 then
        goto lbl_91
      end
    end
    L8_2 = L1_2.MissionID
    if L8_2 ~= 0 then
      L8_2 = L7_2.MissionID
      if L8_2 == 0 then
        goto lbl_110
      end
      L8_2 = CS
      L8_2 = L8_2.Conflict
      L8_2 = L8_2.CompareToByMissionID
      L9_2 = L7_2.MissionID
      L10_2 = L1_2.MissionID
      L8_2 = L8_2(L9_2, L10_2)
      if not (L8_2 < 0) then
        goto lbl_110
      end
    end
    L1_2 = L7_2
    goto lbl_110
    ::lbl_91::
    L8_2 = L7_2.FuncType
    L8_2 = L1_1[L8_2]
    if not (L2_2 <= L8_2) then
      L8_2 = L7_2.FuncType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.PuzzleFunc
      L9_2 = L9_2.Identify
      if L8_2 ~= L9_2 then
        goto lbl_110
      end
      L8_2 = L7_2.FuncType
      L8_2 = L1_1[L8_2]
      if not (L2_2 < L8_2) then
        goto lbl_110
      end
    end
    L1_2 = L7_2
    L8_2 = L7_2.FuncType
    L2_2 = L1_1[L8_2]
    ::lbl_110::
  end
  L3_2 = A0_2._type_param
  if L3_2 == L1_2 then
    return
  end
  A0_2._type_param = L1_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.AdventureUIFuncBtnRefresh
  L5_2 = A0_2._type_param
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_strategy
  L5_2 = A0_2._type_param
  L5_2 = L5_2.FuncType
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._strategy = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.PuzzleStatic
  L4_2 = A0_2._type_param
  L4_2 = L4_2.FuncType
  L3_2.CurPuzzleFunc = L4_2
  A0_2._active = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_place
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_config
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = A0_2._type_param
    L4_2 = L4_2.OverrideIconPath
    if L4_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.image_icon
      L7_2 = A0_2._type_param
      L7_2 = L7_2.OverrideIconPath
      L4_2(L5_2, L6_2, L7_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.image_icon
      L7_2 = L3_2.IconPath
      L4_2(L5_2, L6_2, L7_2)
    end
    L5_2 = A0_2
    L4_2 = A0_2._on_click_ui_performance_cancle
    L4_2(L5_2)
  end
end
L0_1._refresh_key = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._type_param
  if L1_2 == nil then
    L1_2 = A0_2._previous_type_param
    if L1_2 == nil then
      return
    end
  end
  L1_2 = A0_2._type_param
  if L1_2 ~= nil then
    L1_2 = A0_2._previous_type_param
    if L1_2 ~= nil then
      L1_2 = A0_2._type_param
      L1_2 = L1_2.FuncType
      L2_2 = A0_2._previous_type_param
      L2_2 = L2_2.FuncType
      if L1_2 == L2_2 then
        return
      end
    end
  end
  L1_2 = A0_2._previous_strategy
  L1_2 = L1_2.on_hide
  if L1_2 ~= nil then
    L1_2 = A0_2._previous_strategy
    L1_2 = L1_2.on_hide
    L1_2()
  end
  L1_2 = A0_2._strategy
  L1_2 = L1_2.on_show
  if L1_2 ~= nil then
    L1_2 = A0_2._strategy
    L1_2 = L1_2.on_show
    L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2._has_count
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_counter_show
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_counter_hide
    L1_2(L2_2)
  end
end
L0_1._on_type_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_count_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_counter_hide = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._has_count
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._strategy
    L1_2 = L1_2.get_current_count
    L1_2 = L1_2()
    L2_2 = A0_2._strategy
    L2_2 = L2_2.get_max_count
    L2_2 = L2_2()
    L4_2 = A0_2
    L3_2 = A0_2._set_counter_num
    L5_2 = L1_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_counter = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%d/%d"
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._set_counter_num = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_count_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_counter
  L1_2(L2_2)
end
L0_1._on_counter_show = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_photo_type_func
  L4_2 = A0_2._type_param
  L4_2 = L4_2.FuncType
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.PhotoGraphUtils
    L2_2 = L2_2.is_enable_identify
    L2_2 = L2_2()
    L2_2 = not L2_2
    A0_2._is_forbid = L2_2
  else
    L2_2 = A0_2._strategy
    L2_2 = L2_2.is_forbid
    if L2_2 ~= nil then
      L2_2 = A0_2._strategy
      L3_2 = L2_2
      L2_2 = L2_2.is_forbid
      L2_2 = L2_2(L3_2)
      A0_2._is_forbid = L2_2
    else
      A0_2._is_forbid = false
    end
  end
  L2_2 = A0_2._strategy
  L2_2 = L2_2.is_disable
  if L2_2 ~= nil then
    L2_2 = A0_2._strategy
    L3_2 = L2_2
    L2_2 = L2_2.is_disable
    L2_2 = L2_2(L3_2)
    A0_2._is_disable = L2_2
  else
    A0_2._is_disable = false
  end
end
L0_1._tick_func = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._onClick
  L1_2(L2_2)
end
L0_1._on_short_cut_wheel_show_identify = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._types
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_key
  L1_2(L2_2)
end
L0_1._on_mission_refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleFunc
  L2_2 = L2_2.Identify
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._check_is_photo_type_func = L4_1
return L0_1
