local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = "UIText_PhotoGraph_Identify_Pending_Shot_Disable"
L1_1 = "SpriteOutput/CameraIcon/IconShotDisable.png"
L2_1 = "SpriteOutput/CameraIcon/IconShot.png"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhotoGraphShotPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphFuncSwitchPerspective
  L4_2 = A0_2._on_perspective_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyStateChanged
  L4_2 = L3_1._on_identify_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphShot
  L4_2 = A0_2._on_shot
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  A0_2._is_firsr_person_perspective = A1_2
end
L3_1._on_perspective_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IdentifyState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphIdentifyState
  L3_2 = L3_2.IdentifyPending
  L2_2 = L2_2 == L3_2
  A0_2._is_identify_pending = L2_2
end
L3_1._on_identify_state_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._disable_shot
  if L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.get_cur_photograph_mode
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.is_identify_mode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._is_identify_pending
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = L0_1
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._report_short
      L5_2 = false
      L3_2(L4_2, L5_2)
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._report_short
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.SkipPhotoPreviewDialog
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.PhotoGraphResultDialogExited
    L3_2(L4_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.set_billboard_show_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BillboardShowType
  L4_2 = L4_2.AllClose
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.get_cur_frame_texture
  L3_2 = L3_2()
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.PhotoGraph.PhotoResultDialog"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_result_texture
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_exit_callback
  function L7_2()
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
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L3_1._on_shot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.get_cur_photograph_mode
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.is_identify_mode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.SDKLuaReportAdapter
    L4_2 = L4_2.ReportUIButtonClick
    L5_2 = A0_2._owner
    L5_2 = L5_2.__name
    L6_2 = "FirstPerson"
    L7_2 = "PhotoBtn_identify"
    L8_2 = A0_2._owner
    L8_2 = L8_2.guid
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = "ThirdPerson"
  L5_2 = A0_2._is_firsr_person_perspective
  if L5_2 then
    L4_2 = "FirstPerson"
  end
  L5_2 = "PhotoBtn_fail"
  if A1_2 then
    L5_2 = "PhotoBtn_success"
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.SDKLuaReportAdapter
  L6_2 = L6_2.ReportUIButtonClick
  L7_2 = A0_2._owner
  L7_2 = L7_2.__name
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = A0_2._owner
  L10_2 = L10_2.guid
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_NetworkManager
  L7_2 = L6_2
  L6_2 = L6_2.HEDPFGIMNJI
  L6_2(L7_2)
end
L3_1._report_short = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = not A1_2
  A0_2._disable_shot = L2_2
end
L3_1.set_shot_handler_enable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_shot_icon
    L5_2 = L2_1
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_shot_icon
    L5_2 = L1_1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1.set_shot_btn_show_state = L4_1
return L3_1
