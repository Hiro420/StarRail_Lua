local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Talk.SimpleTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SimpleTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "SimpleTalk_Voice_IntervalTime"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "SimpleTalk_ProtectTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_auto = false
  A0_2._protect_time = 0
  A0_2._force_time = 0
  A0_2._talk_infos = nil
  A0_2._current_index = 0
  A0_2._is_playing_voice = false
  A0_2._is_waiting_text_motion = false
  A0_2._is_finished = false
  A0_2._auto_timer = nil
  A0_2._current_voice_id = 0
  A0_2._playing_voice_event_id = 0
  L2_2 = A0_2
  L1_2 = A0_2._reset_auto_finish_param
  L1_2(L2_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_control_button
  L2_2.ActionEnabled = A1_2
end
L0_1.setup_action_enabled = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 0
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.AddUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_simple_talk
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = L0_1._on_language_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SkipTalk
  L4_2 = L0_1.on_skip_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_simple_talk
  L4_2 = A0_2._on_btn_simple_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeStart
  L4_2 = A0_2._on_swipe_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.Resume
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.RemoveUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_simple_talk
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.stop_talk
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_auto = A1_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._stop_auto_timer
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_end_protection
    L2_2(L3_2)
  end
end
L0_1.set_auto = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = true
    A1_2 = L2_2 or A1_2
    if not L2_2 then
    end
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._protect_time = 0
  L3_2 = A0_2
  L2_2 = A0_2._stop_ongoing_talk
  L2_2(L3_2)
  A0_2._talk_infos = nil
  A0_2._current_index = 0
end
L0_1.stop_talk = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.SimpleTalkList
  if L3_2 ~= nil then
    L3_2 = A1_2.SimpleTalkList
    L3_2 = L3_2.Length
    if L3_2 ~= 0 then
      goto lbl_14
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogErrorFormat
  L4_2 = "invalid simple talk list"
  L3_2(L4_2)
  do return end
  ::lbl_14::
  A0_2._interactable = true
  A0_2._is_pause = false
  L3_2 = A0_2._binder
  L3_2 = L3_2.motion_content
  L4_2 = L3_2
  L3_2 = L3_2.Resume
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.UseBackground
  A0_2._use_background = L3_2
  L3_2 = A1_2.IsFromTimeline
  A0_2._is_from_timeline = L3_2
  L3_2 = A1_2.UseTargetBehavior
  A0_2._use_target_behavior = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._generate_talk_infos
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._talk_infos = L3_2
  A0_2._is_finished = false
  A0_2._current_index = 1
  L3_2 = A1_2.KeepDisplay
  A0_2._keep_display = L3_2
  L3_2 = A1_2.SkipFirstTalkBgFadeIn
  A0_2._skip_first_talk_bg_fadein = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.set_bg_img
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_current_talk
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_bg_img = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_simple_talk_info_with_talk_sentence_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_voice
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_talker_name
  L5_2 = L2_2.name_id
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_motion_text
  L5_2 = L2_2.content_id
  L6_2 = L2_2.TextSpeed
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view_with_single_talk_sentence_id = L3_1
function L3_1(A0_2, A1_2)
  A0_2._will_directly_finish = A1_2
end
L0_1.set_finish_talk_config = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._interactable = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_talk_btn
  L2_2(L3_2)
end
L0_1.set_interactable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._interactable = true
  A0_2._is_pause = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.motion_content
  L3_2 = L2_2
  L2_2 = L2_2.Resume
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._use_background = false
  A0_2._is_from_timeline = false
  A0_2._use_target_behavior = false
  L3_2 = A0_2
  L2_2 = A0_2._generate_talk_infos_by_multi_voice
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._talk_infos = L2_2
  A0_2._is_finished = false
  A0_2._current_index = 1
  L2_2 = A1_2.KeepDisplay
  A0_2._keep_display = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._play_current_talk
  L2_2(L3_2)
end
L0_1.setup_view_multi_voice_talk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = A1_2.TalkSentenceID
  L2_2.TalkSentenceID = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_talk_sentence_row
  L5_2 = A1_2.TalkSentenceID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.TextmapTalkSentenceName
    if L4_2 then
      goto lbl_13
    end
  end
  L4_2 = nil
  ::lbl_13::
  L2_2.name_id = L4_2
  if L3_2 ~= nil then
    L4_2 = L3_2.TalkSentenceText
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = nil
  ::lbl_20::
  L2_2.content_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIStringUtil
  L4_2 = L4_2.GetSimpleTalkTextIntervalTime
  L5_2 = L2_2.content_id
  L4_2 = L4_2(L5_2)
  L2_2.auto_wait_time = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIStringUtil
  L4_2 = L4_2.GetSimpleTalkTextSpeed
  L4_2 = L4_2()
  L2_2.TextSpeed = L4_2
  L4_2 = tonumber
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ConstValueClientExcelTable
  L5_2 = L5_2.GetData
  L6_2 = "SimpleTalk_Text_NormalProtectTime"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.Value
  L5_2 = L5_2.FloatValue
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L4_2
  L7_2 = L2_1
  L5_2 = L5_2(L6_2, L7_2)
  L2_2.protect_time = L5_2
  L2_2.force_time = 0
  L5_2 = A1_2.VoiceID
  L2_2.VoiceID = L5_2
  L5_2 = {}
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  return L5_2
end
L0_1._generate_talk_infos_by_multi_voice = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.SimpleTalkList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L10_2 = A0_2
    L9_2 = A0_2._gen_talk_info
    L11_2 = A1_2
    L12_2 = L6_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  return L2_2
end
L0_1._generate_talk_infos = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A1_2.SimpleTalkList
  L3_2 = L3_2[A2_2]
  L4_2 = A0_2._use_background
  if L4_2 then
    L4_2 = A1_2.Backgrounds
    L4_2 = L4_2[A2_2]
    if L4_2 then
      goto lbl_11
    end
  end
  L4_2 = nil
  ::lbl_11::
  L5_2 = A0_2._use_target_behavior
  if L5_2 then
    L5_2 = A1_2.TargetBehaviors
    L5_2 = L5_2[A2_2]
    if L5_2 then
      goto lbl_19
    end
  end
  L5_2 = nil
  ::lbl_19::
  L6_2 = {}
  L7_2 = L3_2.TalkSentenceID
  L6_2.TalkSentenceID = L7_2
  L7_2 = L3_2.TextSpeed
  L6_2.TextSpeed = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._get_talk_sentence_row
  L9_2 = L3_2.TalkSentenceID
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 ~= nil then
    L8_2 = L7_2.VoiceID
    if L8_2 then
      goto lbl_33
    end
  end
  L8_2 = nil
  ::lbl_33::
  L6_2.VoiceID = L8_2
  if L7_2 ~= nil then
    L8_2 = L7_2.TextmapTalkSentenceName
    if L8_2 then
      goto lbl_40
    end
  end
  L8_2 = nil
  ::lbl_40::
  L6_2.name_id = L8_2
  if L7_2 ~= nil then
    L8_2 = L7_2.TalkSentenceText
    if L8_2 then
      goto lbl_47
    end
  end
  L8_2 = nil
  ::lbl_47::
  L6_2.content_id = L8_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.UIStringUtil
  L8_2 = L8_2.GetSimpleTalkTextIntervalTime
  L9_2 = L6_2.content_id
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2.VoiceID
  if L9_2 ~= nil then
    L9_2 = L6_2.VoiceID
    if 0 < L9_2 then
      L9_2 = L1_1
      if L9_2 then
        goto lbl_65
      end
    end
  end
  L9_2 = L8_2
  ::lbl_65::
  L6_2.auto_wait_time = L9_2
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = L3_2.ProtectTime
  L11_2 = L2_1
  L9_2 = L9_2(L10_2, L11_2)
  L6_2.protect_time = L9_2
  L9_2 = L3_2.ForceToNextTime
  if L9_2 <= 0 then
    L9_2 = 0
    if L9_2 then
      goto lbl_83
    end
  end
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = L3_2.ForceToNextTime
  L11_2 = L6_2.protect_time
  L9_2 = L9_2(L10_2, L11_2)
  ::lbl_83::
  L6_2.force_time = L9_2
  L6_2.background_info = L4_2
  L6_2.target_behavior_info = L5_2
  L9_2 = G
  L9_2 = L9_2.SuperDebug
  L9_2 = L9_2.LogFormat
  L10_2 = "[SimpleTalkPanel] GenTalkInfo index[%s] TalkSentenceID[%s] TextSpeed[%s] WaitTime[%s] ProtectTime[%s]"
  L11_2 = tostring
  L12_2 = A2_2
  L11_2 = L11_2(L12_2)
  L12_2 = tostring
  L13_2 = L6_2.TalkSentenceID
  L12_2 = L12_2(L13_2)
  L13_2 = tostring
  L14_2 = L6_2.TextSpeed
  L13_2 = L13_2(L14_2)
  L14_2 = tostring
  L15_2 = L6_2.auto_wait_time
  L14_2 = L14_2(L15_2)
  L15_2 = tostring
  L16_2 = L6_2.protect_time
  L15_2, L16_2 = L15_2(L16_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  return L6_2
end
L0_1._gen_talk_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L2_2.TalkSentenceID = A1_2
  L2_2.TextSpeed = 36.0
  L4_2 = A0_2
  L3_2 = A0_2._get_talk_sentence_row
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.VoiceID
    if L4_2 then
      goto lbl_13
    end
  end
  L4_2 = nil
  ::lbl_13::
  L2_2.VoiceID = L4_2
  if L3_2 ~= nil then
    L4_2 = L3_2.TextmapTalkSentenceName
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = nil
  ::lbl_20::
  L2_2.name_id = L4_2
  if L3_2 ~= nil then
    L4_2 = L3_2.TalkSentenceText
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = nil
  ::lbl_27::
  L2_2.content_id = L4_2
  return L2_2
end
L0_1._gen_simple_talk_info_with_talk_sentence_id = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil and A1_2 <= 0 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "invalid talkSentenceID: "
    L4_2 = tostring
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = nil
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TalkSentenceConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "talkSentenceID \230\137\190\228\184\141\229\136\176\230\149\176\230\141\174: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = L2_2
  L4_2 = voiceRow
  return L3_2, L4_2
end
L0_1._get_talk_sentence_row = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_infos
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L1_2 = A0_2._is_finished
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1._is_focused = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_focused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._stop_ongoing_talk
  L1_2(L2_2)
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._setup_tick_time
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_talk_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_voice
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_talker_name
  L4_2 = L1_2.name_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_motion_text
  L4_2 = L1_2.content_id
  L5_2 = L1_2.TextSpeed
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_background
  L4_2 = L1_2.background_info
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SimpleTalkShown
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TalkSimpleData
  L4_2 = L4_2.Create
  L5_2 = L1_2.TalkSentenceID
  L6_2 = L1_2.VoiceID
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SimpleTalkTargetBehaviorInfo
  L2_2 = L2_2()
  L3_2 = L1_2.target_behavior_info
  L2_2.Config = L3_2
  L3_2 = L1_2.TalkSentenceID
  L2_2.TalkSentenceID = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.SimpleTalkTargetBehaviorCurrent
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._play_current_talk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_from_timeline
  if L2_2 then
    return
  end
  L2_2 = A0_2._use_background
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TalkNotUseBackground
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._skip_first_talk_bg_fadein
  if L2_2 then
    L2_2 = A0_2._current_index
    L2_2 = L2_2 == 1
  end
  L3_2 = A0_2._talk_video_config
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TalkBackgroundCG
    L3_2 = L3_2()
    A0_2._talk_video_config = L3_2
  end
  L3_2 = A0_2._talk_video_config
  L4_2 = A1_2.CgID
  L3_2.CgID = L4_2
  L3_2 = A0_2._talk_video_config
  L3_2.SkipFadeIn = false
  if L2_2 then
    L3_2 = A0_2._talk_video_config
    L3_2.SkipFadeIn = true
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ShowTalkVideo
  L5_2 = A0_2._talk_video_config
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._talk_image_config
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TalkImage
    L3_2 = L3_2()
    A0_2._talk_image_config = L3_2
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = A1_2.ImagePath
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._talk_image_config
    L3_2.ImageState = false
    L3_2 = A0_2._talk_image_config
    L4_2 = A1_2.ImagePath
    L3_2.ImagePath = L4_2
    L3_2 = A0_2._talk_image_config
    L3_2.FadeTime = 0.5
    if L2_2 then
      L3_2 = A0_2._talk_image_config
      L3_2.FadeTime = 0
    end
    L3_2 = A0_2._talk_image_config
    L3_2.IsFadeBg = true
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ClearTalkImage
    L5_2 = A0_2._talk_image_config
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._talk_image_config
    L3_2.ImageState = true
    L3_2 = A0_2._talk_image_config
    L4_2 = A1_2.ImagePath
    L3_2.ImagePath = L4_2
    L3_2 = A0_2._talk_image_config
    L3_2.FadeTime = 0.5
    if L2_2 then
      L3_2 = A0_2._talk_image_config
      L3_2.FadeTime = 0
    end
    L3_2 = A0_2._talk_image_config
    L3_2.IsFadeBg = true
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ShowTalkImage
    L5_2 = A0_2._talk_image_config
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_background = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.protect_time
  A0_2._protect_time = L2_2
  L2_2 = A1_2.force_time
  A0_2._force_time = L2_2
end
L0_1._setup_tick_time = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.IsEmpty
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_13
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = false
  L2_2(L3_2, L4_2)
  goto lbl_23
  ::lbl_13::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  ::lbl_23::
end
L0_1._setup_talker_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_playing_voice
  if L1_2 == true then
    A0_2._is_playing_voice = false
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.PostEvent
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.EventVOStop
    L1_2(L2_2, L3_2)
  end
end
L0_1._stop_voice = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.VoiceID
  L3_2 = CS
  L3_2 = L3_2.AkCallbackType
  L3_2 = L3_2.AK_EndOfEvent
  L4_2 = CS
  L4_2 = L4_2.AkCallbackType
  L4_2 = L4_2.AK_EnableGetSourcePlayPosition
  L3_2 = L3_2 | L4_2
  if L2_2 ~= nil and 0 < L2_2 then
    A0_2._current_voice_id = L2_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AudioManager
    L5_2 = L4_2
    L4_2 = L4_2.PostVoice
    L6_2 = L2_2
    L7_2 = nil
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._on_voice_end
      L4_3 = A0_3
      L5_3 = L2_2
      L6_3 = A1_2
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L9_2 = nil
    L10_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    A0_2._playing_voice_event_id = L4_2
    L4_2 = A0_2._playing_voice_event_id
    L4_2 = 0 ~= L4_2
    if L4_2 then
      A0_2._is_playing_voice = true
      A0_2._is_voice_paused = false
    end
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.SimpleTalkPostVoice
  L6_2 = A0_2._playing_voice_event_id
  L4_2(L5_2, L6_2)
end
L0_1._play_voice = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._is_voice_paused
  if L4_2 then
    return
  end
  L4_2 = A0_2._current_voice_id
  if L4_2 ~= A2_2 then
    return
  end
  L4_2 = A0_2._playing_voice_event_id
  if L4_2 ~= A1_2 then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SimpleTalkTargetBehaviorInfo
  L4_2 = L4_2()
  L5_2 = A3_2.target_behavior_info
  L4_2.Config = L5_2
  L5_2 = A3_2.TalkSentenceID
  L4_2.TalkSentenceID = L5_2
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.SimpleTalkTargetBehaviorVoiceEnd
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2._is_playing_voice = false
  L6_2 = A0_2
  L5_2 = A0_2._try_end_protection
  L5_2(L6_2)
end
L0_1._on_voice_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_playing_voice
  if not L2_2 then
    return
  end
  L2_2 = A0_2._is_voice_paused
  if L2_2 then
    return
  end
  A0_2._is_voice_paused = true
  A0_2._is_playing_voice = false
  if 0 < A1_2 then
    A0_2._voice_resume_pos = A1_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.GetPlayingEventPosition
    L4_2 = A0_2._playing_voice_event_id
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._voice_resume_pos = L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.StopEventID
  L4_2 = A0_2._playing_voice_event_id
  L5_2 = 0.1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SimpleTalkPostVoice
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L0_1._pause_voice = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._is_voice_paused
  if not L1_2 then
    return
  end
  A0_2._is_voice_paused = false
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.VoiceID
  if L2_2 == nil or L2_2 == 0 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.AkCallbackType
  L3_2 = L3_2.AK_EndOfEvent
  L4_2 = CS
  L4_2 = L4_2.AkCallbackType
  L4_2 = L4_2.AK_EnableGetSourcePlayPosition
  L3_2 = L3_2 | L4_2
  A0_2._current_voice_id = L2_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_AudioManager
  L5_2 = L4_2
  L4_2 = L4_2.PostVoice
  L6_2 = L2_2
  L7_2 = nil
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_voice_end
    L4_3 = A0_3
    L5_3 = L2_2
    L6_3 = L1_2
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.GlobalVars
    L1_3 = L1_3.s_AudioManager
    L2_3 = L1_3
    L1_3 = L1_3.SeekOnEventID
    L3_3 = A0_3
    L4_3 = A0_2._voice_resume_pos
    L1_3(L2_3, L3_3, L4_3)
  end
  L10_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._playing_voice_event_id = L4_2
  L4_2 = A0_2._playing_voice_event_id
  L4_2 = 0 ~= L4_2
  if L4_2 then
    A0_2._is_playing_voice = true
    A0_2._is_voice_paused = false
  end
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.SimpleTalkPostVoice
  L7_2 = A0_2._playing_voice_event_id
  L5_2(L6_2, L7_2)
end
L0_1._resume_voice = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_playing_voice
  if L1_2 then
    L1_2 = A0_2._current_voice_id
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = 0
  ::lbl_8::
  return L1_2
end
L0_1.get_playing_voice_id = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_playing_voice
  if L1_2 then
    L1_2 = A0_2._playing_voice_event_id
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = 0
  ::lbl_8::
  return L1_2
end
L0_1.get_playing_voice_instance_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_voice
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._stop_auto_timer
  L1_2(L2_2)
  L1_2 = A0_2._is_waiting_text_motion
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._immediate_finish_text_motion
    L1_2(L2_2)
  end
end
L0_1._stop_ongoing_talk = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    A2_2 = 36.0
  end
  if 0 < A2_2 then
    A0_2._is_waiting_text_motion = true
    L3_2 = 1 / A2_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.motion_content
    L5_2 = L4_2
    L4_2 = L4_2.ShowTextIDWithMotion
    L6_2 = L3_2
    function L7_2()
      local L0_3, L1_3
      A0_2._is_waiting_text_motion = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_end_protection
      L0_3(L1_3)
    end
    L8_2 = A1_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._show_motion_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.Resume
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishAllMotions
  L1_2(L2_2)
end
L0_1._immediate_finish_text_motion = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._auto_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._auto_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._auto_timer = nil
  end
end
L0_1._stop_auto_timer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_waiting_text_motion
  if not L1_2 then
    L1_2 = A0_2._is_playing_voice
    if not L1_2 then
      L1_2 = A0_2._protect_time
      if not (0 < L1_2) then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L2_2 = A0_2
  L1_2 = A0_2._try_directly_finish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_start_auto_timer
  L1_2(L2_2)
end
L0_1._try_end_protection = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._will_directly_finish
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_next_talk
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._finish_talks
  L1_2(L2_2)
end
L0_1._try_directly_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_auto
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_focused
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.auto_wait_time
  L3_2 = A0_2
  L2_2 = A0_2._stop_auto_timer
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._auto_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._auto_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
      A0_2._auto_timer = nil
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._play_next_talk
    L0_3(L1_3)
  end
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._auto_timer = L2_2
  L2_2 = A0_2._auto_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._try_start_auto_timer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_current_talk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_focused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._immediate_finish_text_motion
    L1_2(L2_2)
  end
end
L0_1._on_language_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._finish_talks
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_talk_btn
  L1_2(L2_2)
end
L0_1.on_skip_talk = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._has_camera_rotation = true
end
L0_1._on_swipe_start = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._has_camera_rotation = false
end
L0_1._on_swipe_end = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._has_camera_rotation = false
end
L0_1._on_touch_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishExitingMotions
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_camera_rotation
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_focused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._protect_time
  if 0 < L1_2 then
    return
  end
  L1_2 = A0_2._is_waiting_text_motion
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._immediate_finish_text_motion
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_next_talk
    L1_2(L2_2)
  end
end
L0_1._on_btn_simple_talk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._has_next_talk
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._finish_talks
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._current_index
  L1_2 = L1_2 + 1
  A0_2._current_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._play_current_talk
  L1_2(L2_2)
end
L0_1._play_next_talk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_infos
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._has_next_talk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_finished
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._stop_ongoing_talk
  L1_2(L2_2)
  L1_2 = A0_2._keep_display
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_auto_finish_param
  L1_2(L2_2)
  A0_2._is_finished = true
  L1_2 = A0_2._talk_infos
  if L1_2 ~= nil then
    L1_2 = A0_2._talk_infos
    L2_2 = A0_2._talk_infos
    L2_2 = #L2_2
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.TalkSentenceID
    if L1_2 then
      goto lbl_27
    end
  end
  L1_2 = 0
  ::lbl_27::
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SimpleTalkSkip
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SimpleTalkFinish
  L2_2(L3_2)
end
L0_1._finish_talks = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_pause
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_talk_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_focused
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._tick_protect_time
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._tick_force_time
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._protect_time
  if L2_2 <= 0 then
    return
  end
  L2_2 = A0_2._protect_time
  L2_2 = L2_2 - A1_2
  A0_2._protect_time = L2_2
  L2_2 = A0_2._protect_time
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._try_end_protection
    L2_2(L3_2)
  end
end
L0_1._tick_protect_time = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._force_time
  if L2_2 <= 0 then
    return
  end
  L2_2 = A0_2._force_time
  L2_2 = L2_2 - A1_2
  A0_2._force_time = L2_2
  L2_2 = A0_2._force_time
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._play_next_talk
    L2_2(L3_2)
  end
end
L0_1._tick_force_time = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_sound
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_interactable
  L1_2(L2_2)
end
L0_1._setup_talk_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._protect_time
  L1_2 = L1_2 <= 0
  L3_2 = A0_2
  L2_2 = A0_2._is_focused
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._interactable
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_icon_next
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = L1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_icon_wait
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = not L1_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_btn_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._interactable
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_simple_talk
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIButtonSoundType
    L2_2 = L2_2.Mute
    L1_2.SoundType = L2_2
    return
  end
  L1_2 = A0_2._is_waiting_text_motion
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_simple_talk
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIButtonSoundType
    L2_2 = L2_2.Mute
    L1_2.SoundType = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_simple_talk
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIButtonSoundType
    L2_2 = L2_2.CommonClick
    L1_2.SoundType = L2_2
  end
end
L0_1._setup_btn_sound = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_focused
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._has_camera_rotation
    if not L1_2 then
      L1_2 = A0_2._interactable
      if L1_2 then
        goto lbl_15
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_simple_talk
  L1_2.interactable = false
  do return end
  ::lbl_15::
  L1_2 = A0_2._protect_time
  if 0 < L1_2 then
    L1_2 = A0_2._is_waiting_text_motion
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_simple_talk
      L1_2.interactable = true
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_simple_talk
      L1_2.interactable = false
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_simple_talk
    L1_2.interactable = true
  end
end
L0_1._setup_btn_interactable = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._will_directly_finish = false
end
L0_1._reset_auto_finish_param = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsPause
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_pause
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.resume_pause
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.on_pause_performance = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_focused
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  A0_2._is_pause = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.motion_content
  L3_2 = L2_2
  L2_2 = L2_2.Pause
  L2_2(L3_2)
  L2_2 = A0_2._auto_timer
  if L2_2 ~= nil then
    L2_2 = A0_2._auto_timer
    L3_2 = L2_2
    L2_2 = L2_2.pause
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._pause_voice
  L4_2 = A1_2.SimpleTalkClipTimeMS
  L2_2(L3_2, L4_2)
end
L0_1.set_pause = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._is_focused
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  A0_2._is_pause = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.motion_content
  L3_2 = L2_2
  L2_2 = L2_2.Resume
  L2_2(L3_2)
  L2_2 = A0_2._auto_timer
  if L2_2 ~= nil then
    L2_2 = A0_2._auto_timer
    L3_2 = L2_2
    L2_2 = L2_2.resume
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._resume_voice
  L2_2(L3_2)
end
L0_1.resume_pause = L3_1
return L0_1
