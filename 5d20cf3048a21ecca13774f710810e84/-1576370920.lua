local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PerformanceRecallModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PerformanceRecallFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2._has_inited = false
  L1_2 = {}
  A0_2._recall_id_is_new = L1_2
  L1_2 = {}
  A0_2._recall_type_is_new = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "PerformanceRecallItem"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshPerformanceRecall
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshPerformanceRecall
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._init_local_unseen
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.UnseenRecallIDs
    if L2_2 ~= nil then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = pairs
  L3_2 = A0_2._recall_id_is_new
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "PerformanceRecallItem"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = pairs
  L3_2 = A0_2._recall_type_is_new
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "PerformanceRecallCategory"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._has_inited
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.UnseenRecallIDs
    if L2_2 ~= nil then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = pairs
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PerformanceRecallExcelTable
  L3_2 = L3_2.dataDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.HasUnlocked
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = L0_1
      L8_2 = L7_2
      L7_2 = L7_2.UpdateSeen
      L9_2 = L6_2.ID
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_data
  L2_2(L3_2)
  A0_2._has_inited = true
end
L1_1._init_local_unseen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._recall_id_is_new = L1_2
  L1_2 = {}
  A0_2._recall_type_is_new = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.UnseenRecallIDs
    if L2_2 ~= nil then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = pairs
  L3_2 = L1_2.UnseenRecallIDs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.PerformanceRecallExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = L0_1
      L9_2 = L8_2
      L8_2 = L8_2.HasUnlocked
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = A0_2._recall_id_is_new
      L9_2[L6_2] = L8_2
      L9_2 = A0_2._recall_type_is_new
      L10_2 = L7_2.CategoryID
      L11_2 = A0_2._recall_type_is_new
      L12_2 = L7_2.CategoryID
      L11_2 = L11_2[L12_2]
      if not L11_2 then
        L11_2 = L8_2
      end
      L9_2[L10_2] = L11_2
    end
  end
end
L1_1._update_data = L2_1
return L1_1
