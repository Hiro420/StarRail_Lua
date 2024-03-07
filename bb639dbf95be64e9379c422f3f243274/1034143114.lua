local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.DroneIdentifyPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = "PhotoGraph_Identify_Forbid_Shot"
L1_1 = "SpriteOutput/CameraIcon/IconShotDisable.png"
L2_1 = "SpriteOutput/CameraIcon/IconShot.png"
L3_1 = "UIText_PhotoGraph_Identify_Pending_Shot_Disable"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "DroneIdentifyPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DroneIdentifyPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._is_enable_func = true
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == true
  A0_2._is_shooting = L2_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 134
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shot
  L4_2 = A0_2._on_btn_shot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphExit
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyStateChanged
  L4_2 = L4_1._on_identify_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphEnableFunc
  L4_2 = A0_2._on_enable_func
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.close_waypoint_billboard
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.TrySetActionEnable
  L3_2 = "Menu_DroneGoDown"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.TrySetActionEnable
  L3_2 = "Menu_DroneGoUp"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._identify_state = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.FinishPhotoGraph
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.TrySetActionEnable
  L3_2 = "Menu_DroneGoDown"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.TrySetActionEnable
  L3_2 = "Menu_DroneGoUp"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_shooting
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_shooting
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.set_billboard_show_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BillboardShowType
  L2_2 = L2_2.AllClose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_frame_texture
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.PhotoGraph.PhotoResultDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_result_texture
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.PhotoGraphUtils
    L0_3 = L0_3.set_billboard_show_type
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.BillboardShowType
    L1_3 = L1_3.Warning
    L0_3(L1_3)
  end
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L4_1._on_btn_shot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_exit = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_enable_func = A1_2
end
L4_1._on_enable_func = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IdentifyState
  A0_2._identify_state = L2_2
  L2_2 = A0_2._identify_state
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphIdentifyState
  L3_2 = L3_2.IdentifyTargetAppear
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_shot_state_view
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._has_manual_aim_in_range
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_shot_state_view
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L4_1._on_identify_state_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_shot_icon
    L5_2 = L2_1
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_shot_icon
    L5_2 = L1_1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1._setup_shot_state_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.identify_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_manual_aim_entity_in_range
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L4_1._has_manual_aim_in_range = L5_1
return L4_1
