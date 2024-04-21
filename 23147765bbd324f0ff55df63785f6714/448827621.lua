local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MusicItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MusicAlbumModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.GetAdventureAudioManager
    L4_2 = L4_2(L5_2)
  end
  A0_2._adv_audio_manager = L4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_self = A1_2
  A0_2._click_func = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = L4_2
  L4_2 = L4_2.ClearAnimationState
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.root_animator
  L5_2 = L4_2
  L4_2 = L4_2.SetTrigger
  L6_2 = "Stop"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_new
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  A0_2._index = A1_2
  A0_2._music_info = A2_2
  L4_2 = A2_2.music_row
  A0_2._music_row = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_AudioManager
  L5_2 = L4_2
  L4_2 = L4_2.GetJukeBoxMusicTime
  L6_2 = A0_2._music_row
  L6_2 = L6_2.MusicSwitchName
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._music_time = L4_2
  L4_2 = L1_1.CurUseMusicID
  L5_2 = A0_2._music_row
  L5_2 = L5_2.ID
  L4_2 = L4_2 == L5_2
  A0_2._is_using = L4_2
  L4_2 = A2_2.is_un_lock
  A0_2._is_un_lock = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._music_row
  L6_2 = L6_2.MusicName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_un_lock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_using
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_un_lock
  if L6_2 then
    L6_2 = A0_2._is_using
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_playing
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_un_lock
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_play
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_un_lock
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_un_lock
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group_title
    L4_2.alpha = 1
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group_title
    L4_2.alpha = 0.5
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_total_time_view
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_checked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_checked_force = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_un_lock
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_playing
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_play
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_played_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_cut
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonoLuaCallbackTick
    L2_2 = L2_2.Get
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L3_2 = L3_2.gameObject
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.SetLuaCallback
    L5_2 = A0_2._setup_played_time_view
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._try_play_playing
    L3_2(L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Stop"
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_playing = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_un_lock
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_new
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentAnimatorStateInfo
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsName
    L4_2 = "Playing"
    L2_2 = L2_2(L3_2, L4_2)
  end
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.root_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Playing"
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_play_playing = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_played_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_cut
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_total_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = "00"
  L2_2 = "00"
  L3_2 = A0_2._music_time
  if 60 <= L3_2 then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.add_zero_front_num
    L4_2 = 2
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = A0_2._music_time
    L6_2 = L6_2 / 60
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L1_2 = L3_2
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.add_zero_front_num
    L4_2 = 2
    L5_2 = math
    L5_2 = L5_2.fmod
    L6_2 = A0_2._music_time
    L7_2 = 60
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2 = L3_2
  else
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.add_zero_front_num
    L4_2 = 2
    L5_2 = A0_2._music_time
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress_total_min
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress_total_sec
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_total_time_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._adv_audio_manager
  if L1_2 == nil then
    return
  end
  L1_2 = "00"
  L2_2 = "00"
  L3_2 = 0
  L4_2 = A0_2._adv_audio_manager
  L5_2 = L4_2
  L4_2 = L4_2.GetJukeBoxPlayingPosition
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  if 60 <= L3_2 then
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.add_zero_front_num
    L5_2 = 2
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L3_2 / 60
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L1_2 = L4_2
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.add_zero_front_num
    L5_2 = 2
    L6_2 = math
    L6_2 = L6_2.fmod
    L7_2 = L3_2
    L8_2 = 60
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L2_2 = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.add_zero_front_num
    L5_2 = 2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.fill_progress
  L5_2 = A0_2._music_time
  L5_2 = L3_2 / L5_2
  L4_2.fillAmount = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_progress_played_min
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_progress_played_sec
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_played_time_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_func
  if L1_2 then
    L1_2 = A0_2._click_func
    L2_2 = A0_2._click_self
    L3_2 = A0_2._index
    L4_2 = A0_2._music_info
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_root_click = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._adv_audio_manager = nil
end
L0_1._on_dispose = L2_1
return L0_1
