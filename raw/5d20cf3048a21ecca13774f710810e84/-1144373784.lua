local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_status
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "HandBookBattleCollegeTab"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_new_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_seen_red_dot
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._group_unlock_status
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._group_unlock_status = L1_2
  L1_2 = pairs
  L2_2 = A0_2._group_unlock_status
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._group_unlock_status
    L6_2[L4_2] = nil
  end
  L1_2 = L1_1.AllBattleCollegeGroupData
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.IsUnlock
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L6_2.IsFinish
        if not L8_2 then
          L8_2 = A0_2._group_unlock_status
          L9_2 = L6_2.ID
          L8_2[L9_2] = true
        end
      end
    end
  end
end
L0_1._refresh_unlock_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._group_unlock_status
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.Prefs
      L6_2 = L6_2.User
      L6_2 = L6_2.BattleCollegeSeenGroupIDs
      L7_2 = L6_2
      L6_2 = L6_2.Contains
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.RedDotModule
        L6_2 = L6_2.Instance
        L7_2 = L6_2
        L6_2 = L6_2.update_reddot
        L8_2 = "BattleCollegeGroupTabUnlock"
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1._refresh_group_new_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetBattleCollegeLevelNotSeenList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "BattleCollegeLevelTabNew"
    L9_2 = L1_2[L5_2]
    L9_2 = L9_2.ID
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "BattleCollegeGroupTabNew"
    L9_2 = L1_2[L5_2]
    L9_2 = L9_2.GroupID
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_level_seen_red_dot = L2_1
return L0_1
