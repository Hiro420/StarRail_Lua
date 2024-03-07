local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Talk.TalkVideoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkVideoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._last_cg_id = 0
  A0_2._current_cg_id = 0
  A0_2._black_fade_duration = 0.5
  A0_2._black_timer = 0
  A0_2._black_fade_step = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2.TickInMonoBehaviour
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_black_mask_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_video_image_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._adapt_ratio
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_view
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_video
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_cmd
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1.exit_background = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if L2_2 == false then
    return
  end
  L2_2 = A0_2._black_fade_step
  if L2_2 == 1 then
    L2_2 = A0_2._black_timer
    L2_2 = L2_2 - A1_2
    A0_2._black_timer = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._set_black_mask_alpha
    L4_2 = A0_2._black_timer
    L5_2 = A0_2._black_fade_duration
    L4_2 = L4_2 / L5_2
    L4_2 = 1 - L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._black_timer
    if L2_2 < 0 then
      L2_2 = A0_2._black_fade_duration
      A0_2._black_timer = L2_2
      A0_2._black_fade_step = 2
      L3_2 = A0_2
      L2_2 = A0_2._set_background
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._black_fade_step
    if L2_2 == 2 then
      L3_2 = A0_2
      L2_2 = A0_2._set_black_mask_alpha
      L4_2 = 1
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._black_fade_step
      if L2_2 == 3 then
        L2_2 = A0_2._black_timer
        L2_2 = L2_2 - A1_2
        A0_2._black_timer = L2_2
        L3_2 = A0_2
        L2_2 = A0_2._set_black_mask_alpha
        L4_2 = A0_2._black_timer
        L5_2 = A0_2._black_fade_duration
        L4_2 = L4_2 / L5_2
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._black_timer
        if L2_2 < 0 then
          L2_2 = A0_2._black_fade_duration
          A0_2._black_timer = L2_2
          A0_2._black_fade_step = 0
          L2_2 = A0_2._current_cg_id
          if L2_2 <= 0 then
            L3_2 = A0_2
            L2_2 = A0_2.safe_set_active
            L4_2 = false
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end
L0_1.TickInMonoBehaviour = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Color
  L2_2 = L2_2.black
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferType
  L3_2 = L3_2.White
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L2_2 = L3_2.white
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.black_mask
  L3_2 = L3_2.color
  L3_2 = L3_2.a
  L2_2.a = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.black_mask
  L3_2.color = L2_2
end
L0_1._set_black_mask_color = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._set_image_alpha
  L4_2 = A0_2._binder
  L4_2 = L4_2.black_mask
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_black_mask_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._set_image_alpha
  L4_2 = A0_2._binder
  L4_2 = L4_2.video_image
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_video_image_alpha = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.color
  L3_2 = L3_2.a
  if L3_2 == A2_2 then
    return
  end
  L3_2 = A1_2.color
  L3_2.a = A2_2
  A1_2.color = L3_2
end
L0_1._set_image_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_cmd
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_show_talk_video = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A1_2.CgID
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = 0
  ::lbl_7::
  A0_2._current_cg_id = L2_2
  if A1_2 ~= nil then
    L2_2 = A1_2.SkipFadeIn
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = false
  ::lbl_14::
  if A1_2 ~= nil then
    L3_2 = A1_2.BGColor
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferType
  L3_2 = L3_2.Black
  ::lbl_24::
  L4_2 = A0_2._last_cg_id
  L5_2 = A0_2._current_cg_id
  if L4_2 ~= L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._set_black_mask_color
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if L2_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_37
      end
    end
    L4_2 = A0_2._black_fade_duration
    ::lbl_37::
    A0_2._black_timer = L4_2
    if L2_2 then
      L5_2 = A0_2
      L4_2 = A0_2._set_black_mask_alpha
      L6_2 = 1
      L4_2(L5_2, L6_2)
    end
    A0_2._black_fade_step = 1
    L4_2 = A0_2._current_cg_id
    A0_2._last_cg_id = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._adapt_ratio
  L4_2(L5_2)
  L4_2 = A0_2._current_cg_id
  if 0 < L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1._set_cmd = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_cg_id
  if 0 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.LoopCGConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._current_cg_id
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._play_video
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._stop_video
    L1_2(L2_2)
  end
end
L0_1._set_background = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._mana_player
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ManaVideoPlayer
    L2_2 = L2_2.CreatePlayer
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_trans
    L3_2 = L3_2.gameObject
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._mana_player = L2_2
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetModifiedFileNameByPlayerGender
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._mana_player
  L4_2 = L3_2
  L3_2 = L3_2.SetVideoPath
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._mana_player
  L4_2 = L3_2
  L3_2 = L3_2.SetCallbackAction
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._black_fade_step_enter_3
    L0_3(L1_3)
  end
  L6_2 = nil
  function L7_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._adapt_ratio
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_video_image_alpha
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._mana_player
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L3_2(L4_2)
end
L0_1._play_video = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._set_video_image_alpha
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._black_fade_step_enter_3
  L1_2(L2_2)
end
L0_1._stop_video = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._set_video_image_alpha
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L0_1._clear_video = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._black_fade_step
  if L1_2 == 2 then
    L1_2 = A0_2._black_fade_duration
    A0_2._black_timer = L1_2
    A0_2._black_fade_step = 3
  end
end
L0_1._black_fade_step_enter_3 = L1_1
function L1_1(A0_2)
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
L0_1._adapt_ratio = L1_1
function L1_1(A0_2)
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
L0_1._get_video_ratio = L1_1
function L1_1(A0_2)
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
L0_1._get_screen_ratio = L1_1
return L0_1
