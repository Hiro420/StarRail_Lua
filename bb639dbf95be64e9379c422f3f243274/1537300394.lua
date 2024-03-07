local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ToastChallengePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastChallengeMazeHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._LOCK_TIME = 2
L1_1 = {}
L1_1.none = 0
L1_1.playing = 1
L1_1.waiting = 2
function L2_1(A0_2)
  local L1_2
  A0_2._time = 0
  L1_2 = L1_1.none
  A0_2._status = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._challenge_instance = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._status
  L3_2 = L1_1.none
  if L2_2 == L3_2 then
    return
  else
    L2_2 = A0_2._status
    L3_2 = L1_1.playing
    if L2_2 == L3_2 then
      L2_2 = A0_2._time
      L2_2 = L2_2 - A1_2
      A0_2._time = L2_2
      L2_2 = A0_2._time
      if L2_2 < 0 then
        L3_2 = A0_2
        L2_2 = A0_2._wait
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._status
      L3_2 = L1_1.waiting
      if L2_2 == L3_2 then
        L2_2 = A0_2._time
        L2_2 = L2_2 - A1_2
        A0_2._time = L2_2
        L2_2 = A0_2._time
        if L2_2 < 0 then
          L3_2 = A0_2
          L2_2 = A0_2._complete
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChallengeModule
  L2_2 = L2_2.CurrentChallengeInstance
  A0_2._challenge_instance = L2_2
  L2_2 = A0_2._challenge_instance
  L2_2 = L2_2.ChallengeDataRef
  L2_2 = L2_2.ChallengeGroupDataRef
  A0_2._challenge_group_data = L2_2
  A0_2._panel_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._play
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_left_turn
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.ChallengeDataRef
  L1_2 = L1_2.StageNum
  L2_2 = L1_2 <= 1
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "ChallengeMaze_access_button"
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.TeamModule
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentTeam
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.LineupType
    L5_2 = CS
    L5_2 = L5_2.DEAEDMGDDHH
    L5_2 = L5_2.GIKNECLHJND
    L4_2 = L4_2 == L5_2
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "ChallengeMaze_Toast_1"
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "ChallengeMaze_Toast_2"
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.GroupType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Story
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = "SpriteOutput/TabIcon/Abyss/ChallengeStory.png"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.GroupType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2._challenge_instance
    L1_2 = L1_2.CurrentProgress
    L1_2 = L1_2.TurnCost
    L2_2 = A0_2._challenge_instance
    L2_2 = L2_2.ChallengeDataRef
    L2_2 = L2_2.ChallengeCountDown
    L2_2 = L2_2 - L1_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_left_turn_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L1_2 = A0_2._challenge_instance
    L1_2 = L1_2.GroupType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_left_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ChallengeStory_CurrentPoint_Top"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_left_turn_num
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2._challenge_instance
      L3_2 = L3_2.Score
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_left_turn = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._complete_obj = A1_2
  A0_2._complete_callback = A2_2
end
L0_1.set_complete_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.none
  A0_2._status = L1_2
  L1_2 = A0_2._complete_obj
  if L1_2 ~= nil then
    L1_2 = A0_2._complete_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._complete_callback
      L2_2 = A0_2._complete_obj
      L1_2(L2_2)
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.ShowChallengeTargetAnimation
    L0_3(L1_3)
  end
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1._complete = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L1_1.playing
  A0_2._status = L1_2
  L1_2 = L0_1._LOCK_TIME
  A0_2._time = L1_2
end
L0_1._play = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L1_1.waiting
  A0_2._status = L1_2
  A0_2._time = 0
end
L0_1._wait = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._hide = L2_1
return L0_1
