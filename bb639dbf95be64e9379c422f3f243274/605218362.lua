local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = {}
L0_1.MPNormal = "MazeUI_Mp_Normal"
L0_1.MpInsufficientHint = "MazeUI_Mp_InsufficientHint"
L0_1.MpIncrease = "MazeUI_Mp_NumIncrease"
L0_1.MpDecrease = "MazeUI_Mp_NumDecrease"
L0_1.MpOverflow = "MazeUI_Mp_NumIncrease_OverFlow"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MazeSkillMPPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._pause_data_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_resume_data_refresh
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pause_timer = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "Ui.Maze.MazeSkill.MazeMPBarNodePanel"
  L6_2 = "Ui.Maze.MazeSkill.MazeMPBarNodeBinder"
  L7_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._mp_bar = L1_2
  L1_2 = A0_2._mp_bar
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_mplist
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L1_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshSkillMP
  L4_2 = L1_1._on_maze_refresh_mp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamOnMPMaxChange
  L4_2 = L1_1._on_mp_max_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPauseTeamDataRefresh
  L4_2 = L1_1._pause_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIResumeTeamDataRefresh
  L4_2 = L1_1._on_resume_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L0_1.MPNormal
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  A0_2._team_module = L1_2
  A0_2._load_finish_time = -1
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    return
  end
  A0_2._pause_data_refresh = true
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L1_1._pause_data_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pause_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._pause_data_refresh = false
  L1_2 = A0_2.temp_chgParam
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_maze_refresh_mp
    L3_2 = A0_2.temp_chgParam
    L1_2(L2_2, L3_2)
    A0_2.temp_chgParam = nil
  end
end
L1_1._on_resume_data_refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.CheckMask
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TeamDataRefreshMask
  L4_2 = L4_2.Full
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L1_1._on_team_data_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L0_1.MPNormal
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh_skill_mp
  L1_2(L2_2)
end
L1_1.on_top_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L0_1.MPNormal
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetMazeMPMaxValue
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMazeMPValueForDisplay
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2 = L2_2(L3_2)
  A0_2._current_mp = L2_2
  L2_2 = A0_2._mp_bar
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._current_mp
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_current_mp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2._current_mp
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._insufficient_effect_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2._insufficient_effect_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1.play_mp_insufficient = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_mplist
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeInHierarchy
  if L2_2 == false then
    return
  end
  L2_2 = 0
  L3_2 = false
  if A1_2 ~= nil then
    L2_2 = A1_2.ChangeCount
    L3_2 = A1_2.Overflow
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentMazeMPValueForDisplay
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.ToFloat
  L4_2 = L4_2(L5_2)
  A0_2._current_mp = L4_2
  if L2_2 < 0 then
    L4_2 = A0_2._mp_bar
    L5_2 = L4_2
    L4_2 = L4_2.show_delta_with_anim
    L6_2 = A0_2._current_mp
    L7_2 = "MpPoint_Decrease"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L0_1.MpDecrease
    L4_2(L5_2, L6_2)
    A0_2.overflow_flag = false
  elseif 0 < L2_2 then
    L4_2 = A0_2._mp_bar
    L5_2 = L4_2
    L4_2 = L4_2.show_delta_with_anim
    L6_2 = A0_2._current_mp
    L7_2 = "MpPoint_Increase"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L0_1.MpIncrease
    L4_2(L5_2, L6_2)
    A0_2.overflow_flag = false
  elseif L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L0_1.MpOverflow
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L1_1._on_refresh_skill_mp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._pause_data_refresh
  if L2_2 then
    A0_2.temp_chgParam = A1_2
    return
  end
  A0_2._is_mp_changed = true
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh_skill_mp
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_maze_refresh_mp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "SyncLineupNotify"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = false
  L4_2 = ipairs
  L5_2 = L2_2.reason_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = G
    L9_2 = L9_2.UtilEngineWrap
    L9_2 = L9_2.ConvCsEnumToNum
    L10_2 = CS
    L10_2 = L10_2.IPPEFFJAMEH
    L10_2 = L10_2.PAHBDNGLNKL
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L3_2 = true
    end
  end
  if L3_2 == true then
    L4_2 = A0_2._is_mp_changed
    if L4_2 ~= true then
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_root
      L5_2 = L4_2
      L4_2 = L4_2.Play
      L6_2 = L0_1.MpOverflow
      L4_2(L5_2, L6_2)
    end
  end
  A0_2._is_mp_changed = false
end
L1_1._on_skill_mp_overflow = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L1_2 = L1_2.MPStatus
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MPChangeStatus
  L2_2 = L2_2.Default
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._add_tick
    L1_2(L2_2)
  end
end
L1_1._on_battle_to_maze_transition_finished = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._load_finish_time
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameCoreConfigManager
  L3_2 = L3_2.MazeConfig
  L3_2 = L3_2.MazeMPRecoverDelayAfterBattle
  if L2_2 < L3_2 then
    L2_2 = A0_2._load_finish_time
    L2_2 = L2_2 + A1_2
    A0_2._load_finish_time = L2_2
  else
    A0_2._load_finish_time = 0
    L3_2 = A0_2
    L2_2 = A0_2._play_cached_anim
    L2_2(L3_2)
  end
end
L1_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L1_2 = L1_2.MPStatus
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MPChangeStatus
  L2_2 = L2_2.Increase
  if L1_2 == L2_2 then
    L1_2 = A0_2._mp_bar
    L2_2 = L1_2
    L1_2 = L1_2.show_delta_with_anim
    L3_2 = A0_2._current_mp
    L4_2 = "MpPoint_Increase"
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L0_1.MpIncrease
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.TeamModule
    L1_2 = L1_2.MPStatus
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MPChangeStatus
    L2_2 = L2_2.Overflow
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.anim_root
      L2_2 = L1_2
      L1_2 = L1_2.Play
      L3_2 = L0_1.MpOverflow
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetMazeMPMaxValue
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMazeMPValueForDisplay
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2 = L2_2(L3_2)
  A0_2._current_mp = L2_2
  L2_2 = A0_2._mp_bar
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._current_mp
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_current_mp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2._current_mp
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TeamModule
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MPChangeStatus
  L3_2 = L3_2.Default
  L2_2.MPStatus = L3_2
  L3_2 = A0_2
  L2_2 = A0_2._remove_tick
  L2_2(L3_2)
end
L1_1._play_cached_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0 < A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AdventureStatic
    L3_2 = L2_2
    L2_2 = L2_2.GetMazeMPMaxValue
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.ToFloat
    L2_2 = L2_2(L3_2)
    A0_2._current_max_mp = L2_2
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.PlayerLevelUp.MazeSkillPointUpgradeDialog"
    L4_2 = A0_2._current_max_mp
    L5_2 = A0_2._current_max_mp
    L5_2 = L5_2 + A1_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L1_1._on_mp_max_change = L2_1
return L1_1
