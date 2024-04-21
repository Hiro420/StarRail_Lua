local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteHintDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = 2
L4_1 = "GuessPhotoUnlockShow"
L5_1 = 0.1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._silhouette_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_from_result = L3_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_zoom_photo
  L4_2 = A0_2._on_click_zoom_photo
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_click_go
  L1_2(L2_2, L3_2, L4_2)
  A0_2._cur_day_progress = 1
  L1_2 = L3_1
  A0_2._cur_day_total_progress = L1_2
  A0_2._next_silhouette_data = nil
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_photo_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_from_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_eff_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_from_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_from_result
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_unlock
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._block_count_down
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_gamepad_hint
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._silhouette_data
  L3_2 = L3_2.IsShowEventUI
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._silhouette_data
  L1_2 = L1_2.IsShowEventUI
  if not L1_2 then
    A0_2._cur_day_progress = 1
    A0_2._cur_day_total_progress = 1
    return
  end
  L1_2 = L1_1.ActivityGuessTheSilhouetteDayIndexDict
  L2_2 = A0_2._silhouette_data
  L2_2 = L2_2.Day
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.Count
  L3_2 = L3_1
  if L2_2 > L3_2 then
    L2_2 = L3_1
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = L1_2.Count
  ::lbl_31::
  A0_2._cur_day_total_progress = L2_2
  L3_2 = 0
  L4_2 = A0_2._cur_day_total_progress
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ActivityGuessTheSilhouetteDataStatus
    L8_2 = L8_2.Completed
    if L7_2 == L8_2 then
      L7_2 = A0_2._cur_day_progress
      L7_2 = L7_2 + 1
      A0_2._cur_day_progress = L7_2
    end
  end
  L3_2 = A0_2._is_from_result
  if L3_2 then
    L3_2 = A0_2._cur_day_progress
    L3_2 = L3_2 + 1
    A0_2._cur_day_progress = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_progress_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivityGuessSilhouette_DailyProgress"
  L6_2 = A0_2._cur_day_progress
  L7_2 = A0_2._cur_day_total_progress
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_progress = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_photo_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._silhouette_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Aim01
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_photo
  L4_2 = A0_2._silhouette_data
  L4_2 = L4_2.SilhouetteIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_photo_eff
  L4_2 = A0_2._silhouette_data
  L4_2 = L4_2.SilhouetteIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_photo_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Scroll"
    L6_2 = "ActionGroup_OpenPhotoByX"
    L7_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 152
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_gamepad_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteZoomDialog"
  L3_2 = A0_2._silhouette_data
  L1_2(L2_2, L3_2)
end
L0_1._on_click_zoom_photo = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L2_2 = L5_1
  L1_2 = L1_2 + L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_enable_exit_timer_end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._enable_exit_timer = L2_2
  L2_2 = A0_2._enable_exit_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._enable_exit_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = nil
  L7_2 = false
  L8_2 = "ActivityGuessTheSilhouetteHintDialog"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._block_id = L2_2
end
L0_1._block_count_down = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
  end
  A0_2._block_id = nil
end
L0_1._on_enable_exit_timer_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionDataWithPromise
  L3_2 = A0_2._silhouette_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.FinishSubMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    A0_2._finish_sub_mission_data = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_exit
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_click_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_bg = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._finish_sub_mission_data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.MissionUtils
    L1_2 = L1_2.check_player_is_in_target_submission_map
    L2_2 = A0_2._finish_sub_mission_data
    L2_2 = L2_2.ID
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = L2_1
      L2_2 = L1_2
      L1_2 = L1_2.TryGetMainMissionData
      L3_2 = A0_2._silhouette_data
      L3_2 = L3_2.Row
      L3_2 = L3_2.MissionID
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = G
      L2_2 = L2_2.MissionUtils
      L2_2 = L2_2.open_map_with_locate_target_main_mission
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
  L1_2 = A0_2._is_from_result
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.GuessTheSilhouetteOnResultClose
    L1_2(L2_2)
  end
end
L0_1._on_unload = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
return L0_1
