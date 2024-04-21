local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_TimeManager
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Cocoon_Weekly_Limit_Times"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = {}
L3_1.enough = "#FFFFFF"
L3_1.empty = "#EB4D4D"
L3_1.rogue = "#121212"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookGuideFarmBannerPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.PlayerData
  L1_2 = L1_2.WeekCocoonCount
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_limit_current
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L2_1
  L4_2 = L4_2 - L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_limit_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L2_2 = L2_2 - L1_2
  L2_2 = L2_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_limit_current
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  if L2_2 then
    L5_2 = L3_1.empty
    if L5_2 then
      goto lbl_34
    end
  end
  L5_2 = L3_1.enough
  ::lbl_34::
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SetTargetTime
  L6_2 = A0_2
  L5_2 = A0_2._get_weekly_date
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._setup_week_cocoon
  L7_2 = A0_2
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.DayOfWeek
  L1_2 = L1_2.Monday
  L2_2 = L0_1.NowDateTime
  L3_2 = #L1_2
  L4_2 = L2_2.Date
  L4_2 = L4_2.DayOfWeek
  L4_2 = #L4_2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 + 7
  L3_2 = L3_2 % 7
  L4_2 = L2_2.Date
  L5_2 = L4_2
  L4_2 = L4_2.AddDays
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.AddHours
  L6_2 = 4
  L4_2 = L4_2(L5_2, L6_2)
  if L2_2 >= L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.AddDays
    L7_2 = 7
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  return L4_2
end
L4_1._get_weekly_date = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L4_1.get_first_selected_object = L5_1
return L4_1
