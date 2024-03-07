local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = require
L2_1 = "Logic.RedDotModule.Filters.BaseFilter"
L1_1(L2_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyDailyResourceFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "ActivityMonopolyBtnEntrance"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._refresh_monopoly_daily_reward
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.SystemInfo
  L1_2 = L1_2.IsMonopolyDailyRewardGet
  if not L1_2 then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsFinishConditionsCompleted
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.update_reddot
  L3_2 = "ActivityMonopolyDailyRewardHint"
  L1_2(L2_2, L3_2)
end
L1_1._refresh_monopoly_daily_reward = L2_1
return L1_1
