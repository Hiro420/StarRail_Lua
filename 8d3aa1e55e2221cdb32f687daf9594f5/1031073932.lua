local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityRoleTrialFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "RoleTrialActivityReward"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRoleTrialActivityData
  L1_2 = L1_2(L2_2)
  A0_2._data = L1_2
  do return end
  ::lbl_14::
  L1_2 = A0_2._module
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RoleTrialModule
    A0_2._module = L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.TypeParam
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._module
    L7_2 = L6_2
    L6_2 = L6_2.IsRewardCanTake
    L8_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "RoleTrialActivityReward"
      L9_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1.refresh = L2_1
return L0_1
