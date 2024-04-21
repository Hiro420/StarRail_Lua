local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassQuestTypeTabBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_TimeManager
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.BPQuestType
L4_1 = L4_1.Weekly
L3_1[L4_1] = "UIText_Battlepass_QuestTab02"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.BPQuestType
L4_1 = L4_1.Activity
L3_1[L4_1] = "UIText_Battlepass_QuestTab03"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "BattlePassQuestTypeTab"
L6_1 = G
L6_1 = L6_1.TabItem
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BPQuestType
  L1_2 = L1_2.None
  A0_2._type = L1_2
  A0_2._end_date = nil
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_check_new_quests
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  A0_2._type = A1_2
end
L4_1.set_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_countdown
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BattlePassQuestType"
  L4_2 = A0_2._type
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_end_date
  L3_2 = A0_2._type
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._end_date = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_countdown
  L1_2(L2_2)
end
L4_1.refresh_countdown = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._type
  L3_2 = L3_1[L3_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._type
  L3_2 = L3_1[L3_2]
  L1_2(L2_2, L3_2)
end
L4_1._setup_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.Schedule
  L2_2 = A0_2._end_date
  L2_2 = L2_2 ~= nil and L1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_time1
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_time2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L1_2.EndTimeDate
    L4_2 = A0_2._end_date
    if L3_2 < L4_2 then
      A0_2._end_date = L3_2
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.remain_timer1
    L5_2 = L4_2
    L4_2 = L4_2.SetTargetTime
    L6_2 = A0_2._end_date
    L7_2 = A0_2._on_time_end
    L8_2 = A0_2
    L9_2 = 2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.remain_timer2
    L5_2 = L4_2
    L4_2 = L4_2.SetTargetTime
    L6_2 = A0_2._end_date
    L7_2 = A0_2._on_time_end
    L8_2 = A0_2
    L9_2 = 2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L4_1._setup_countdown = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_countdown
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._end_callback
  L3_2 = A0_2._end_handler
  L1_2(L2_2, L3_2)
end
L4_1._on_time_end = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._end_callback = A1_2
  A0_2._end_handler = A2_2
end
L4_1.register_time_end_callback = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._type
  return L1_2
end
L4_1.get_type = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BPQuestType
  L2_2 = L2_2.Weekly
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.DayOfWeek
    L2_2 = L2_2.Monday
    L3_2 = L2_1.NowDateTime
    L4_2 = #L2_2
    L5_2 = L3_2.Date
    L5_2 = L5_2.DayOfWeek
    L5_2 = #L5_2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 + 7
    L4_2 = L4_2 % 7
    L5_2 = L3_2.Date
    L6_2 = L5_2
    L5_2 = L5_2.AddDays
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.AddHours
    L7_2 = 4
    L5_2 = L5_2(L6_2, L7_2)
    if L3_2 >= L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.AddDays
      L8_2 = 7
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    end
    return L5_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.BPQuestType
    L2_2 = L2_2.Activity
    if A1_2 == L2_2 then
      L2_2 = L0_1.Schedule
      if L2_2 == nil then
        L3_2 = nil
        return L3_2
      end
      L3_2 = L2_2.EndTimeDate
      return L3_2
    end
  end
  L2_2 = nil
  return L2_2
end
L4_1._get_end_date = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
end
L4_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._is_seen = true
end
L4_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_check_new_quests
  L1_2(L2_2)
end
L4_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_check_new_quests
  L1_2(L2_2)
end
L4_1.try_check_new_quests = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._is_seen
  if not L1_2 then
    return
  end
  L1_2 = A0_2._type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BPQuestType
  L2_2 = L2_2.Activity
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.SeenBPQuestIDs
    if L2_2 ~= nil then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBattlePassQuestDatas
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BPQuestType
  L4_2 = L4_2.Activity
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.IsValid
    if L8_2 then
      L8_2 = L7_2.QuestID
      L9_2 = L1_2.SeenBPQuestIDs
      L10_2 = L9_2
      L9_2 = L9_2.Contains
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = L1_2.SeenBPQuestIDs
        L10_2 = L9_2
        L9_2 = L9_2.Add
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.BattlePassRefreshRedDot
  L3_2(L4_2)
end
L4_1._try_check_new_quests = L5_1
return L4_1
