local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyBingoRewardRankPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L0_1.GameInfo
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMonopolyGameResourceData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_reward_icon
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_reward_icon
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L3_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward_icon
  L3_2 = #L3_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_icon_active
    L6_2(L7_2)
  end
end
L1_1.set_reward_icon_active = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = 1
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_reward_icon
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._binder
      L7_2 = L7_2.panel_reward_icon
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2
      L7_2 = L7_2.set_icon_final_active
      L7_2(L8_2)
    end
  end
end
L1_1.set_rank_active = L2_1
return L1_1
