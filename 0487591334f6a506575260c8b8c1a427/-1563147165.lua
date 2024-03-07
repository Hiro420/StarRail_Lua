local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Debug.TestVersionUpdate.TestVersionUpdatePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.CsLua.CsToLua"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TestVersionUpdatePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TestVersionUpdatePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2.OnBtnCloseClick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.audio_startpack_update_btn
  L4_2 = A0_2.On_audio_startpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.audio_runpack_update_btn
  L4_2 = A0_2.On_audio_runpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.audio_addpack_update_btn
  L4_2 = A0_2.On_audio_addpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.video_startpack_update_btn
  L4_2 = A0_2.On_video_startpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.video_runpack_update_btn
  L4_2 = A0_2.On_video_runpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.video_addpack_update_btn
  L4_2 = A0_2.On_video_addpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.videolang_startpack_update_btn
  L4_2 = A0_2.On_videolang_startpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.videolang_runpack_update_btn
  L4_2 = A0_2.On_videolang_runpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.videolang_addpack_update_btn
  L4_2 = A0_2.On_videolang_addpack_update_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.soundbank_btn
  L4_2 = A0_2.On_soundbank_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.streamaudio_btn
  L4_2 = A0_2.On_streamaudio_btn
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L1_1.OnBtnCloseClick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayAudio
  L3_2 = "Ev_sfx_avatar_atk01_cast_playerboy"
  L2_2(L3_2)
end
L1_1.On_audio_startpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayAudio
  L3_2 = "Ev_sfx_avatar_atk01_cast_playerboy"
  L2_2(L3_2)
end
L1_1.On_audio_runpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayAudio
  L3_2 = "Ev_sfx_avatar_atk_maze_pela"
  L2_2(L3_2)
end
L1_1.On_audio_addpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayVideo
  L3_2 = "CS_Chap01_Act020.mp4"
  L2_2(L3_2)
end
L1_1.On_video_startpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayVideo
  L3_2 = "CS_C.mp4"
  L2_2(L3_2)
end
L1_1.On_video_runpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayVideo
  L3_2 = "CS_C-bak.mp4"
  L2_2(L3_2)
end
L1_1.On_video_addpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.Post
  L4_2 = "Ev_vo_external_story_play"
  L5_2 = nil
  L6_2 = nil
  L7_2 = "Voice/chapter1_0_beast_1.wem"
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.On_videolang_startpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.Post
  L4_2 = "Ev_vo_external_story_play"
  L5_2 = nil
  L6_2 = nil
  L7_2 = "Voice/chapter1_0_beast_2.wem"
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.On_videolang_runpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.Post
  L4_2 = "Ev_vo_external_story_play"
  L5_2 = nil
  L6_2 = nil
  L7_2 = "Voice/chapter1_0_beast_1-bak.wem"
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.On_videolang_addpack_update_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.PlayAudio
  L3_2 = A0_2._binder
  L3_2 = L3_2.soundbank_eventid_inputfield
  L3_2 = L3_2.text
  L2_2(L3_2)
end
L1_1.On_soundbank_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.Post
  L4_2 = "Ev_vo_external_story_play"
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2._binder
  L7_2 = L7_2.streamaudio_inputfield
  L7_2 = L7_2.text
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.On_streamaudio_btn = L2_1
return L1_1
