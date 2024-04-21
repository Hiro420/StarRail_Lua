local L0_1, L1_1, L2_1, L3_1
L0_1 = 0.2
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleyPackVideoPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._adapt_ratio
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_video
  L1_2(L2_2)
  A0_2._video_finish_callback = nil
  A0_2._video_finish_callback_self = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._video_finish_callback = A1_2
  A0_2._video_finish_callback_self = A2_2
end
L1_1.register_video_finish = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyPlayVideo
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_transfer_black_out
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = L0_1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._mana_player
    if L0_3 == nil then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.ManaVideoPlayer
      L0_3 = L0_3.CreatePlayer
      L1_3 = A0_2._binder
      L1_3 = L1_3.image_trans
      L1_3 = L1_3.gameObject
      L2_3 = false
      L3_3 = true
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      A0_2._mana_player = L0_3
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_video_path
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 == nil then
      return
    end
    L1_3 = A0_2._mana_player
    L2_3 = L1_3
    L1_3 = L1_3.SetVideoID
    L3_3 = A1_2
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._mana_player
    L2_3 = L1_3
    L1_3 = L1_3.SetVideoPath
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._mana_player
    L2_3 = L1_3
    L1_3 = L1_3.SetCallbackAction
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._on_start_play
      L0_4(L1_4)
    end
    function L4_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._on_finish_play
      L0_4(L1_4)
    end
    function L5_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._on_before_play
      L0_4(L1_4)
    end
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._play_transfer_black_in
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.pause_video
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._mana_player
    L2_3 = L1_3
    L1_3 = L1_3.Play
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L1_1.play_video = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.VideoConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.VideoPath
    return L3_2
  end
end
L1_1._get_video_path = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_start_play = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._video_finish_callback
  L3_2 = A0_2._video_finish_callback_self
  L1_2(L2_2, L3_2)
end
L1_1._on_finish_play = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._adapt_ratio
  L1_2(L2_2)
end
L1_1._on_before_play = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mana_player
  if L2_2 ~= nil then
    L2_2 = A0_2._mana_player
    L3_2 = L2_2
    L2_2 = L2_2.Pause
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.pause_video = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.pause_video
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1.stop_video = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L1_1.clear_video = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.pause_video
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_finish_play
    L0_3(L1_3)
  end
  L4_2 = 0.2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.skip_to_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.skip_to_end
  L1_2(L2_2)
end
L1_1._on_btn_skip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_video_ratio
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_screen_ratio
  L2_2 = L2_2(L3_2)
  if 0 < L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_aspect_ratio_fitter
    L3_2.aspectRatio = L1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_aspect_ratio_fitter
  L3_2.aspectRatio = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_aspect_ratio_fitter
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.AspectRatioFitter
  L4_2 = L4_2.AspectMode
  L4_2 = L4_2.EnvelopeParent
  L3_2.aspectMode = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_aspect_ratio_fitter
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.AspectRatioFitter
  L4_2 = L4_2.AspectMode
  L4_2 = L4_2.FitInParent
  L3_2.aspectMode = L4_2
end
L1_1._adapt_ratio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.GetVideoRatio
    return L1_2(L2_2)
  end
  L1_2 = 0
  return L1_2
end
L1_1._get_video_ratio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L1_2 = L1_2 / L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.MIN_ASPECT_RATIO
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.MAX_ASPECT_RATIO
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  return L1_2
end
L1_1._get_screen_ratio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._play_screen_transfer
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.PlayScreenTransfer
    L1_2 = L1_2()
    A0_2._play_screen_transfer = L1_2
    L1_2 = A0_2._play_screen_transfer
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ScreenTransferType
    L2_2 = L2_2.Black
    L1_2.Type = L2_2
    L1_2 = A0_2._play_screen_transfer
    L2_2 = L0_1
    L1_2.CustomTime = L2_2
  end
  L1_2 = A0_2._play_screen_transfer
  return L1_2
end
L1_1._get_screen_transfer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_screen_transfer
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferMode
  L2_2 = L2_2.SwitchOut
  L1_2.Mode = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.OpenScreenTransferDialog
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ScreenTransferReason
  L5_2 = L5_2.Default
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._play_transfer_black_out = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_screen_transfer
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferMode
  L2_2 = L2_2.SwitchIn
  L1_2.Mode = L2_2
  L1_2.CustomTime = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.NotifyPlayScreenTransfer
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ScreenTransferReason
  L5_2 = L5_2.Default
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._play_transfer_black_in = L2_1
return L1_1
