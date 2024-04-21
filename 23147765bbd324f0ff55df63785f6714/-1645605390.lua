local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
L2_1 = "GuessTheSilhouetteFindPhotoDialog_FadeIn"
L3_1 = 2
L4_1 = 3
L5_1 = 0.3
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  A0_2._silhouette_data = A1_2
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
  A0_2._cur_day_progress = 0
  L1_2 = L3_1
  A0_2._cur_day_total_progress = L1_2
  A0_2._next_silhouette_data = nil
  A0_2._enable_exit = false
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
  L2_2 = A0_2
  L1_2 = A0_2._count_down
  L1_2(L2_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._silhouette_data
  L3_2 = L3_2.IsShowEventUI
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._silhouette_data
  L3_2 = L3_2.IsShowEventUI
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_mark
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
      goto lbl_43
    end
  end
  L2_2 = L1_2.Count
  ::lbl_43::
  A0_2._cur_day_total_progress = L2_2
  L2_2 = 0
  L3_2 = A0_2._cur_day_total_progress
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.ID
    L7_2 = A0_2._silhouette_data
    L7_2 = L7_2.ID
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._next_silhouette_data
      if L6_2 == nil then
        L6_2 = L1_2[L5_2]
        A0_2._next_silhouette_data = L6_2
      end
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.Status
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.ActivityGuessTheSilhouetteDataStatus
      L7_2 = L7_2.Completed
      if L6_2 == L7_2 then
        L6_2 = A0_2._cur_day_progress
        L6_2 = L6_2 + 1
        A0_2._cur_day_progress = L6_2
      end
    end
  end
  L2_2 = A0_2._cur_day_progress
  L2_2 = L2_2 + 1
  A0_2._cur_day_progress = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityGuessSilhouette_DailyProgress"
  L5_2 = A0_2._cur_day_progress
  L6_2 = A0_2._cur_day_total_progress
  L2_2(L3_2, L4_2, L5_2, L6_2)
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
  L3_2 = L3_2.Aim02
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_photo
  L4_2 = A0_2._silhouette_data
  L4_2 = L4_2.KeyIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_silhouette
  L4_2 = A0_2._silhouette_data
  L4_2 = L4_2.SilhouetteIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_photo_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_find
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentAnimatorStateInfo
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  if L1_2 == nil then
    L2_2 = L4_1
  else
    L3_2 = L1_2.length
    L4_2 = L5_1
    L2_2 = L3_2 + L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_enable_exit_timer_end
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._enable_exit_timer = L3_2
  L3_2 = A0_2._enable_exit_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._enable_exit_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L0_1._count_down = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._enable_exit = true
end
L0_1._on_enable_exit_timer_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_gamepad_hint = L6_1
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
  L1_2 = A0_2._enable_exit
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_day_progress
  L2_2 = A0_2._cur_day_total_progress
  if L1_2 < L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteHintDialog"
    L3_2 = A0_2._next_silhouette_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
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
