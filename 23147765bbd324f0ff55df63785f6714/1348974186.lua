local L0_1, L1_1, L2_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.PhotoGraphUtils
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "PhotoGraphUtils"
L1_1 = L1_1(L2_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1.set_waypoint_visible
  L1_2 = false
  L0_2(L1_2)
  L0_2 = L1_1.set_billboard_show_type
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BillboardShowType
  L1_2 = L1_2.Warning
  L0_2(L1_2)
end
L1_1.close_waypoint_billboard = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1.set_waypoint_visible
  L1_2 = true
  L0_2(L1_2)
  L0_2 = L1_1.set_billboard_show_type
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BillboardShowType
  L1_2 = L1_2.AllOpen
  L0_2(L1_2)
end
L1_1.reopen_waypoint_billboard = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SwitchAdventureWaypointVisible
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.set_waypoint_visible = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetBillboardStatusManager
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.SetGlobalBoardShowType
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L1_1.set_billboard_show_type = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.GetCurPhotoGraphMode
  return L0_2()
end
L1_1.get_cur_photograph_mode = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.GetEmotionAvatarID
  return L0_2()
end
L1_1.get_em_avatar_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.ResetEmotion
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1.reset_emotion = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.SetEmotion
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_emotion = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1.SetFreeStyle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1.set_freestyle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.ExitFreeStyle
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1.exit_freestyle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.RegisterIdleShowEndCallback
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.register_idleshow_end_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.TriggerIdleShow
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.trigger_idleshow = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.UpdateAllowIdleShow
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.update_allow_idle_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.IsAllowIdleShow
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_allow_idle_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.IsInIdleShow
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_in_idle_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.IsTurnInPlace
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_in_steer = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.InitPhotoGraphSettings
  L1_2 = L1_1.get_cur_photograph_mode
  L1_2 = L1_2()
  L0_2(L1_2)
end
L1_1.init_photograph_settings = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.GetCurFrameTexture
  return L0_2()
end
L1_1.get_cur_frame_texture = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.ReleaseCaptureFrame
  L0_2()
end
L1_1.release_capture_frame = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.LockRoamingInput
  L0_2()
end
L1_1.lock_roaming_input = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.UnlockRoamingInput
  L0_2()
end
L1_1.unlock_roaming_input = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.PhotoGraphSys
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetRoamingStyleFromGraphMode
    L4_2 = L1_1.get_cur_photograph_mode
    L4_2 = L4_2()
    return L2_2(L3_2, L4_2)
  end
end
L1_1.get_roaming_style = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1.get_roaming_style
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PhotoGraphModule
    L2_2 = L1_2
    L1_2 = L1_2.GetRoamingConfig
    L3_2 = L0_2
    return L1_2(L2_2, L3_2)
  end
end
L1_1.get_roaming_config = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.PhotoGraphSys
  L3_2 = L1_2
  L2_2 = L1_2.GetInitFov
  return L2_2(L3_2)
end
L1_1.get_camera_init_fov = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.IsIdentifyMode
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_identify_mode = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsType
    L2_2 = L0_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AdventurePhase
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_23
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_23::
  L1_2 = L0_2.IsInDanger
  if not L1_2 then
    L1_2 = L0_2.PhotoGraphSys
    L2_2 = L1_2
    L1_2 = L1_2.IsInTutorial
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_33
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_33::
  L1_2 = true
  return L1_2
end
L1_1.is_enable_identify = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.SetCameraZoomEnable
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1.set_camera_zoom_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.SetCameraRotateEnable
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1.set_camera_rotate_enable = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1.is_enable_puzzle_func_identify
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L1_1.is_enable_identify
  return L0_2()
end
L1_1.is_enable_short_cut_wheel_identify = L2_1
L1_1.is_enable_puzzle_func_identify = false
return L1_1
