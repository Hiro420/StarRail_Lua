local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RoleTrialModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AvatarTrialTakeRewardFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "AvatarTrialTakeReward"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCanTakeRewardEntranceID
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.RoleTrialUtils
    L6_2 = L6_2.IsAvatarDisplayOnly
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.RoleTrialUtils
      L6_2 = L6_2.IsShowRoleTrialEntrance
      L6_2 = L6_2()
      if L6_2 then
        L6_2 = G
        L6_2 = L6_2.RedDotModule
        L6_2 = L6_2.Instance
        L7_2 = L6_2
        L6_2 = L6_2.update_reddot
        L8_2 = "AvatarTrialTakeReward"
        L9_2 = L1_2[L5_2]
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L1_1.refresh = L2_1
return L1_1
