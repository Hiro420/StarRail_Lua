local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScreenTransferTextPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "ScreenTransfer_TextTransferDuration"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.FloatValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "SimpleTalk_Voice_IntervalTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = {}
L3_1.FadeIn = 1
L3_1.Play = 2
L3_1.WaitClick = 3
L3_1.FadeOut = 4
L3_1.DirectlySet = 10
L3_1.WaitFadeIn = 11
L3_1.Disacitve = 20
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1.Disacitve
  A0_2._state = L1_2
  A0_2._timer = 0
  A0_2._is_btn_bg_clicked = false
  A0_2._max_alpha = 0
  A0_2._is_playing_voice = false
  A0_2._playing_voice_event_id = 0
  A0_2._current_voice_id = 0
  A0_2._voice_delay_timer = 0
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_voice
  L1_2(L2_2)
  A0_2._config = nil
  L1_2 = A0_2._talk_infos
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._talk_infos
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = L5_2
      L6_2(L7_2)
    end
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._talk_infos
    L1_2(L2_2)
  end
  A0_2._talk_infos = nil
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = ""
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_icon_wait
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_icon_next
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Reason
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferReason
  L3_2 = L3_2.Mission
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A1_2.TextEnabled
  if L2_2 == false then
    L2_2 = A1_2.Mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.SwitchOut
    if L2_2 ~= L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._enter_disactive_state
      L2_2(L3_2)
      return
    end
  end
  A0_2._config = A1_2
  L2_2 = A0_2._config
  L2_2 = L2_2.Mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.SwitchOut
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._enter_waitfadein_state
    L2_2(L3_2)
  else
    L2_2 = A0_2._config
    L2_2 = L2_2.Mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.DirectlySet
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._enter_directlyset_state
      L2_2(L3_2)
      return
    else
      return
    end
  end
  L2_2 = A0_2._config
  L2_2 = L2_2.NotAuto
  A0_2._can_click = L2_2
  L2_2 = A0_2._config
  L2_2 = L2_2.PlayVoice
  A0_2._use_voice = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_talk_infos
  L2_2 = L2_2(L3_2)
  A0_2._talk_infos = L2_2
  L2_2 = A0_2._talk_infos
  L2_2 = #L2_2
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._enter_disactive_state
    L2_2(L3_2)
    return
  end
  A0_2._current_index = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.Settings
  L2_2 = L2_2.Other
  L2_2 = L2_2.IsTalkDefaultAuto
  if not L2_2 then
    L2_2 = A0_2._can_click
    L2_2 = not L2_2
  end
  A0_2._is_auto = L2_2
  A0_2._is_btn_bg_clicked = false
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._config
  L2_2 = L2_2.TalkSentenceIDList
  if L2_2 ~= nil then
    L2_2 = A0_2._config
    L2_2 = L2_2.TalkSentenceIDList
    L2_2 = L2_2.Length
    if 0 < L2_2 then
      L2_2 = 0
      L3_2 = A0_2._config
      L3_2 = L3_2.TalkSentenceIDList
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L1_2
        L9_2 = A0_2
        L8_2 = A0_2._gen_talk_info
        L10_2 = A0_2._config
        L10_2 = L10_2.TalkSentenceIDList
        L10_2 = L10_2[L5_2]
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
  end
  else
    L2_2 = A0_2._config
    L2_2 = L2_2.TalkSentenceID
    if 0 < L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L5_2 = A0_2
      L4_2 = A0_2._gen_talk_info
      L6_2 = A0_2._config
      L6_2 = L6_2.TalkSentenceID
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1._generate_talk_infos = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L2_2.talk_sentence_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._get_textid_and_voiceid_by_talk_sentence_id
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L2_2.content_id = L3_2
  L2_2.voice_id = L4_2
  L5_2 = A0_2._use_voice
  L5_2 = L5_2 and L4_2 ~= nil and 0 < L4_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.UIStringUtil
  L6_2 = L6_2.GetSimpleTalkTextTimes
  L7_2 = L2_2.content_id
  L6_2, L7_2 = L6_2(L7_2)
  L2_2.text_time = L6_2
  if L5_2 then
    L8_2 = L2_1
    if L8_2 then
      goto lbl_31
    end
  end
  L8_2 = L7_2
  ::lbl_31::
  L2_2.interval_time = L8_2
  return L2_2
end
L0_1._gen_talk_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L3_1.WaitClick
  if L1_2 == L2_2 then
    A0_2._is_btn_bg_clicked = true
  end
end
L0_1._on_btn_bg_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._state
  L3_2 = L3_1.Disacitve
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._state
  L3_2 = L3_1.DirectlySet
  if L2_2 == L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._tick_voice_delay
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._timer
  L2_2 = L2_2 - A1_2
  A0_2._timer = L2_2
  L2_2 = A0_2._state
  L3_2 = L3_1.WaitFadeIn
  if L2_2 == L3_2 then
    L2_2 = A0_2._max_alpha
    if 0 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._enter_fadein_state
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._state
    L3_2 = L3_1.FadeIn
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._set_alpha
      L4_2 = A0_2._timer
      L5_2 = L1_1
      L4_2 = L4_2 / L5_2
      L4_2 = 1 - L4_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._timer
      if L2_2 < 0 then
        L3_2 = A0_2
        L2_2 = A0_2._enter_play_state
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._state
      L3_2 = L3_1.Play
      if L2_2 == L3_2 then
        L2_2 = A0_2._timer
        if L2_2 < 0 then
          L2_2 = A0_2._can_click
          if L2_2 then
            L3_2 = A0_2
            L2_2 = A0_2._enter_waitclick_state
            L2_2(L3_2)
          else
            L3_2 = A0_2
            L2_2 = A0_2._is_voice_finish
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L3_2 = A0_2
              L2_2 = A0_2._enter_fadeout_state
              L2_2(L3_2)
            end
          end
        end
      else
        L2_2 = A0_2._state
        L3_2 = L3_1.WaitClick
        if L2_2 == L3_2 then
          L2_2 = A0_2._is_btn_bg_clicked
          if L2_2 then
            A0_2._is_btn_bg_clicked = false
            L3_2 = A0_2
            L2_2 = A0_2._enter_fadeout_state
            L2_2(L3_2)
          end
          L2_2 = A0_2._is_auto
          if L2_2 then
            L2_2 = A0_2._timer
            if L2_2 < 0 then
              L3_2 = A0_2
              L2_2 = A0_2._is_voice_finish
              L2_2 = L2_2(L3_2)
              if L2_2 then
                A0_2._is_btn_bg_clicked = false
                L3_2 = A0_2
                L2_2 = A0_2._enter_fadeout_state
                L2_2(L3_2)
              end
            end
          end
        else
          L2_2 = A0_2._state
          L3_2 = L3_1.FadeOut
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._set_alpha
            L4_2 = A0_2._timer
            L5_2 = L1_1
            L4_2 = L4_2 / L5_2
            L2_2(L3_2, L4_2)
            L2_2 = A0_2._timer
            if L2_2 < 0 then
              L2_2 = A0_2._current_index
              L3_2 = A0_2._talk_infos
              L3_2 = #L3_2
              if L2_2 < L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._enter_fadein_state
                L2_2(L3_2)
              else
                L3_2 = A0_2
                L2_2 = A0_2._enter_disactive_state
                L2_2(L3_2)
              end
            end
          end
        end
      end
    end
  end
end
L0_1.on_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_index
  L1_2 = L1_2 + 1
  A0_2._current_index = L1_2
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_text
  L4_2 = L1_2.content_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_voice
  L4_2 = L1_2.voice_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_alpha
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.FadeIn
  A0_2._state = L2_2
  L2_2 = L1_1
  A0_2._timer = L2_2
end
L0_1._enter_fadein_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._can_click
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_wait
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_next
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L3_1.Play
  A0_2._state = L2_2
  L2_2 = A0_2._can_click
  if L2_2 then
    L2_2 = L1_2.text_time
    A0_2._timer = L2_2
  else
    L2_2 = L1_2.text_time
    L3_2 = L1_2.interval_time
    L2_2 = L2_2 + L3_2
    A0_2._timer = L2_2
  end
end
L0_1._enter_play_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._talk_infos
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_wait
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._is_btn_bg_clicked = false
  L2_2 = L3_1.WaitClick
  A0_2._state = L2_2
  L2_2 = L1_2.interval_time
  A0_2._timer = L2_2
end
L0_1._enter_waitclick_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L3_1.FadeOut
  A0_2._state = L1_2
  L1_2 = L1_1
  A0_2._timer = L1_2
  L1_2 = A0_2._current_index
  L2_2 = A0_2._talk_infos
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ScreenTransferTextEnd
    L1_2(L2_2)
  end
end
L0_1._enter_fadeout_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ScreenTransferTextDisable
  L1_2(L2_2)
  L1_2 = A0_2._state
  L2_2 = L3_1.Disacitve
  if L1_2 ~= L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ScreenTransferTextEnd
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._stop_voice
  L1_2(L2_2)
  L1_2 = L3_1.Disacitve
  A0_2._state = L1_2
  A0_2._timer = 0
  A0_2._max_alpha = 0
end
L0_1._enter_disactive_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L3_1.DirectlySet
  A0_2._state = L1_2
  A0_2._timer = 0
  L2_2 = A0_2
  L1_2 = A0_2._get_textid_by_talk_sentence_id
  L3_2 = A0_2._config
  L3_2 = L3_2.TalkSentenceID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_text
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_alpha
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1._enter_directlyset_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L3_1.WaitFadeIn
  A0_2._state = L1_2
  A0_2._timer = 0
  A0_2._max_alpha = 0
end
L0_1._enter_waitfadein_state = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_playing_voice
  L1_2 = L1_2 == false
  return L1_2
end
L0_1._is_voice_finish = L4_1
function L4_1(A0_2)
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
L0_1._stop_voice = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_voice
  L2_2(L3_2)
  L2_2 = A0_2._use_voice
  if L2_2 == false then
    return
  end
  if A1_2 ~= nil and 0 < A1_2 then
    A0_2._current_voice_id = A1_2
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
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._on_voice_end
      L4_3 = A0_3
      L5_3 = A1_2
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2._playing_voice_event_id = L2_2
    L2_2 = A0_2._playing_voice_event_id
    L2_2 = 0 ~= L2_2
    if L2_2 then
      A0_2._is_playing_voice = true
    end
  end
end
L0_1._play_voice = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._use_voice
  if L3_2 == false then
    return
  end
  L3_2 = A0_2._current_voice_id
  if L3_2 ~= A2_2 then
    return
  end
  L3_2 = A0_2._playing_voice_event_id
  if L3_2 ~= A1_2 then
    return
  end
  A0_2._is_playing_voice = false
  A0_2._playing_voice_event_id = 0
  L3_2 = A0_2._talk_infos
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.interval_time
  A0_2._voice_delay_timer = L4_2
end
L0_1._on_voice_end = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._voice_delay_timer
  if L2_2 <= 0 then
    return
  end
  L2_2 = A0_2._voice_delay_timer
  L2_2 = L2_2 - A1_2
  A0_2._voice_delay_timer = L2_2
end
L0_1._tick_voice_delay = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_text = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.white
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.black
    L2_2.color = L3_2
  end
end
L0_1.set_color = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.MMathf
  L3_2 = L3_2.Min
  L4_2 = A0_2._max_alpha
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.MMathf
  L3_2 = L3_2.Clamp01
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group_txt
  L3_2.alpha = L2_2
end
L0_1._set_alpha = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._max_alpha = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_txt
  L2_2 = L2_2.alpha
  L3_2 = A0_2._max_alpha
  if L2_2 > L3_2 then
    L2_2 = A0_2._max_alpha
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.MMathf
    L3_2 = L3_2.Clamp01
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_txt
    L3_2.alpha = L2_2
  end
end
L0_1.set_alpha = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil or A1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TalkSentenceConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.TalkSentenceText
  return L3_2
end
L0_1._get_textid_by_talk_sentence_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil or A1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TalkSentenceConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.TalkSentenceText
  L4_2 = L2_2.VoiceID
  return L3_2, L4_2
end
L0_1._get_textid_and_voiceid_by_talk_sentence_id = L4_1
return L0_1
