local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RobinObserveAcvmtSubscriber"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 10
L2_1 = "Achievement_220_Robin_Performance"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AchievementModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  A0_2._achievement_id = L1_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetData
  L3_2 = A0_2._achievement_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._achievement_data = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AchievementUtils
  L2_2 = L2_2.DoesEntityContainsModifier
  L3_2 = A1_2
  L4_2 = "MAvatar_Robin_00_Skill03Area"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_add_tick
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_remove_tick
    L3_2(L4_2)
    A0_2._cur_time = 0
  end
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._achievement_data
  if L1_2 ~= nil then
    L1_2 = A0_2._achievement_data
    L1_2 = L1_2.QuestStatus
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.KBBBFCIHJPC
    if L1_2 == L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._tick_added
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  A0_2._tick_added = true
end
L0_1._try_add_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tick_added
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  A0_2._tick_added = false
end
L0_1._try_remove_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_time
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + A1_2
  A0_2._cur_time = L2_2
  L2_2 = A0_2._cur_time
  L3_2 = L1_1
  if L2_2 < L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_remove_tick
  L2_2(L3_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.HideHint
  L4_2 = A0_2._achievement_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.SendFinishClientAchievementCsReq
  L4_2 = A0_2._achievement_data
  L4_2 = L4_2.Quest
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FakeBattleAchievementGet
  L4_2 = A0_2._achievement_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._on_tick = L4_1
return L0_1
