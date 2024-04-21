local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildStageProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildNormalSubStagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildLastSubStagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildStageProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.LevelInstance
  A0_2._evolve_build_level = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleGamePhase
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._is_in_battle = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._tmp_add = A4_2
  A0_2._period_id = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.EvolveBuildStagePeriodExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._period_id
  L5_2 = L5_2(L6_2)
  A0_2._period_row = L5_2
  L5_2 = A0_2._period_row
  L5_2 = L5_2.WaveCount
  A0_2.wave_count = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_sub_stage
  L5_2(L6_2)
  L5_2 = G
  L5_2 = L5_2.ActivityEvolveBuildUtils
  L5_2 = L5_2.PeriodState
  L5_2 = L5_2.Doing
  if A2_2 == L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_in_challenge_view
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = G
    L5_2 = L5_2.ActivityEvolveBuildUtils
    L5_2 = L5_2.PeriodState
    L5_2 = L5_2.Finish
    if A2_2 == L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2._setup_challenge_finish_view
      L5_2(L6_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2._setup_not_start_view
      L5_2(L6_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._sub_stage_panels
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_root_world_pos
  return L2_2(L3_2)
end
L0_1.get_wave_point_world_pos = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._sub_stage_panels
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.play_action_anim
  L2_2(L3_2)
end
L0_1.play_cur_action_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._sub_stage_panels
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._sub_stage_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._period_row
  L2_2 = L2_2.WaveCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta_sub_stage
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.prefab_load_meta_sub_stage
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BattleEvolveBuildNormalSubStagePanel
    L9_2 = G
    L9_2 = L9_2.BattleEvolveBuildNormalSubStagePanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._sub_stage_panels
    L7_2[L4_2] = L6_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildLastSubStagePanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildLastSubStagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_last_wave
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._sub_stage_panels
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_sub_stage = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._sub_stage_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_finish
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_progress_fill_amount
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._setup_challenge_finish_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_in_battle
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.get_cur_period_count
    L2_2 = L2_2()
    L3_2 = A0_2._tmp_add
    if L3_2 then
      L3_2 = 0
      if L3_2 then
        goto lbl_15
      end
    end
    L3_2 = 1
    ::lbl_15::
    L2_2 = L2_2 - L3_2
    A0_2._current_wave_cnt = L2_2
  else
    A0_2._current_wave_cnt = 1
  end
  L2_2 = 1
  L3_2 = A0_2._current_wave_cnt
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._sub_stage_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_finish
    L6_2(L7_2)
  end
  L2_2 = A0_2._current_wave_cnt
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.ProgressState
    L2_2 = L2_2.Doing
    if A1_2 == L2_2 then
      L2_2 = A0_2._sub_stage_panels
      L3_2 = A0_2._current_wave_cnt
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.setup_action
      L2_2(L3_2)
    else
      L2_2 = G
      L2_2 = L2_2.ActivityEvolveBuildUtils
      L2_2 = L2_2.ProgressState
      L2_2 = L2_2.PreShow
      if A1_2 == L2_2 then
        L2_2 = A0_2._sub_stage_panels
        L3_2 = A0_2._current_wave_cnt
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.setup_pre_action
        L2_2(L3_2)
      else
        L2_2 = A0_2._sub_stage_panels
        L3_2 = A0_2._current_wave_cnt
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.setup_finish
        L2_2(L3_2)
      end
    end
  end
  L2_2 = A0_2._current_wave_cnt
  L2_2 = L2_2 + 1
  L3_2 = A0_2._period_row
  L3_2 = L3_2.WaveCount
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._sub_stage_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_not_start
    L6_2(L7_2)
  end
end
L0_1._setup_in_challenge_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._sub_stage_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_not_start
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_progress_fill_amount
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_not_start_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._period_row
  L1_2 = L1_2.WaveCount
  return L1_2
end
L0_1.get_stage_wave = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_progress_fill_amount
  L4_2 = A0_2._period_row
  L4_2 = L4_2.WaveCount
  L4_2 = A1_2 / L4_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_fill_amount_by_wave = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L2_2.fillAmount = A1_2
end
L0_1.setup_progress_fill_amount = L1_1
return L0_1
