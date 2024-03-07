local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.TutorialAlleyTransportMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransport"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SecondTutorialAlleyTransportMainPage"
L2_1 = G
L2_1 = L2_1.TutorialAlleyTransportMainPage
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.super
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit_transport_performance
  L3_2(L4_2)
  L3_2 = A0_2._cur_show_layer
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.max_show_layer
  if L3_2 <= L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L4_2 = A0_2._cur_show_layer
    L3_2.AlleyTransportShowLayer = L4_2
  end
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.cur_show_layer = 1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MouseInputController
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.SetCursorSprite
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.is_use_by_tutorial = false
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.is_use_by_special_transport = false
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TutorialLevelGraphEnd
  L5_2 = G
  L5_2 = L5_2.TutorialManager
  L6_2 = L5_2
  L5_2 = L5_2.get_running_tutorial_id
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_dispose = L1_1
return L0_1
