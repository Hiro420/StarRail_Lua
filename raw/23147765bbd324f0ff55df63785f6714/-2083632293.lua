local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BubbleTalkManager"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
L2_1 = 30
function L3_1(A0_2)
  local L1_2
  A0_2._BubbleTalkEnable = true
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._AllTalks = L1_2
  L1_2 = {}
  A0_2._all_bubbles = L1_2
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBubbleManagerResetNPCManager
  L4_2 = L0_1._on_ui_bubble_manager_reset_npc_manager
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICreateBubbleTalk
  L4_2 = L0_1._OnUICreateBubbleTalk
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIFinishBubbleTalk
  L4_2 = L0_1._OnFinishBubbleTalk
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBubbleManagerResetNPCManager
  L4_2 = L0_1._on_ui_bubble_manager_reset_npc_manager
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICreateBubbleTalk
  L4_2 = L0_1._OnUICreateBubbleTalk
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIFinishBubbleTalk
  L4_2 = L0_1._OnFinishBubbleTalk
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._ClearAll
  L1_2(L2_2)
end
L0_1.dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._ClearDeadTalk
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._ClearDeadBubble
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._TickAllTalks
  L2_2(L3_2)
end
L0_1.tick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = pairs
  L4_2 = A0_2._all_bubbles
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.RuntimeID
    if L8_2 == A1_2 then
      L8_2 = L7_2.EndStamp
      if L2_2 <= L8_2 then
        L9_2 = A0_2
        L8_2 = A0_2._try_setup_bubble_panel
        L10_2 = L7_2
        L11_2 = L6_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1.try_replay_talk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = A1_2.UniqueName
  L2_2.UniqueName = L3_2
  L3_2 = A1_2.IsLoop
  L2_2.IsLoop = L3_2
  L3_2 = {}
  L2_2.BubbleList = L3_2
  L2_2.CSObj = A1_2
  L3_2 = 0
  L4_2 = A1_2.BubbleTalkInfoList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.BubbleTalkInfoList
    L7_2 = L7_2[L6_2]
    L8_2 = {}
    L9_2 = L7_2.RuntimeID
    L8_2.RuntimeID = L9_2
    L9_2 = L7_2.TalkSentenceID
    if L9_2 ~= nil then
      L9_2 = L7_2.TalkSentenceID
      if 0 < L9_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.TalkSentenceConfigExcelTable
        L9_2 = L9_2.GetData
        L10_2 = L7_2.TalkSentenceID
        L9_2 = L9_2(L10_2)
        if L9_2 ~= nil then
          L10_2 = L9_2.TalkSentenceText
          L8_2.DialogueTextmapID = L10_2
          L10_2 = L7_2.ReplaceParam
          L8_2.ReplaceParam = L10_2
          L10_2 = L9_2.VoiceID
          L8_2.VoiceID = L10_2
        end
      end
    end
    L9_2 = A1_2.BubbleTalkType
    L8_2.Type = L9_2
    L9_2 = L7_2.EnableVoice
    if L9_2 then
      L9_2 = L8_2.VoiceID
      L9_2 = L9_2 ~= nil
    end
    L8_2.HasVoice = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2.BubbleList
    L11_2 = L2_2.BubbleList
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L3_2 = A0_2._InitBubbleTalk
  L4_2 = L2_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Time
  L5_2 = L5_2.time
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._CreateOneTalk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._voice_interval_time
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueCommonExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "SimpleTalk_Voice_IntervalTime"
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.Value
    L1_2 = L1_2.IntValue
    A0_2._voice_interval_time = L1_2
  end
  L1_2 = A0_2._voice_interval_time
  return L1_2
end
L0_1._get_voice_interval_time = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.CurrentBubbleIndex = 1
  L2_2 = A0_2.BubbleList
  L2_2 = L2_2[1]
  if L2_2 ~= nil then
    L3_2 = L0_1._InitBubble
    L4_2 = L2_2
    L5_2 = A1_2
    L6_2 = A0_2.CSObj
    L6_2 = L6_2.BubbleTalkInfoList
    L6_2 = L6_2[0]
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._InitBubbleTalk = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2.IsFinish = false
  A0_2.IsPlaying = false
end
L0_1._ResetBubble = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L0_1._ResetBubble
  L4_2 = A0_2
  L3_2(L4_2)
  A0_2.StartStamp = A1_2
  L3_2 = A0_2.HasVoice
  if L3_2 then
    L3_2 = A0_2.StartStamp
    L4_2 = L2_1
    L3_2 = L3_2 + L4_2
    A0_2.EndStamp = L3_2
  else
    L3_2 = A0_2.StartStamp
    L4_2 = A2_2.AutoSkipTime
    L3_2 = L3_2 + L4_2
    A0_2.EndStamp = L3_2
  end
end
L0_1._InitBubble = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._AllTalksCount
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._AllTalks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.CurrentBubbleIndex
    L8_2 = L6_2.BubbleList
    L8_2 = #L8_2
    if L7_2 <= L8_2 then
      L7_2 = L6_2.UniqueName
      L1_2[L7_2] = L6_2
    else
      L7_2 = L1_1.notify
      L8_2 = G
      L8_2 = L8_2.CS
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.UIPlayBubbleTalkFinish
      L9_2 = L6_2.CSObj
      L7_2(L8_2, L9_2)
    end
  end
  A0_2._AllTalks = L1_2
end
L0_1._ClearDeadTalk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._AllBubblesCount
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = pairs
  L4_2 = A0_2._all_bubbles
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.EndStamp
    if L2_2 <= L8_2 then
      L1_2[L6_2] = L7_2
    end
  end
  A0_2._all_bubbles = L1_2
end
L0_1._ClearDeadBubble = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._NPCMng
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._BubbleTalkEnable
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = pairs
  L3_2 = A0_2._AllTalks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.CurrentBubbleIndex
    L8_2 = L6_2.BubbleList
    L8_2 = #L8_2
    if L7_2 <= L8_2 then
      L7_2 = L6_2.BubbleList
      L8_2 = L6_2.CurrentBubbleIndex
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2.StartStamp
      if L1_2 >= L8_2 then
        L8_2 = L7_2.EndStamp
        L8_2 = L1_2 > L8_2
        L9_2 = L7_2.IsPlaying
        if not L9_2 and not L8_2 then
          L10_2 = A0_2
          L9_2 = A0_2._try_start_bubble
          L11_2 = L7_2
          L12_2 = L5_2
          L9_2(L10_2, L11_2, L12_2)
        else
          L9_2 = L7_2.IsFinish
          if L9_2 or L8_2 then
            L10_2 = A0_2
            L9_2 = A0_2._try_end_current_bubble
            L11_2 = L6_2
            L12_2 = L1_2
            L9_2(L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
end
L0_1._TickAllTalks = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_bubble_panel
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._try_start_bubble = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.BubbleList
  L4_2 = A1_2.CurrentBubbleIndex
  L3_2 = L3_2[L4_2]
  L3_2.IsPlaying = false
  L4_2 = L3_2.EndStamp
  if A2_2 < L4_2 then
    L4_2 = G
    L4_2 = L4_2.BillboardManager
    L4_2 = L4_2._find_billboard_by_runtime_id
    L5_2 = L3_2.RuntimeID
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.get_bubble
      L7_2 = L3_2.Type
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L7_2 = L5_2
        L6_2 = L5_2.end_bubble_talk
        L6_2(L7_2)
      end
    end
  end
  L4_2 = A1_2.CurrentBubbleIndex
  L4_2 = L4_2 + 1
  A1_2.CurrentBubbleIndex = L4_2
  L4_2 = A1_2.CurrentBubbleIndex
  L5_2 = A1_2.BubbleList
  L5_2 = #L5_2
  if L4_2 > L5_2 then
    L4_2 = A1_2.IsLoop
    if L4_2 then
      L4_2 = A1_2.CSObj
      L4_2 = L4_2.LoopInterval
      L4_2 = A2_2 + L4_2
      L5_2 = A0_2._InitBubbleTalk
      L6_2 = A1_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  else
    L4_2 = L3_2.HasVoice
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._get_voice_interval_time
      L4_2 = L4_2(L5_2)
      A2_2 = A2_2 + L4_2
    end
    L4_2 = A1_2.BubbleList
    L5_2 = A1_2.CurrentBubbleIndex
    L3_2 = L4_2[L5_2]
    L4_2 = A0_2._InitBubble
    L5_2 = L3_2
    L6_2 = A2_2
    L7_2 = A1_2.CSObj
    L7_2 = L7_2.BubbleTalkInfoList
    L8_2 = A1_2.CurrentBubbleIndex
    L8_2 = L8_2 - 1
    L7_2 = L7_2[L8_2]
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._try_end_current_bubble = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._all_bubbles
  L3_2[A2_2] = A1_2
  L3_2 = G
  L3_2 = L3_2.BillboardManager
  L3_2 = L3_2._find_billboard_by_runtime_id
  L4_2 = A1_2.RuntimeID
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.get_bubble
    L6_2 = A1_2.Type
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.set_bubble_unique_name
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2.RuntimeID
      if 0 < L5_2 then
        L6_2 = L4_2
        L5_2 = L4_2.safe_set_text_id
        L7_2 = A1_2.DialogueTextmapID
        L8_2 = A1_2.EndStamp
        L9_2 = A1_2.ReplaceParam
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = A1_2.HasVoice
        if L5_2 then
          L5_2 = A1_2.IsPlaying
          if not L5_2 then
            L6_2 = L3_2
            L5_2 = L3_2.get_entity_unity_go
            L5_2 = L5_2(L6_2)
            L6_2 = CS
            L6_2 = L6_2.RPG
            L6_2 = L6_2.Client
            L6_2 = L6_2.GlobalVars
            L6_2 = L6_2.s_AudioManager
            L7_2 = L6_2
            L6_2 = L6_2.PostVoice
            L8_2 = A1_2.VoiceID
            L9_2 = L5_2
            function L10_2(A0_3, A1_3)
              A1_2.IsFinish = true
            end
            L6_2(L7_2, L8_2, L9_2, L10_2)
            L6_2 = A1_2.EndStamp
            L7_2 = L2_1
            L6_2 = L6_2 + L7_2
            A1_2.EndStamp = L6_2
          end
        end
      else
        L6_2 = L4_2
        L5_2 = L4_2.SetEndStamp
        L7_2 = A1_2.EndStamp
        L5_2(L6_2, L7_2)
      end
      A1_2.IsPlaying = true
    end
  end
end
L0_1._try_setup_bubble_panel = L3_1
function L3_1(A0_2, A1_2)
  A0_2._BubbleTalkEnable = A1_2
end
L0_1._switchBubbleTalk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._NPCMng = A1_2
  L2_2 = A0_2._NPCMng
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._ClearAll
    L2_2(L3_2)
  end
end
L0_1._SetNPCManager = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._SetNPCManager
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_ui_bubble_manager_reset_npc_manager = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._AllTalks = L1_2
  L1_2 = {}
  A0_2._all_bubbles = L1_2
end
L0_1._ClearAll = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.UniqueName
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_2 = A1_2.UniqueName
    L2_2 = L2_2(L3_2)
    if L2_2 ~= 0 then
      goto lbl_16
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormat
  L3_2 = "[BubbleTalkManager] \229\136\155\229\187\186\231\154\132BubbleTalk UniqueName\230\156\170\232\174\190\239\191\189?"
  L2_2(L3_2)
  do return end
  ::lbl_16::
  L2_2 = A0_2._AllTalks
  L3_2 = A1_2.UniqueName
  L5_2 = A0_2
  L4_2 = A0_2._CreateOneTalk
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L2_2[L3_2] = L4_2
end
L0_1._OnUICreateBubbleTalk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2._AllTalks
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    return
  end
  L3_2 = A0_2._AllTalks
  L3_2[A1_2] = nil
  L3_2 = A0_2._all_bubbles
  L3_2[A1_2] = nil
  L3_2 = L1_1.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPlayBubbleTalkFinish
  L5_2 = L2_2.CSObj
  L3_2(L4_2, L5_2)
end
L0_1._OnFinishBubbleTalk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._AllTalks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1._AllTalksCount = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._all_bubbles
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1._AllBubblesCount = L3_1
return L0_1
