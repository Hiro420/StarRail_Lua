local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ShopConfigExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.LimitType
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ShopLockData"
L4_1 = G
L4_1 = L4_1.Shop
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.ShopID = A1_2
  L2_2 = L0_1.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "\229\149\134\229\186\151\233\133\141\232\161\168\232\175\187\229\143\150\229\164\177\232\180\165\239\188\140ShopID\239\188\154"
    L5_2 = A1_2
    L6_2 = " , \232\175\183\230\139\137\230\150\176\230\156\172\229\156\176\233\133\141\232\161\168\229\134\141\230\172\161\229\176\157\232\175\149"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    A0_2.IsDataValid = false
    return
  end
  A0_2.IsDataValid = true
  L3_2 = L2_2.IsOpen
  A0_2.IsOpen = L3_2
  L3_2 = L2_2.ShopType
  A0_2.ShopType = L3_2
  L3_2 = L2_2.ScheduleDataID
  A0_2.ScheduleDataID = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._process_limits
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2.IsUnlock = false
  A0_2.IsWaitingRsp = false
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2.ShopID = nil
  A0_2.IsDataValid = nil
  A0_2.IsOpen = nil
  A0_2.ShopType = nil
  A0_2.ScheduleDataID = nil
  A0_2.LimitType1 = nil
  A0_2.LimitValue1List = nil
  A0_2.LimitType2 = nil
  A0_2.LimitValue2List = nil
  A0_2.IsUnlock = nil
  A0_2.IsWaitingRsp = nil
end
L2_1.dtor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.LimitType1
  A0_2.LimitType1 = L2_2
  L2_2 = A1_2.LimitValue1List
  A0_2.LimitValue1List = L2_2
  L2_2 = A1_2.LimitType2
  A0_2.LimitType2 = L2_2
  L2_2 = A1_2.LimitValue2List
  A0_2.LimitValue2List = L2_2
end
L2_1._process_limits = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.IsOpen
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.ScheduleDataID
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ScheduleModule
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L3_2 = A0_2.ScheduleDataID
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_limit_satisified
  return L1_2(L2_2)
end
L2_1.is_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.LimitType1
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_limit
    L3_2 = A0_2.LimitType1
    L4_2 = A0_2.LimitValue1List
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L2_2 = false
      return L2_2
    end
  end
  L1_2 = A0_2.LimitType2
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_limit
    L3_2 = A0_2.LimitType2
    L4_2 = A0_2.LimitValue2List
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L2_2 = false
      return L2_2
    end
  end
  L1_2 = true
  return L1_2
end
L2_1.is_limit_satisified = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1.Level
  if A1_2 == L3_2 then
    L3_2 = A2_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConditionCheckerUtil
    L4_2 = L4_2.CheckPlayerLevel
    L5_2 = id
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
  L3_2 = L1_1.WorldLevel
  if A1_2 == L3_2 then
    L3_2 = A2_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConditionCheckerUtil
    L4_2 = L4_2.CheckWorldLevel
    L5_2 = id
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
  L3_2 = L1_1.MainMission
  if A1_2 == L3_2 then
    L3_2 = A2_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConditionCheckerUtil
    L4_2 = L4_2.CheckFinishMainMission
    L5_2 = L3_2
    return L4_2(L5_2)
  end
  L3_2 = L1_1.EventMission
  if A1_2 == L3_2 then
    L3_2 = A2_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConditionCheckerUtil
    L4_2 = L4_2.CheckFinishEventMission
    L5_2 = L3_2
    return L4_2(L5_2)
  end
  L3_2 = true
  return L3_2
end
L2_1._check_limit = L3_1
return L2_1
