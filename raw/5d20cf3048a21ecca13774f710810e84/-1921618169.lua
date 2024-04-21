local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CoinGiftResetFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.Prefs
L2_1 = L2_1.User
function L3_1(A0_2)
  local L1_2
  L1_2 = "CoinGiftReset"
  return L1_2
end
L0_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.IsLastVersionBoughtGiftCoin
  if L1_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetGiftCoinSeenVersion
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1.GiftCoinCurVersion
    if L1_2 < L2_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "CoinGiftReset"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.refresh = L3_1
return L0_1
