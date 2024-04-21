local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = 1.4
L2_1 = 1.5
L3_1 = 1.5
L4_1 = "CameraResultDialog_FadeIn"
L5_1 = "CameraResultDialog_FadeOut"
L6_1 = require
L7_1 = "Ui.PhotoGraph.PhotoResultDialogBinder"
L6_1(L7_1)
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PhotoResultDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhotoResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithCut
  A0_2._transition_style = L1_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.lock_roaming_input
  L1_2()
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhotoGraphEnableCameraMove
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  A0_2._cur_photo_texture = A1_2
end
L6_1.set_result_texture = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._hide_btn_panel = true
end
L6_1.hide_btn_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._adjust_ui_for_aspect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit
  L4_2 = A0_2._on_btn_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_btn_save
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = A0_2._on_btn_share
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_share
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.IsShareEnable
  L1_2(L2_2, L3_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._native
  if L1_2 then
    L1_2 = A0_2._native
    L1_2 = L1_2.IsExiting
    if L1_2 then
      return
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animation
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_photo_texture
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PhotoGraphUtils
    L1_2 = L1_2.release_capture_frame
    L1_2()
  end
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.unlock_roaming_input
  L1_2()
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhotoGraphEnableCameraMove
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhotoGraphResultDialogExited
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  A0_2._count_down_timer = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_already_entered
  if not L1_2 then
    A0_2._is_already_entered = true
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_canvas_group
  L1_2.alpha = 1
end
L6_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_photo
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_panel
  L1_2(L2_2)
  L1_2 = A0_2._hide_btn_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = 0.25
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_filter_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_photo_texture
  L1_2(L2_2, L3_2)
end
L6_1._show_photo = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_report_source
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ShareSource
  L3_2 = L3_2.PhotoGraph
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.photo_image_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_photo
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._setup_share_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L6_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.PhotoGraphSys
  if L2_2 ~= nil then
    L3_2 = L2_2.ExitWhenPreViewDialogFinish
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.PhotoGraphExit
      L3_2(L4_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.UIAnimationUtils
      L3_2 = L3_2.PlayFromBegin
      L4_2 = A0_2._binder
      L4_2 = L4_2.root_animation
      L5_2 = L5_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._count_down_timer
      L4_2 = L3_2
      L3_2 = L3_2.start
      L3_2(L4_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_timer_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2._cur_photo_texture
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "No texture to Save!!"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_photo
  L1_2(L2_2)
end
L6_1._on_btn_save = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PhotoGraph.PhotoEditor.PhotoEditPage"
  L3_2 = A0_2._cur_photo_texture
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_edit = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_btn_share = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Screen
    L1_2 = L1_2.width
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Screen
    L2_2 = L2_2.height
    L1_2 = L1_2 / L2_2
    L2_2 = L1_1
    if L1_2 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.rect_image
      L2_2 = L2_2.localScale
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_image
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector3
      L5_2 = L2_1
      L6_2 = L3_1
      L7_2 = L2_2.z
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.localScale = L4_2
    end
  end
end
L6_1._adjust_ui_for_aspect = L7_1
return L6_1
