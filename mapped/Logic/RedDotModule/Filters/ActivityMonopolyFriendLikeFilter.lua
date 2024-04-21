local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyFriendLikeFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ActivityMonopolyFriendLikeHint"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetMonopolyActivityData
    L1_2 = L1_2(L2_2)
    A0_2._activity_data = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_monopoly_friend_like_reward
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.HasLikeFriendTimes
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.MonopolyUtils
    L1_2 = L1_2.IsTodaySeenFriendRank
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = A0_2._activity_data
      L2_2 = L1_2
      L1_2 = L1_2.IsFinishConditionsCompleted
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = G
        L1_2 = L1_2.RedDotModule
        L1_2 = L1_2.Instance
        L2_2 = L1_2
        L1_2 = L1_2.update_reddot
        L3_2 = "ActivityMonopolyFriendLikeHint"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._refresh_monopoly_friend_like_reward = L1_1
return L0_1
