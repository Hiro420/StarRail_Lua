local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeCumulativeRewardNodePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_need_star
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_need_star_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_need_star_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_need_star = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect
  L5_2 = L5_2.anchorMin
  L5_2 = L5_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.anchorMin = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect
  L5_2 = L5_2.anchorMax
  L5_2 = L5_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.anchorMax = L3_2
end
L0_1.setup_anchor = L1_1
return L0_1
