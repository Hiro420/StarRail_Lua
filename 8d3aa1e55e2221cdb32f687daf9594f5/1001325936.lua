local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.DrinkMakerModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.Prefs
L1_1 = L1_1.User
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.OfferingModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityDrinkMakerFilter"
L5_1 = G
L5_1 = L5_1.BaseFilter
L6_1 = G
L3_1 = L3_1(L4_1, L5_1, L6_1)
function L4_1(A0_2)
  local L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.register_events = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.unregister_events = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "ActivityDrinkMaker"
  return L1_2
end
L3_1.get_associate_reddot = L4_1
function L4_1(A0_2)
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
    L1_2 = L1_2.GetDrinkMakerActivityData
    L1_2 = L1_2(L2_2)
    A0_2._activity_data = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_guest
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_drink
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ingredient
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_go_to_every_day
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_offer_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_limit_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_reward
  L1_2(L2_2)
end
L3_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllGuestsData
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.FinishQuest
    if L7_2 ~= nil then
      L8_2 = L7_2.Status
      L9_2 = CS
      L9_2 = L9_2.BLHLCHNAJKK
      L9_2 = L9_2.CDJHHIHBNMN
      if L8_2 == L9_2 then
        L8_2 = G
        L8_2 = L8_2.RedDotModule
        L8_2 = L8_2.Instance
        L9_2 = L8_2
        L8_2 = L8_2.update_reddot
        L10_2 = "DrinkMakerGuestFinishReward"
        L11_2 = L6_2.GuestID
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L3_1._refresh_guest = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewDrinks
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "DrinkMakerNewDrink"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDrinkMakerNewCustomDrink
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "DrinkMakerNewCustomDrink"
    L1_2(L2_2, L3_2)
  end
end
L3_1._refresh_drink = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewIngredients
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "DrinkMakerNewIngredient"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L3_1._refresh_ingredient = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewChallenges
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.GetChallengeData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsFinish
      if not L7_2 then
        L7_2 = L6_2.IsUnlock
        if L7_2 then
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "DrinkMakerNewChallenge"
          L10_2 = L5_2
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L3_1._refresh_challenge = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsShowDailyGotoRedDot
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "DrinkMakerGoToEveryDay"
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._refresh_go_to_every_day = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetOfferingRewardData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerModule
  L3_2 = L3_2.OFFER_TYPE
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.CanLevelUp
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RedDotModule
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.update_reddot
      L4_2 = "DrinkMakerOfferSubmit"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.OfferHasReward
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "DrinkMakerOfferEntrance"
    L2_2(L3_2, L4_2)
  end
end
L3_1._refresh_offer_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsAllActivityRewardTaken
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetDrinkMakerLimitRewardHasSeen
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "DrinkMakerTimeLimitRewardNew"
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._refresh_limit_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.is_avatar_reward_taken
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetDrinkMakerAvatarRewardHasSeen
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "DrinkMakerAvatarRewardNew"
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasAvatarReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "DrinkMakerAvatarRewardTake"
    L1_2(L2_2, L3_2)
  end
end
L3_1._refresh_avatar_reward = L4_1
return L3_1
