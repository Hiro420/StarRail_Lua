local L0_1, L1_1, L2_1, L3_1
L0_1 = "RogueEverlastingRewardInfoItem_Remind"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessScoreProgressBarPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_complete
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A2_2 <= A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bonus_collect
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = 0
  if A3_2 < A4_2 then
    L6_2 = math
    L6_2 = L6_2.max
    L7_2 = 0
    L8_2 = math
    L8_2 = L8_2.min
    L9_2 = A1_2 - A3_2
    L10_2 = A4_2 - A3_2
    L9_2 = L9_2 / L10_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_progress_bar
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_progress_bar
  L6_2.fillAmount = L5_2
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_complete
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bonus_collect
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_bonus_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_bonus_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_RogueChallengeActivity_Quest_Progress"
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bonus_activated
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_bar
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L1_1.setup_view_for_bonus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L1_1.try_play_anime_finish = L2_1
return L1_1
