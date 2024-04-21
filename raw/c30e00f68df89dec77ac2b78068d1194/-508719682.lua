local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildBattleProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildStageProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildBattleProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0
L2_1 = 1
L3_1 = 2
L4_1 = 4
L5_1 = "EvolveStageMergedDialogBanner_CurrentAvatar_FadeIn"
L6_1 = "EvolveStageMergedDialogBanner_CurrentAvatar_Loop"
function L7_1(A0_2)
  local L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_current_tag
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_current_tag
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  A0_2._period_id_table = A1_2
  A0_2._cur_wave = A3_2
  A0_2._cur_period_idx = A2_2
  if A5_2 then
    L6_2 = true
    if L6_2 then
      goto lbl_10
    end
  end
  L6_2 = false
  ::lbl_10::
  A0_2._open_with_dialog = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._init_stage_progress_panel
  L6_2(L7_2)
  L6_2 = 1
  L7_2 = A0_2._period_id_table
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = nil
    L11_2 = A0_2._cur_period_idx
    if L9_2 < L11_2 then
      L11_2 = G
      L11_2 = L11_2.ActivityEvolveBuildUtils
      L11_2 = L11_2.PeriodState
      L10_2 = L11_2.Finish
    else
      L11_2 = A0_2._cur_period_idx
      if L9_2 == L11_2 and 0 < A3_2 then
        L11_2 = G
        L11_2 = L11_2.ActivityEvolveBuildUtils
        L11_2 = L11_2.PeriodState
        L10_2 = L11_2.Doing
      else
        L11_2 = G
        L11_2 = L11_2.ActivityEvolveBuildUtils
        L11_2 = L11_2.PeriodState
        L10_2 = L11_2.NotStart
      end
    end
    L11_2 = false
    L12_2 = G
    L12_2 = L12_2.ActivityEvolveBuildUtils
    L12_2 = L12_2.get_evolve_build_gear_manager
    L12_2 = L12_2()
    if L12_2 then
      L12_2 = A0_2._cur_wave
      L13_2 = G
      L13_2 = L13_2.ActivityEvolveBuildUtils
      L13_2 = L13_2.get_cur_period_count
      L13_2 = L13_2()
      L12_2 = L12_2 - L13_2
      L11_2 = L12_2 == 1
    end
    L12_2 = A0_2._stage_progress_panels
    L12_2 = L12_2[L9_2]
    L13_2 = L12_2
    L12_2 = L12_2.setup_view
    L14_2 = A0_2._period_id_table
    L14_2 = L14_2[L9_2]
    L15_2 = L10_2
    L16_2 = A4_2
    L17_2 = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L6_2 = A0_2._cur_wave
  if 0 < L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._setup_current_avatar
    L6_2(L7_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._set_current_avatar_to_start_point
    L6_2(L7_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2._set_wave_num
  L6_2(L7_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_current_tag
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_current_tag
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_current_tag
  L2_2 = L1_2
  L1_2 = L1_2.PlayQueued
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1.play_cur_avatar_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._stage_progress_panels
  L2_2 = A0_2._cur_period_idx
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.play_cur_action_anim
  L3_2 = A0_2._cur_wave
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_wave
  L1_2 = L1_2 - 1
  L2_2 = A0_2._stage_progress_panels
  L3_2 = A0_2._cur_period_idx
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.wave_count
  L1_2 = L1_2 / L2_2
  A0_2._tween_start_val = L1_2
  L1_2 = A0_2._cur_wave
  L2_2 = A0_2._stage_progress_panels
  L3_2 = A0_2._cur_period_idx
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.wave_count
  L1_2 = L1_2 / L2_2
  A0_2._tween_end_val = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.ClientNowMsTimeStamp
  A0_2._tween_begin_time = L1_2
  A0_2._tween_total_time = 350
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1.play_move_to_next = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.ClientNowMsTimeStamp
  L2_2 = A0_2._tween_begin_time
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._tween_total_time
  L1_2 = L1_2 / L2_2
  if 1 < L1_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = L1_2
  ::lbl_16::
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Mathf
  L3_2 = L3_2.SmoothStep
  L4_2 = A0_2._tween_start_val
  L5_2 = A0_2._tween_end_val
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._stage_progress_panels
  L5_2 = A0_2._cur_period_idx
  L4_2 = L4_2[L5_2]
  L5_2 = L4_2
  L4_2 = L4_2.setup_progress_fill_amount
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if 1 <= L1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._remove_tick
    L4_2(L5_2)
  end
end
L0_1._on_tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._stage_progress_panels
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._stage_progress_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._period_id_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattleEvolveBuildStageProgressPanel
    L8_2 = G
    L8_2 = L8_2.BattleEvolveBuildStageProgressPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = nil
    L7_2 = L4_1
    if L4_2 == L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta_stage_root
      L9_2 = L9_2.MultiPrefabList
      L10_2 = L3_1
      L9_2 = L9_2[L10_2]
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_root
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    else
      L7_2 = A0_2._period_id_table
      L7_2 = #L7_2
      if L4_2 ~= L7_2 then
        L7_2 = L4_1
        L7_2 = L7_2 - 1
        if L4_2 ~= L7_2 then
          goto lbl_52
        end
      end
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta_stage_root
      L9_2 = L9_2.MultiPrefabList
      L10_2 = L2_1
      L9_2 = L9_2[L10_2]
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_root
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
      goto lbl_62
      ::lbl_52::
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta_stage_root
      L9_2 = L9_2.MultiPrefabList
      L10_2 = L1_1
      L9_2 = L9_2[L10_2]
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_root
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    end
    ::lbl_62::
    L8_2 = L5_2
    L7_2 = L5_2.bind
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._stage_progress_panels
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_stage_progress_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      L0_3 = L0_3.is_destroyed
      if not L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._set_current_avatar
        L2_3 = A0_2._cur_period_idx
        L3_3 = A0_2._cur_wave
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  L1_2(L2_2)
end
L0_1._setup_current_avatar = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      L0_3 = L0_3.is_destroyed
      if not L0_3 then
        L0_3 = A0_2._cur_period_idx
        if L0_3 == 1 then
          L0_3 = A0_2._binder
          L0_3 = L0_3.node_start_point
          L0_3 = L0_3.position
          L1_3 = A0_2._binder
          L1_3 = L1_3.node_current_tag
          L1_3 = L1_3.position
          L2_3 = L0_3.x
          L1_3.x = L2_3
          L2_3 = A0_2._binder
          L2_3 = L2_3.node_current_tag
          L2_3.position = L1_3
        else
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.GameCore
          L0_3 = L0_3.EvolveBuildStagePeriodExcelTable
          L0_3 = L0_3.GetData
          L1_3 = A0_2._period_id_table
          L2_3 = A0_2._cur_period_idx
          L2_3 = L2_3 - 1
          L1_3 = L1_3[L2_3]
          L0_3 = L0_3(L1_3)
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._set_current_avatar
          L3_3 = A0_2._cur_period_idx
          L3_3 = L3_3 - 1
          L4_3 = L0_3.WaveCount
          L1_3(L2_3, L3_3, L4_3)
        end
      end
    end
  end
  L1_2(L2_2)
end
L0_1._set_current_avatar_to_start_point = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._stage_progress_panels
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.get_wave_point_world_pos
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_current_tag
  L5_2 = L5_2.position
  L6_2 = L3_2.x
  L5_2.x = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_current_tag
  L6_2.position = L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_current_tag
  L6_2 = L6_2.anchoredPosition
  L7_2 = L6_2.x
  L7_2 = L7_2 - L4_2
  L6_2.x = L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_current_tag
  L7_2.anchoredPosition = L6_2
  L7_2 = A0_2._open_with_dialog
  if not L7_2 then
    L7_2 = A0_2._stage_progress_panels
    L7_2 = L7_2[A1_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_fill_amount_by_wave
    L9_2 = A2_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2._stage_progress_panels
    L7_2 = L7_2[A1_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_fill_amount_by_wave
    L9_2 = A2_2 - 1
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_current_avatar = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_wave
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_total_wave
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2._period_id_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._stage_progress_panels
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_stage_wave
    L7_2 = L7_2(L8_2)
    L1_2 = L1_2 + L7_2
    L7_2 = A0_2._cur_period_idx
    if L6_2 < L7_2 then
      L7_2 = A0_2._stage_progress_panels
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2
      L7_2 = L7_2.get_stage_wave
      L7_2 = L7_2(L8_2)
      L2_2 = L2_2 + L7_2
    end
  end
  L3_2 = A0_2._cur_wave
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_wave
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total_wave
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._set_wave_num = L7_1
return L0_1
