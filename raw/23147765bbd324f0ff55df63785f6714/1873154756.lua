local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialControlPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.ClockBoyInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialControlPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
L2_1 = 3000
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ClockBoyInfoPanel
  L4_2 = G
  L4_2 = L4_2.ClockBoyInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._clock_boy_panel = L1_2
  L1_2 = A0_2._clock_boy_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_clockboy_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_left_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_right_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_disable
  L4_2 = A0_2._on_btn_disable
  L1_2(L2_2, L3_2, L4_2)
  A0_2._cd_timer = 0
  A0_2._is_waiting_no_voice_talk = false
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._dialogue_entity = A1_2
  L2_2 = A0_2._dialogue_entity
  L2_2 = L2_2.RuntimeID
  A0_2._dialogueNpcRuntimeID = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDialogueRowByRuntimeID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._dialogue_row = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = A0_2._dialogue_row
  L4_2 = L4_2.ControlTalkList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._talk_index = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_waiting_no_voice_talk
  if L2_2 ~= true then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeUtils
  L2_2 = L2_2.ClientNowMsTimeStamp
  L3_2 = A0_2._cd_timer
  L2_2 = L2_2 - L3_2
  L3_2 = L2_1
  if L2_2 > L3_2 then
    A0_2._is_playing_voice = false
    A0_2._is_waiting_no_voice_talk = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_warning_tip
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "ClockBoyMainPageWarning_FadeOut"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._dialogue_entity
  if L1_2 ~= nil then
    L1_2 = A0_2._dialogue_entity
    L2_2 = L1_2
    L1_2 = L1_2.GetComponent
    L3_2 = typeof
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.NPCComponent
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.GetNPCName
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_npc_name
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L1_2 = A0_2._spine_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._spine_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._spine_timer = nil
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_root
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = "Order_Open"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._spine_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_spine_end
  L4_2 = A0_2._spine_anim
  L4_2 = L4_2.AnimationEnd
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spine_timer = L1_2
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_root
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = "Order_Loop"
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._spine_anim = L1_2
end
L0_1._on_spine_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_playing_voice
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TalkSentenceConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._dialogue_row
  L2_2 = L2_2.ControlTalkList
  L3_2 = A0_2._talk_index
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._talk_index
  L2_2 = L2_2 + 1
  A0_2._talk_index = L2_2
  L2_2 = A0_2._talk_index
  L3_2 = A0_2._dialogue_row
  L3_2 = L3_2.ControlTalkList
  L3_2 = L3_2.Length
  if L2_2 >= L3_2 then
    A0_2._talk_index = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "ClockBoyMainPageWarning_FadeIn"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TalkSentenceText
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_voice
  L4_2 = L1_2.VoiceID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeUtils
  L2_2 = L2_2.ClientNowMsTimeStamp
  A0_2._cd_timer = L2_2
end
L0_1._play_control_talk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_playing_voice
  if L1_2 == true then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEventID
    L3_2 = A0_2._playing_voice_event_id
    L1_2(L2_2, L3_2)
    A0_2._is_playing_voice = false
    A0_2._playing_voice_event_id = 0
  end
end
L0_1._stop_voice = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_voice
  L2_2(L3_2)
  L2_2 = A0_2._use_voice
  if L2_2 == false then
    return
  end
  if A1_2 ~= nil and 0 < A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostVoice
    L4_2 = A1_2
    L5_2 = nil
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._on_voice_end
      L4_3 = A1_2
      L2_3(L3_3, L4_3)
    end
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2._playing_voice_event_id = L2_2
    L2_2 = A0_2._playing_voice_event_id
    L2_2 = 0 ~= L2_2
    if L2_2 then
      A0_2._is_playing_voice = true
    else
      A0_2._is_waiting_no_voice_talk = true
    end
  end
end
L0_1._play_voice = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_disposed
  if not L2_2 then
    L2_2 = A0_2._is_playing_voice
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  A0_2._playing_voice_event_id = 0
  A0_2._is_playing_voice = false
  A0_2._is_waiting_no_voice_talk = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "ClockBoyMainPageWarning_FadeOut"
  L2_2(L3_2, L4_2)
end
L0_1._on_voice_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_click_anim
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.ClientNowMsTimeStamp
  L2_2 = A0_2._cd_timer
  L1_2 = L1_2 - L2_2
  L2_2 = L2_1
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_control_talk
    L1_2(L2_2)
  end
end
L0_1._on_left_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_click_anim
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.ClientNowMsTimeStamp
  L2_2 = A0_2._cd_timer
  L1_2 = L1_2 - L2_2
  L2_2 = L2_1
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_control_talk
    L1_2(L2_2)
  end
end
L0_1._on_right_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_click_anim
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.ClientNowMsTimeStamp
  L2_2 = A0_2._cd_timer
  L1_2 = L1_2 - L2_2
  L2_2 = L2_1
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_control_talk
    L1_2(L2_2)
  end
end
L0_1._on_btn_disable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_root
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = "Order_Click"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._spine_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_spine_end
  L4_2 = A0_2._spine_anim
  L4_2 = L4_2.AnimationEnd
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spine_timer = L1_2
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_click_anim = L3_1
return L0_1
