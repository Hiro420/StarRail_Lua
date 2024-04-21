local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildProgressToastDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildBattleProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildProgressToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2000
L2_1 = "EvolveStageMergedDialogBanner_FadeOut"
L3_1 = "EvolveStageMergedDialogBanner_Difficult_FadeOut"
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil
  A0_2._tmp_add = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildProgressToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_resp_esc = false
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildBattleProgressPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildBattleProgressPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._progress_panel = L1_2
  L1_2 = A0_2._progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stage_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tick
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.LevelInstance
  A0_2._evolve_build_level = L1_2
  L1_2 = A0_2._evolve_build_level
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EvolveBuildStagePeriodExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._evolve_build_level
  L2_2 = L2_2.CurPeriod
  L1_2 = L1_2(L2_2)
  A0_2._cur_period_row = L1_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_cur_period_count
  L1_2 = L1_2()
  L2_2 = A0_2._tmp_add
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = 0
  ::lbl_33::
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._progress_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A0_2._evolve_build_level
  L5_2 = L5_2.StagePeriodIDList
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._evolve_build_level
  L5_2 = L5_2.StagePeriodType
  L5_2 = #L5_2
  L6_2 = L1_2
  L7_2 = G
  L7_2 = L7_2.ActivityEvolveBuildUtils
  L7_2 = L7_2.ProgressState
  L7_2 = L7_2.Doing
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_progress_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_TimeManager
  L1_2 = L1_2.NowMsTimeStamp
  A0_2._begin_tick_ms_timestamp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._evolve_build_level
  if L2_2 == nil then
    return
  end
  if A1_2 == "StartOtherAnim" then
    L2_2 = A0_2._progress_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_cur_avatar_anim
    L2_2(L3_2)
    L2_2 = A0_2._progress_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_move_to_next
    L2_2(L3_2)
  end
end
L0_1._on_ui_animation_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._evolve_build_level
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._evolve_build_level
  L1_2 = L1_2.StagePeriodType
  L1_2 = #L1_2
  L2_2 = A0_2._evolve_build_level
  L2_2 = L2_2.StagePeriodIDList
  L2_2 = L2_2.Count
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._evolve_build_level
  L2_2 = L2_2.StagePeriodType
  L2_2 = #L2_2
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.ADD_STAGE_PERIOD_NUM
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_elite_stage
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_final_stage
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = not L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_add_stage
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_stage_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._evolve_build_level
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_cur_period_count
  L1_2 = L1_2()
  L2_2 = A0_2._tmp_add
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = 0
  ::lbl_21::
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._evolve_build_level
  L2_2 = L2_2.StagePeriodType
  L2_2 = #L2_2
  if L2_2 ~= 4 then
    L2_2 = A0_2._cur_period_row
    L2_2 = L2_2.WaveCount
    if L1_2 ~= L2_2 then
      goto lbl_37
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  goto lbl_42
  ::lbl_37::
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  ::lbl_42::
end
L0_1._start_fade_out = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._begin_tick_ms_timestamp
  L3_2 = L1_1
  L2_2 = L2_2 + L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_TimeManager
  L3_2 = L3_2.NowMsTimeStamp
  if L2_2 < L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._start_fade_out
    L2_2(L3_2)
  end
end
L0_1._on_tick = L4_1
return L0_1
