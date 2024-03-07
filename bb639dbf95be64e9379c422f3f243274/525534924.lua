local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "SimpleTalk_Text_NormalProtectTime"
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
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TalkModule
function L4_1(A0_2)
  local L1_2
  A0_2._is_playing = false
  L1_2 = {}
  A0_2._talk_info_list = L1_2
  A0_2._is_voice_3d = false
  A0_2._resume_after_interrupt = false
  A0_2._sub_mission_id_for_resume = 0
  A0_2._task_waiting_flag = false
  A0_2._cur_index = 1
  A0_2._is_waiting_voice = false
  A0_2._playing_voice_id = 0
  A0_2._playing_event_id = 0
  A0_2._is_waiting_protect = false
  A0_2._wait_protect_timer = nil
  A0_2._is_disposed = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PauseMissionTalk
  L4_2 = A0_2._pause_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResumeMissionTalk
  L4_2 = A0_2._resume_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayMissionTalk
  L4_2 = A0_2._on_get_mission_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResumeCacheMissionTalk
  L4_2 = A0_2._on_get_cache_mission_talk
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_disposed = false
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._is_disposed = true
  L2_2 = A0_2
  L1_2 = A0_2._force_close_talk
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StartListenMissionTalkFinish
  L4_2 = A0_2._on_add_task_waiting_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlaySimpleTalk
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkShowOption
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._regist_on_talk_start = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StartListenMissionTalkFinish
  L4_2 = A0_2._on_add_task_waiting_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlaySimpleTalk
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkShowOption
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._stop_and_cache_talk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._unregist_on_talk_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.Performance
  L3_2 = "MissionTalkPanel _stop_and_cache_talk "
  L4_2 = tostring
  L5_2 = A0_2._is_playing
  L4_2 = L4_2(L5_2)
  L5_2 = " "
  L6_2 = tostring
  L7_2 = A0_2._talk_info_list
  L7_2 = L7_2 ~= nil
  L6_2 = L6_2(L7_2)
  L7_2 = " "
  L8_2 = tostring
  L9_2 = A0_2._is_voice_3d
  L8_2 = L8_2(L9_2)
  L9_2 = " "
  L10_2 = tostring
  L11_2 = A0_2._resume_after_interrupt
  L10_2 = L10_2(L11_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_playing
  if L1_2 then
    L1_2 = A0_2._talk_info_list
    if L1_2 ~= nil then
      L1_2 = A0_2._talk_info_list
      L1_2 = #L1_2
      if 0 < L1_2 then
        L1_2 = A0_2._is_voice_3d
        if L1_2 == false then
          L1_2 = A0_2._resume_after_interrupt
          if L1_2 then
            L1_2 = CS
            L1_2 = L1_2.System
            L1_2 = L1_2.Collections
            L1_2 = L1_2.Generic
            L1_2 = L1_2.List
            L2_2 = CS
            L2_2 = L2_2.System
            L2_2 = L2_2.UInt32
            L1_2 = L1_2(L2_2)
            L1_2 = L1_2()
            L2_2 = 1
            L3_2 = A0_2._talk_info_list
            L3_2 = #L3_2
            L4_2 = 1
            for L5_2 = L2_2, L3_2, L4_2 do
              L6_2 = A0_2._talk_info_list
              L6_2 = L6_2[L5_2]
              if L6_2 ~= nil then
                L8_2 = L1_2
                L7_2 = L1_2.Add
                L9_2 = L6_2.TalkSentenceID
                L7_2(L8_2, L9_2)
              end
            end
            L2_2 = L3_1
            L3_2 = L2_2
            L2_2 = L2_2.CacheMissionTalk
            L4_2 = A0_2._cur_index
            L5_2 = L1_2
            L6_2 = A0_2._sub_mission_id_for_resume
            L2_2(L3_2, L4_2, L5_2, L6_2)
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.SuperDebug
            L2_2 = L2_2.LogFormat
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.LogTag
            L3_2 = L3_2.Performance
            L4_2 = "MissionTalkPanel CacheMissionTalk num:"
            L5_2 = A0_2._talk_info_list
            L5_2 = #L5_2
            L6_2 = " index:"
            L7_2 = A0_2._cur_index
            L8_2 = " firstTalkID:"
            L9_2 = A0_2._talk_info_list
            L9_2 = L9_2[1]
            L9_2 = L9_2.TalkSentenceID
            L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._force_close_talk
  L1_2(L2_2)
end
L0_1._stop_and_cache_talk = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._all_finish_callback = A1_2
  A0_2._all_finish_handler = A2_2
end
L0_1.register_all_finish_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMissionTalkStartIndexAndClearCache
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_play_talk
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.IsVoice3D
  A0_2._is_voice_3d = L3_2
  L3_2 = A1_2.ResumeAfterInterrupt
  A0_2._resume_after_interrupt = L3_2
  L3_2 = A1_2.SubMissionIDForResume
  A0_2._sub_mission_id_for_resume = L3_2
end
L0_1._on_get_mission_talk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.CreatePlayMissionTalkConfig
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.CurIndex
  L5_2 = A0_2
  L4_2 = A0_2._on_play_talk
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2.IsVoice3D
  A0_2._is_voice_3d = L4_2
  L4_2 = L2_2.ResumeAfterInterrupt
  A0_2._resume_after_interrupt = L4_2
  L4_2 = L2_2.SubMissionIDForResume
  A0_2._sub_mission_id_for_resume = L4_2
end
L0_1._on_get_cache_mission_talk = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_playing
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._check_new_config_equals_current
    L5_2 = A1_2.SimpleTalkList
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._force_close_talk
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.motion_content
  L4_2 = L3_2
  L3_2 = L3_2.ImmediateFinishExitingMotions
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.start_play_talks
  L5_2 = A1_2.SimpleTalkList
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_play_talk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 ~= nil then
    L2_2 = A0_2._talk_info_list
    if L2_2 ~= nil then
      goto lbl_8
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_8::
  L2_2 = A1_2.Length
  L3_2 = A0_2._talk_info_list
  L3_2 = #L3_2
  if L2_2 ~= L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = A0_2._talk_info_list
    L10_2 = L7_2 + 1
    L9_2 = L9_2[L10_2]
    if L8_2 == nil or L9_2 == nil then
      L10_2 = false
      return L10_2
    end
    L10_2 = L8_2.TalkSentenceID
    L11_2 = L9_2.TalkSentenceID
    if L10_2 ~= L11_2 then
      L12_2 = false
      return L12_2
    end
  end
  L4_2 = true
  return L4_2
end
L0_1._check_new_config_equals_current = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_voice_3d = false
  A0_2._resume_after_interrupt = false
  A0_2._sub_mission_id_for_resume = 0
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._playing_event_id
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L4_2 = L3_2
    L3_2 = L3_2.StopEventID
    L5_2 = A0_2._playing_event_id
    L3_2(L4_2, L5_2)
  end
  A0_2._playing_event_id = 0
  L3_2 = A0_2._is_playing
  if L3_2 == false then
    L4_2 = A0_2
    L3_2 = A0_2._regist_on_talk_start
    L3_2(L4_2)
  end
  A0_2._is_playing = true
  L4_2 = A0_2
  L3_2 = A0_2._generate_talk_info_list
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    A0_2._cur_index = A2_2
  else
    A0_2._cur_index = 1
  end
  L4_2 = A0_2
  L3_2 = A0_2._play_talk
  L5_2 = A0_2._talk_info_list
  L6_2 = A0_2._cur_index
  L5_2 = L5_2[L6_2]
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Performance
  L5_2 = "MissionTalkPanel start_play_talks num:"
  L6_2 = A0_2._talk_info_list
  L6_2 = #L6_2
  L7_2 = " index:"
  L8_2 = A0_2._cur_index
  L9_2 = " firstTalkID:"
  L10_2 = A0_2._talk_info_list
  L10_2 = L10_2[1]
  L10_2 = L10_2.TalkSentenceID
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L3_2(L4_2, L5_2)
end
L0_1.start_play_talks = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_current_talk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_playing
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._unregist_on_talk_end
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishExitingMotions
  L1_2(L2_2)
  A0_2._is_playing = false
  A0_2._is_voice_3d = false
  A0_2._resume_after_interrupt = false
  A0_2._sub_mission_id_for_resume = 0
  L1_2 = A0_2._task_waiting_flag
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.MissionTalkFinish
    L1_2(L2_2)
    A0_2._task_waiting_flag = false
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._all_finish_callback
  L3_2 = A0_2._all_finish_handler
  L1_2(L2_2, L3_2)
end
L0_1._on_all_talks_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_content_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._stop_protect_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_stop_voice
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._immediate_finish_text_motion
  L1_2(L2_2)
end
L0_1._clear_current_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_all_talks_finish
  L1_2(L2_2)
end
L0_1._force_close_talk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  A0_2._talk_info_list = L2_2
  L2_2 = A1_2.Length
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.TalkSentenceID
    if L8_2 ~= nil and 0 < L8_2 then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.TalkSentenceConfigExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        goto lbl_24
      end
    end
    L9_2 = nil
    ::lbl_24::
    if L9_2 == nil then
      L10_2 = G
      L10_2 = L10_2.SuperDebug
      L10_2 = L10_2.LogErrorFormat
      L11_2 = "\229\175\185\232\175\157talkSentence\233\133\141\231\189\174\230\137\190\228\184\141\229\136\176\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174 => TalkSentenceID\239\188\154"
      L12_2 = L8_2
      L11_2 = L11_2 .. L12_2
      L10_2(L11_2)
    else
      L10_2 = {}
      L10_2.TalkSentenceID = L8_2
      L11_2 = L9_2.VoiceID
      L10_2.VoiceID = L11_2
      L11_2 = L9_2.TalkSentenceText
      L10_2.TextContentID = L11_2
      L12_2 = A0_2
      L11_2 = A0_2._get_avatar_text
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      L10_2.AvatarTextID = L11_2
      L11_2 = A0_2._talk_info_list
      L12_2 = L6_2 + 1
      L11_2[L12_2] = L10_2
    end
  end
end
L0_1._generate_talk_info_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.TextmapTalkSentenceName
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2 ~= nil and L2_2
  if L2_2 then
    L3_2 = A1_2.TextmapTalkSentenceName
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  ::lbl_20::
  return L3_2
end
L0_1._get_avatar_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_talk_info
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.PauseVoice
    L3_2 = A0_2._cur_talk_info
    L3_2 = L3_2.VoiceID
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._voice_delay_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._voice_delay_timer
      L2_2 = L1_2
      L1_2 = L1_2.pause
      L1_2(L2_2)
    end
    L1_2 = A0_2._wait_protect_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._wait_protect_timer
      L2_2 = L1_2
      L1_2 = L1_2.pause
      L1_2(L2_2)
    end
    L1_2 = A0_2._wait_content_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._wait_content_timer
      L2_2 = L1_2
      L1_2 = L1_2.pause
      L1_2(L2_2)
    end
  end
end
L0_1._pause_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_talk_info
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.ResumeVoice
    L3_2 = A0_2._cur_talk_info
    L3_2 = L3_2.VoiceID
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._voice_delay_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._voice_delay_timer
      L2_2 = L1_2
      L1_2 = L1_2.resume
      L1_2(L2_2)
    end
    L1_2 = A0_2._wait_protect_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._wait_protect_timer
      L2_2 = L1_2
      L1_2 = L1_2.resume
      L1_2(L2_2)
    end
    L1_2 = A0_2._wait_content_timer
    if L1_2 ~= nil then
      L1_2 = A0_2._wait_content_timer
      L2_2 = L1_2
      L1_2 = L1_2.resume
      L1_2(L2_2)
    end
  end
end
L0_1._resume_talk = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._task_waiting_flag = true
end
L0_1._on_add_task_waiting_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 ~= nil and A1_2 == true
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._stop_and_cache_talk
    L3_2(L4_2)
  end
end
L0_1._on_story_mode_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_talk_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_talker_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_content
  L4_2 = A0_2._cur_talk_info
  L4_2 = L4_2.TextContentID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_play_voice
  L4_2 = A0_2._cur_talk_info
  L4_2 = L4_2.VoiceID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._start_protect_time
  L2_2(L3_2)
end
L0_1._play_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_talk_info
  L1_2 = L1_2.AvatarTextID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  L1_2 = L1_2 ~= L2_2
  L2_2 = A0_2._cur_index
  L2_2 = L2_2 ~= 1
  A0_2._talker_visible_changed = L2_2
  A0_2._talker_visible = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_avatar_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._cur_talk_info
    L4_2 = L4_2.AvatarTextID
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_talker_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_waiting_text_motion
  if not L1_2 then
    L1_2 = A0_2._has_voice
    if L1_2 then
      L1_2 = A0_2._is_waiting_protect
      if L1_2 then
        goto lbl_17
      end
      L1_2 = A0_2._is_waiting_voice
      if L1_2 then
        goto lbl_17
      end
    end
    L1_2 = A0_2._is_waiting_protect
    if not L1_2 then
      L1_2 = A0_2._is_waiting_content
    end
  end
  ::lbl_17::
  if L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._clear_current_talk
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_cur_talk_finish
  L2_2(L3_2)
end
L0_1._try_finish_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 + 1
  A0_2._cur_index = L1_2
  L1_2 = A0_2._cur_index
  L2_2 = A0_2._talk_info_list
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_all_talks_finish
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_talk
    L3_2 = A0_2._talk_info_list
    L4_2 = A0_2._cur_index
    L3_2 = L3_2[L4_2]
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_cur_talk_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_waiting_text_motion = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIStringUtil
  L2_2 = L2_2.GetTalkTextSpeed
  L2_2 = L2_2()
  L2_2 = 1 / L2_2
  L3_2 = A0_2._talker_visible_changed
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.motion_content
    L4_2 = L3_2
    L3_2 = L3_2.ImmediateFinishExitingMotions
    L3_2(L4_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.motion_content
  L4_2 = L3_2
  L3_2 = L3_2.ShowTextIDWithMotion
  L5_2 = L2_2
  function L6_2()
    local L0_3, L1_3
    A0_2._is_waiting_text_motion = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_finish_talk
    L0_3(L1_3)
  end
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._stop_content_timer
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIStringUtil
  L3_2 = L3_2.GetTextSwitchKeepTime
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._is_waiting_content = true
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._stop_content_timer
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_finish_talk
    L0_3(L1_3)
  end
  L7_2 = L3_2
  L8_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._wait_content_timer = L4_2
  L4_2 = A0_2._wait_content_timer
  L5_2 = L4_2
  L4_2 = L4_2.start
  L4_2(L5_2)
end
L0_1._show_content = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_waiting_text_motion
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.motion_content
    L2_2 = L1_2
    L1_2 = L1_2.ImmediateFinishAllMotions
    L1_2(L2_2)
  end
end
L0_1._immediate_finish_text_motion = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._is_waiting_content = false
  L1_2 = A0_2._wait_content_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._wait_content_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._wait_content_timer = nil
  end
end
L0_1._stop_content_timer = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._has_voice = false
  A0_2._is_waiting_voice = false
  if A1_2 == nil or A1_2 <= 0 then
    return
  end
  A0_2._playing_voice_id = A1_2
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
  A0_2._playing_event_id = L2_2
  L2_2 = A0_2._playing_event_id
  L2_2 = L2_2 ~= 0
  A0_2._has_voice = L2_2
  L2_2 = A0_2._playing_event_id
  L2_2 = L2_2 ~= 0
  A0_2._is_waiting_voice = L2_2
end
L0_1._try_play_voice = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_disposed
  if not L2_2 then
    L2_2 = A0_2._is_playing
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._playing_voice_id
  if L2_2 ~= A1_2 then
    return
  end
  A0_2._playing_voice_id = 0
  A0_2._playing_event_id = 0
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  function L4_2()
    local L0_3, L1_3
    A0_2._is_waiting_voice = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_finish_talk
    L0_3(L1_3)
  end
  L5_2 = L2_1
  L6_2 = L2_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._voice_delay_timer = L2_2
  L2_2 = A0_2._voice_delay_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._on_voice_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_waiting_voice
  if L1_2 then
    L1_2 = A0_2._playing_event_id
    if L1_2 ~= 0 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.StopEventID
      L3_2 = A0_2._playing_event_id
      L1_2(L2_2, L3_2)
    end
    A0_2._playing_event_id = 0
    A0_2._is_waiting_voice = false
  end
  L1_2 = A0_2._voice_delay_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._voice_delay_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._voice_delay_timer = nil
  end
end
L0_1._try_stop_voice = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._is_waiting_protect = true
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_protect_time_end
    L0_3(L1_3)
  end
  L4_2 = L1_1
  L5_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._wait_protect_timer = L1_2
  L1_2 = A0_2._wait_protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._start_protect_time = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_protect_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_finish_talk
  L1_2(L2_2)
end
L0_1._on_protect_time_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._is_waiting_protect = false
  L1_2 = A0_2._wait_protect_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._wait_protect_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._wait_protect_timer = nil
  end
end
L0_1._stop_protect_timer = L4_1
return L0_1
