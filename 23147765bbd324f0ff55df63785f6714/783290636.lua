local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmPropUnlockDialogBinder"
L0_1(L1_1)
L0_1 = "DailyMissionUnlockHint"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeUnlockToast"
L3_1 = G
L3_1 = L3_1.BaseDialog
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmPropUnlockDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._challenge_group_type = A1_2
  A0_2._target_transform = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UINewSystemHintBegin
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_group_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_fade_in
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_group_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "ChallengeMaze_SystemTitle"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._challenge_group_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Story
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ChallengeStory_Title"
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_group_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._close
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L1_1._show_fade_in = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
end
L1_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_line
  L2_2 = A0_2._target_transform
  L2_2 = L2_2.position
  L1_2.OverrideTargetPosition = L2_2
end
L1_1._setup_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.remove_tick
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._close = L2_1
return L1_1
