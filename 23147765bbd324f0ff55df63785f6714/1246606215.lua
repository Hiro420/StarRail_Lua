local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattlePlayTalkDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePlayTalkDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._WaitVoice = 0
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattlePlayTalkDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._is_resp_esc = false
  A0_2._LifeTime = 0
  A0_2._State = ""
  L0_1._voice_playing_id = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_simple_talk
  L4_2 = A0_2._on_btn_simple_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleTalkShow
  L4_2 = L0_1._OnPlayBattleTalk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleTalkClear
  L4_2 = L0_1._OnBattleTalkClear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseBattleTalk
  L4_2 = L0_1._OnCloseBattleTalk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.TalkList
  A0_2._TalkList = L2_2
  L2_2 = A1_2.KeepDisplay
  A0_2._keep_display = L2_2
  A0_2._CurrentIndex = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.simple_talk
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._RefreshBackgroundTalk
  L2_2(L3_2)
end
L0_1._OnPlayBattleTalk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L1_2(L2_2)
end
L0_1._OnBattleTalkClear = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._OnCloseBattleTalk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._voice_playing_id
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEventID
    L3_2 = L0_1._voice_playing_id
    L1_2(L2_2, L3_2)
  end
  L0_1._voice_playing_id = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.simple_talk
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._clear_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._LifeTime = 0
  A0_2._State = ""
  L1_2 = L0_1._voice_playing_id
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEventID
    L3_2 = L0_1._voice_playing_id
    L1_2(L2_2, L3_2)
  end
  L0_1._voice_playing_id = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._CurrentIndex
  L2_2 = A0_2._TalkList
  L2_2 = L2_2.Length
  if L1_2 >= L2_2 then
    L1_2 = A0_2._keep_display
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.simple_talk
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._TalkList
    if L1_2 ~= nil then
      L1_2 = A0_2._TalkList
      L2_2 = A0_2._TalkList
      L2_2 = L2_2.Length
      L2_2 = L2_2 - 1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.TalkSentenceID
      if L1_2 then
        goto lbl_50
      end
    end
    L1_2 = 0
    ::lbl_50::
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleTalkSkip
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleTalkFinish
    L2_2(L3_2)
    return
  end
  L1_2 = A0_2._TalkList
  L2_2 = A0_2._CurrentIndex
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TalkSentenceConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.TalkSentenceID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._PlayVoiceAudio
    L5_2 = L2_2.VoiceID
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._ShowDialogTextmap
    L5_2 = L2_2.TalkSentenceText
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._SetName
    L5_2 = L2_2.TextmapTalkSentenceName
    L3_2(L4_2, L5_2)
  end
  L3_2 = L1_2.AutoSkipTime
  if 0 <= L3_2 then
    L3_2 = L1_2.AutoSkipTime
    A0_2._LifeTime = L3_2
    A0_2._State = "Playing"
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_next
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_wait
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._CurrentIndex
  L3_2 = L3_2 + 1
  A0_2._CurrentIndex = L3_2
end
L0_1._RefreshBackgroundTalk = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._State
  if L2_2 == "Playing" then
    L2_2 = A0_2._LifeTime
    if 0 < L2_2 then
      L2_2 = A0_2._LifeTime
      L2_2 = L2_2 - A1_2
      A0_2._LifeTime = L2_2
      L2_2 = A0_2._LifeTime
      if L2_2 <= 0 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_icon_next
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_icon_wait
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = L0_1._WaitVoice
        if L2_2 == 0 then
          L3_2 = A0_2
          L2_2 = A0_2._RefreshBackgroundTalk
          L2_2(L3_2)
        end
      end
    else
      L2_2 = L0_1._WaitVoice
      if L2_2 == 0 then
        L3_2 = A0_2
        L2_2 = A0_2._RefreshBackgroundTalk
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostVoice
  L4_2 = A1_2
  L5_2 = nil
  L6_2 = A0_2._VoiceEndCB
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L0_1._voice_playing_id = L2_2
  L2_2 = L0_1._voice_playing_id
  if L2_2 ~= 0 then
    L2_2 = L0_1._WaitVoice
    L2_2 = L2_2 + 1
    L0_1._WaitVoice = L2_2
  end
end
L0_1._PlayVoiceAudio = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.IsEmpty
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_content
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.motion_content
      L3_2 = L2_2
      L2_2 = L2_2.ImmediateFinishAllMotions
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.motion_content
      L3_2 = L2_2
      L2_2 = L2_2.ShowTextIDWithMotion
      L4_2 = 0.05
      L5_2 = nil
      L6_2 = A1_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._ShowDialogTextmap = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.IsEmpty
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.avatar_name_content
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.avatar_name_content
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_name_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._SetName = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L0_1._WaitVoice
  L3_2 = L3_2 - 1
  L0_1._WaitVoice = L3_2
  L0_1._voice_playing_id = 0
end
L0_1._VoiceEndCB = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._LifeTime
  if 0 < L1_2 then
    return
  end
  L1_2 = A0_2._State
  if L1_2 ~= "Playing" then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._RefreshBackgroundTalk
  L1_2(L2_2)
end
L0_1._on_btn_simple_talk = L2_1
return L0_1
