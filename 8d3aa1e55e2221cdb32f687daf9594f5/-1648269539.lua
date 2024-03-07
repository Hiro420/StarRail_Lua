local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityModule
L0_1 = L0_1.ActivityType
L0_1 = L0_1.PenaconyGiftActivity
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityMonsterResearchModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ActivityMonsterResearchConstExcelTable
L2_1 = L2_1.GetData
L3_1 = "PenaconyGift_ContentID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PenaconyGiftActivityFilter"
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
  L1_2 = "PenaconyGiftActivityGoto"
  return L1_2
end
L3_1.get_associate_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_unlock_gift
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_can_take_reward_gift
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_go_to_every_day
  L1_2(L2_2)
end
L3_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllUnlockResearchIds
  L4_2 = L2_1
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.Prefs
    L6_2 = L6_2.User
    L6_2 = L6_2.SeenPenaconyGiftNewUnlockGifts
    L7_2 = L6_2
    L6_2 = L6_2.Contains
    L8_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "PenaconyGiftNewUnlockGift"
      L9_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L3_1._refresh_new_unlock_gift = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCanTakeRewardItems
  L4_2 = L2_1
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "PenaconyGiftReward"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L3_1._refresh_can_take_reward_gift = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsGotoEveryDayActive
  L3_2 = L2_1
  L4_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "PenaconyGiftActivityGoToEveryDay"
    L1_2(L2_2, L3_2)
  end
end
L3_1._refresh_go_to_every_day = L4_1
return L3_1
