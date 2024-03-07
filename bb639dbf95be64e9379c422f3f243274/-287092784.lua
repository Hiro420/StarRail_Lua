local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardBubblePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.AnimationAction"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardLocationPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardBubblePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardBubblePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_bubble_choose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardBubblePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardBubblePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_bubble_go = L1_2
  L1_2 = A0_2._panel_bubble_choose
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bubble_choose
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_bubble_go
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bubble_go
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamLeaderSwitched
  L4_2 = A0_2._on_team_leader_switched
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node
  L3_2 = A1_2.position
  L2_2.position = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node
  L3_2 = L2_2
  L2_2 = L2_2.SetAsLastSibling
  L2_2(L3_2)
end
L0_1.refresh_position = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L3_2 = L1_2
  L2_2 = L1_2.GetExtraTeam
  L4_2 = CS
  L4_2 = L4_2.DEAEDMGDDHH
  L4_2 = L4_2.BJPEFPLKPMD
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.TeamLeader
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = nil
  ::lbl_18::
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._setup_icon
    L6_2 = L3_2.AvatarData
    L4_2(L5_2, L6_2)
  end
end
L0_1.refresh_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_avatar
    L5_2 = A1_2.Row
    L5_2 = L5_2.AvatarSideIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_icon = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == "bubbleChoose" then
    L3_2 = A0_2._panel_bubble_choose
    L4_2 = L3_2
    L3_2 = L3_2.set_active
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  elseif A1_2 == "bubbleGo" then
    L3_2 = A0_2._panel_bubble_go
    L4_2 = L3_2
    L3_2 = L3_2.set_active
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogError
    L4_2 = "No Such BubbleName"
    L3_2(L4_2)
  end
end
L0_1.setup_bubble_state = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == "bubbleChoose" then
    L3_2 = A0_2._panel_bubble_choose
    L4_2 = L3_2
    L3_2 = L3_2.play_animation
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  elseif A1_2 == "bubbleGo" then
    L3_2 = A0_2._panel_bubble_go
    L4_2 = L3_2
    L3_2 = L3_2.play_animation
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogError
    L4_2 = "No Such BubbleName"
    L3_2(L4_2)
  end
end
L0_1.play_bubble_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_bubble_state
  L3_2 = "bubbleChoose"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_bubble_state
  L3_2 = "bubbleGo"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = "ChessmanAvatarItem_FadeIn"
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.get_fade_in_animation_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "ChessmanAvatarItem_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.partical_fade
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.partical_fade
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end
L0_1.play_fade_in_partical = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "ChessmanAvatarItem_FadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_icon
  L1_2(L2_2)
end
L0_1._on_team_leader_switched = L1_1
return L0_1
