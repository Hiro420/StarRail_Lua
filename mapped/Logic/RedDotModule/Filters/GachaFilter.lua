local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._new_pool_id_list = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._new_pool_id_list = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "Gacha"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NewGachaPoolRedDotUpdate
  L4_2 = L0_1._refresh_new_pool_ids
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_pool_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_trial_reddot
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._new_pool_id_list
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_new_pool_ids
    L1_2(L2_2)
  end
  L1_2 = 0
  L2_2 = A0_2._new_pool_id_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "GachaNewPool"
    L8_2 = A0_2._new_pool_id_list
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_new_pool_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L2_2 = L1_2.GachaNormalTrialStageIDList
  L3_2 = false
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.RoleTrialModule
    L9_2 = L8_2
    L8_2 = L8_2.IsRewardCanTake
    L10_2 = L2_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L3_2 = true
      break
    end
  end
  L4_2 = L1_2.GachaNormalPoolID
  if L3_2 and L4_2 then
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "GachaTrialBtnNormal"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Prefs
  L5_2 = L5_2.User
  L5_2 = L5_2.GachaNormalTrialBtnSeen
  if not L5_2 then
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "GachaTrialBtnNew"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "GachaTrialBtnNewTabNormal"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_trial_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L3_2 = L1_2
  L2_2 = L1_2.GetNewPoolIDs
  L2_2 = L2_2(L3_2)
  A0_2._new_pool_id_list = L2_2
end
L0_1._refresh_new_pool_ids = L1_1
