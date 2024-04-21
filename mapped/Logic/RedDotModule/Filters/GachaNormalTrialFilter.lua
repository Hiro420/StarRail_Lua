local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaNormalTrialFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "GachaNormalTrialTab"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_trial_reddot
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L2_2 = L1_2.GachaNormalTrialStageIDList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.RoleTrialModule
    L8_2 = L7_2
    L7_2 = L7_2.IsRewardCanTake
    L9_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "GachaNormalTrialTab"
      L10_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_trial_reddot = L1_1
