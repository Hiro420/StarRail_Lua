local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L4_1 = require
L5_1 = "Ui.Share.ShareDialogBinder"
L4_1(L5_1)
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ShareDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ShareDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.lock_roaming_input
  L1_2()
  A0_2._is_save_enabled = false
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._share_id = A1_2
end
L4_1.set_share_id = L5_1
function L5_1(A0_2, A1_2)
  A0_2._cur_photo_texture = A1_2
end
L4_1.set_result_texture = L5_1
function L5_1(A0_2, A1_2)
  A0_2._share_reward = A1_2
end
L4_1.set_share_reward = L5_1
function L5_1(A0_2, A1_2)
  A0_2._source = A1_2
end
L4_1.set_report_source = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_save_enabled = A1_2
end
L4_1.enable_save = L5_1
function L5_1(A0_2, A1_2)
  A0_2._override_sorting_order = A1_2
end
L4_1.set_override_sorting_order = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_btn_save
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
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
  L2_2 = L2_2.PhotoGraphResultDialogExited
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
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
L4_1._on_got_focus = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._apply_override_sorting_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_photo
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "CameraResultDialog_FadeIn"
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._override_sorting_order
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_root
    L1_2.overrideSorting = true
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_root
    L2_2 = A0_2._override_sorting_order
    L1_2.sortingOrder = L2_2
  end
end
L4_1._apply_override_sorting_order = L5_1
function L5_1(A0_2)
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
L4_1._show_photo = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_share_callback
  L3_2 = A0_2._on_start_share
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_report_source
  L3_2 = A0_2._source
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
L4_1._setup_share_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_save_enabled
  L1_2(L2_2, L3_2)
end
L4_1._refresh_func_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_exit = L5_1
function L5_1(A0_2)
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
L4_1._on_btn_save = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_btn_share = L5_1
function L5_1(A0_2)
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
L4_1._adjust_ui_for_aspect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._share_id
  if L1_2 then
    L1_2 = A0_2._share_reward
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.ShareModule
      L2_2 = L1_2
      L1_2 = L1_2.HasAvailableShareReward
      L3_2 = A0_2._share_id
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_share_reward
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._share_reward
        L1_2 = L1_2._textid
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.text_reward
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = A0_2._share_reward
          L3_2 = L3_2._textid
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._share_reward
          L1_2 = L1_2._textstr
          if L1_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.text_reward
            L2_2 = L1_2
            L1_2 = L1_2.SetCustomizedText
            L3_2 = A0_2._share_reward
            L3_2 = L3_2._textstr
            L1_2(L2_2, L3_2)
          end
        end
        L1_2 = A0_2._share_reward
        L1_2 = L1_2._icon_path
        if L1_2 then
          L2_2 = A0_2
          L1_2 = A0_2.load_sprite_to
          L3_2 = A0_2._binder
          L3_2 = L3_2.img_reward_icon
          L4_2 = A0_2._share_reward
          L4_2 = L4_2._icon_path
          L1_2(L2_2, L3_2, L4_2)
        end
        L1_2 = A0_2._share_reward
        L1_2 = L1_2._num
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_mul
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_num
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.text_reward_num
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetText
          L3_2 = A0_2._share_reward
          L3_2 = L3_2._num
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_mul
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = false
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_num
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = false
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L4_1._setup_share_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._share_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.BKKJHHMEEPB
    L3_2 = A0_2._share_id
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_start_share = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_root
  L1_2.overrideSorting = false
end
L4_1._on_unload = L5_1
return L4_1
