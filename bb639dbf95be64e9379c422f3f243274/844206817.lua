local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ScreenTransfer.ScreenTransferDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ScreenTransfer.ScreenTransferEntry"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScreenTransferDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ScreenTransferDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
  A0_2._is_resp_esc = false
  A0_2._is_special_above_dialog = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.SetAudioOpenScreenTrans
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIExitShortCutWheelDialog
  L1_2(L2_2)
  L1_2 = {}
  A0_2._entrys = L1_2
  A0_2._current_seq_id = 0
  A0_2._mask_alpha = 0
  A0_2._full_mask = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._mission_full_lock_ids = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.SetAudioOpenScreenTrans
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = false
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ToastPauseReason
  L4_2 = L4_2.ScreenTransfer
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2._entrys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._entrys
  L1_2(L2_2)
  A0_2._entrys = nil
  L1_2 = A0_2._mission_full_lock_ids
  if nil ~= L1_2 then
    L1_2 = A0_2._mission_full_lock_ids
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._mission_full_lock_ids
    L1_2(L2_2)
  end
  A0_2._mission_full_lock_ids = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayScreenTransfer
  L4_2 = L0_1._OnPlayScreenTransfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearScreenTransferMissionFullLock
  L4_2 = L0_1._OnClearScreenTransferMissionFullLock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_end_screen_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EndScreenTransfer
  L4_2 = L0_1._on_end_screen_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIReleaseAllCache
  L4_2 = L0_1._OnUIReleaseAllCache
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._OnBtnEmptyClose
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = true
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ToastPauseReason
  L4_2 = L4_2.ScreenTransfer
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2.TickInMonoBehaviour
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_color
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_transfer
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
  L1_2 = L0_1.super
  L1_2 = L1_2.exit
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.exit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._tick_entrys
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_panel
  L3_2 = L2_2
  L2_2 = L2_2.on_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.TickInMonoBehaviour = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._check_mission_full_lock
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_config
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._start_transfer
    L3_2(L4_2)
  end
end
L0_1._OnPlayScreenTransfer = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._clear_mission_full_lock
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._OnClearScreenTransferMissionFullLock = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._mission_full_lock_ids
  if L2_2 ~= nil then
    L2_2 = A0_2._mission_full_lock_ids
    L3_2 = L2_2
    L2_2 = L2_2.clear
    L2_2(L3_2)
  end
  L2_2 = false
  L3_2 = pairs
  L4_2 = A0_2._entrys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.is_keep_display
      L2_2 = L8_2 or L2_2
      if not L8_2 then
      end
      L9_2 = L7_2
      L8_2 = L7_2.on_adventure_phase_end
      L8_2(L9_2)
    end
  end
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L0_1._on_end_screen_transfer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._OnUIReleaseAllCache = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._add_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._curr_config = A1_2
end
L0_1._set_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._mission_full_lock_ids
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = A1_2.Reason
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferReason
  L3_2 = L3_2.Mission
  if L2_2 ~= L3_2 then
    L2_2 = true
    return L2_2
  end
  A0_2._mission_full_cache_closing = false
  L2_2 = A1_2.Mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.DirectlySet
  if L2_2 == L3_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A1_2.Mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.SwitchIn
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.Mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.FullTransfer
    if L2_2 ~= L3_2 then
      goto lbl_106
    end
  end
  L2_2 = A1_2.MissionFullLockID
  if 0 < L2_2 then
    L2_2 = A0_2._mission_full_lock_ids
    L3_2 = L2_2
    L2_2 = L2_2.remove
    L4_2 = A1_2.MissionFullLockID
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.Performance
    L4_2 = "[{0}]ScreenTransferLua closing remove fulllockID:[{1}] leftCount:[{2}]"
    L5_2 = tostring
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Time
    L6_2 = L6_2.frameCount
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = A1_2.MissionFullLockID
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = A0_2._mission_full_lock_ids
    L9_2 = L8_2
    L8_2 = L8_2.count
    L8_2, L9_2 = L8_2(L9_2)
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._mission_full_lock_ids
  L3_2 = L2_2
  L2_2 = L2_2.count
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L2_2 = true
    return L2_2
  else
    A0_2._mission_full_cache_closing = true
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.Performance
    L4_2 = "[{0}]ScreenTransferLua \232\162\171full lock\229\177\143\232\148\189 lock count:[{1}]"
    L5_2 = tostring
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Time
    L6_2 = L6_2.frameCount
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = A0_2._mission_full_lock_ids
    L8_2 = L7_2
    L7_2 = L7_2.count
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = false
    return L2_2
  end
  ::lbl_106::
  L2_2 = A1_2.Mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.SwitchOut
  if L2_2 == L3_2 then
    L2_2 = A1_2.MissionFullLockID
    if 0 < L2_2 then
      L2_2 = A0_2._mission_full_lock_ids
      L3_2 = L2_2
      L2_2 = L2_2.add
      L4_2 = A1_2.MissionFullLockID
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_mission_full_lock = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._mission_full_lock_ids
  if L2_2 == nil then
    return
  end
  L2_2 = A1_2
  if L2_2 == nil or L2_2 == 0 then
    L3_2 = A0_2._mission_full_lock_ids
    L4_2 = L3_2
    L3_2 = L3_2.clear
    L3_2(L4_2)
  else
    L3_2 = A0_2._mission_full_lock_ids
    L4_2 = L3_2
    L3_2 = L3_2.remove
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Performance
  L5_2 = "[{0}]ScreenTransferLua onNotify remove fulllockID:[{1}] leftCount:[{2}]"
  L6_2 = tostring
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Time
  L7_2 = L7_2.frameCount
  L6_2 = L6_2(L7_2)
  L7_2 = tostring
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L8_2 = tostring
  L9_2 = A0_2._mission_full_lock_ids
  L10_2 = L9_2
  L9_2 = L9_2.count
  L9_2, L10_2 = L9_2(L10_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A0_2._mission_full_lock_ids
  L4_2 = L3_2
  L3_2 = L3_2.count
  L3_2 = L3_2(L4_2)
  if 0 < L3_2 then
    return
  end
  L3_2 = A0_2._mission_full_cache_closing
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Performance
    L5_2 = "[{0}]ScreenTransferLua onNotify remove fulllockID:[{1}] startcacheclosing"
    L6_2 = tostring
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Time
    L7_2 = L7_2.frameCount
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L2_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.PlayScreenTransfer
    L3_2 = L3_2()
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ScreenTransferType
    L4_2 = L4_2.Black
    L3_2.Type = L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ScreenTransferMode
    L4_2 = L4_2.SwitchIn
    L3_2.Mode = L4_2
    L3_2.CustomTime = 0.5
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ScreenTransferReason
    L4_2 = L4_2.Mission
    L3_2.Reason = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._set_config
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._start_transfer
    L4_2(L5_2)
  end
  A0_2._mission_full_cache_closing = false
end
L0_1._clear_mission_full_lock = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Reason
  L3_2 = A0_2._entrys
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.ScreenTransferEntry
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = A0_2._entrys
    L4_2[L2_2] = L3_2
  end
  L4_2 = A0_2._current_seq_id
  L4_2 = L4_2 + 1
  A0_2._current_seq_id = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.set_config
  L6_2 = A1_2
  L7_2 = A0_2._current_seq_id
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._add_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._current_seq_id
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._entrys
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._entrys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.tick
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_send_notify
  L2_2(L3_2)
end
L0_1._tick_entrys = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._entrys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.wait_start
      if L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.start
        L8_2 = A0_2._mask_alpha
        L6_2(L7_2, L8_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._curr_config
  L1_2(L2_2, L3_2)
end
L0_1._start_transfer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = -1
  L4_2 = pairs
  L5_2 = A0_2._entrys
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = L8_2.mask_alpha
      if L1_2 < L9_2 then
        L1_2 = L8_2.mask_alpha
      end
      L9_2 = L8_2.text_alpha
      if L2_2 < L9_2 then
        L2_2 = L8_2.text_alpha
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_mask_alpha
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_text_alpha
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = true
  L3_2 = pairs
  L4_2 = A0_2._entrys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.is_open_finished
      if L8_2 then
        L7_2.is_open_finished = false
        L1_2 = true
      end
      L8_2 = A0_2._mask_alpha
      if not (0 < L8_2) then
        L8_2 = L7_2.is_close_finished
        if L8_2 then
          goto lbl_21
        end
      end
      L2_2 = false
    end
    ::lbl_21::
  end
  L3_2 = A0_2._mask_alpha
  if 1 <= L3_2 then
    A0_2._full_mask = true
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.PlayScreenTransferFullMask
    L5_2 = nil
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._full_mask
    if L3_2 then
      A0_2._full_mask = false
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.PlayScreenTransferExitFullMask
      L5_2 = nil
      L3_2(L4_2, L5_2)
    end
  end
  if L1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Performance
    L5_2 = "[{0}]ScreenTransferLua Notify PlayScreenTransferFinish open"
    L6_2 = tostring
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Time
    L7_2 = L7_2.frameCount
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.PlayScreenTransferFinish
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Performance
    L5_2 = "[{0}]ScreenTransferLua Notify PlayScreenTransferFinish close"
    L6_2 = tostring
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Time
    L7_2 = L7_2.frameCount
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.PlayScreenTransferFinish
    L5_2 = 0
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_send_notify = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._curr_config
  if L1_2 == nil then
    return
  end
  L1_2 = true
  L2_2 = A0_2._curr_config
  L2_2 = L2_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferType
  L3_2 = L3_2.White
  if L2_2 == L3_2 then
    L1_2 = false
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_color
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_mask_alpha
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_text_alpha
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L0_1._init_color = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_mask
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.black
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_mask
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.white
    L2_2.color = L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_color
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_color = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._mask_alpha = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mask
  L3_2 = L3_2.color
  L3_2.a = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_mask
  L4_2.color = L3_2
end
L0_1._set_mask_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.text_alpha = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_alpha
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._set_text_alpha = L1_1
return L0_1
