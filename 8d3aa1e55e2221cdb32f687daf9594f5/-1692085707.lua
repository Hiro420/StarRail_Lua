local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SilverWolfModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SilverWolfActivityFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "SilverWolfMissionBtn"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_group_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avail_reward_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_raid_tab_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_btn_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_companion_btn_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shop_btn_red_dot
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNewGroupIDList
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  if 0 < L2_2 then
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
      L8_2 = "SilverWolfGroupTab"
      L9_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L1_1._refresh_new_group_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRewardAvailGroupData
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
    L8_2 = "SilverWolfGroupTab"
    L9_2 = L1_2[L5_2]
    L9_2 = L9_2.GroupId
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.ExploreData
    L6_2 = L6_2.HasRewardAvail
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "SilverWolfExploreTab"
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.GroupId
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.ShootData
    L6_2 = L6_2.HasRewardAvail
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "SilverWolfShootTab"
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.GroupId
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.RaidData
    L6_2 = L6_2.HasRewardAvail
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "SilverWolfRaidTab"
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.GroupId
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L1_1._refresh_avail_reward_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNewTabGroupIDList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2[0]
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfGroupTab"
    L9_2 = L1_2[0]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfExploreTab"
    L9_2 = L1_2[0]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = 0
  L3_2 = L1_2[1]
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfGroupTab"
    L9_2 = L1_2[1]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfShootTab"
    L9_2 = L1_2[1]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = 0
  L3_2 = L1_2[2]
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfGroupTab"
    L9_2 = L1_2[2]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "SilverWolfRaidTab"
    L9_2 = L1_2[2]
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh_new_raid_tab_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailRewardQuestIDList
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
    L8_2 = "SilverWolfRewardBtn"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh_reward_btn_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowCompanionBtnReddot
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "SilverWolfCollectionBtn"
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._refresh_companion_btn_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SilverWolfShopSeen
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SilverWolfUtils
    L1_2 = L1_2.GetCurActivityState
    L1_2 = L1_2()
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SilverWolfState
    L2_2 = L2_2.SilverWolfStateUnlock
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogFormat
      L2_2 = "[hwx] update_reddot SilverWolfShopBtn"
      L1_2(L2_2)
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "SilverWolfShopBtn"
      L4_2 = nil
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L1_1._refresh_shop_btn_red_dot = L2_1
return L1_1
