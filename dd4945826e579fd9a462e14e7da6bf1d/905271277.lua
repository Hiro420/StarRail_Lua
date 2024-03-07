local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MuseumUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1._fund_item_data
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.ItemFactory
    L0_2 = L0_2.CreateItemData
    L1_2 = L1_1.MuseumCurrencyConfigID
    L0_2 = L0_2(L1_2)
    L0_1._fund_item_data = L0_2
  end
  L0_2 = L0_1._fund_item_data
  L1_2 = L1_1.MuseumData
  L1_2 = L1_2.CurFunds
  L0_2.Count = L1_2
  L0_2 = L0_1._fund_item_data
  return L0_2
end
L0_1.get_fund_item_data = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = MuseumStaffSortType
  L4_2 = L4_2.PropertyTotal
  if A2_2 == L4_2 then
    L4_2 = L0_1.get_staff_total_stat
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L0_1.get_staff_total_stat
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L4_2 ~= L5_2 then
      L4_2 = L0_1._compare_staff_by_property_total
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A3_2
      return L4_2(L5_2, L6_2, L7_2)
  end
  else
    L4_2 = MuseumStaffSortType
    L4_2 = L4_2.PropertyA
    if A2_2 == L4_2 then
      L4_2 = A0_2.StaffRow
      L4_2 = L4_2.StatsA
      L5_2 = A1_2.StaffRow
      L5_2 = L5_2.StatsA
      if L4_2 ~= L5_2 then
        L4_2 = L0_1._compare_staff_by_property_a
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = A3_2
        return L4_2(L5_2, L6_2, L7_2)
    end
    else
      L4_2 = MuseumStaffSortType
      L4_2 = L4_2.PropertyB
      if A2_2 == L4_2 then
        L4_2 = A0_2.StaffRow
        L4_2 = L4_2.StatsB
        L5_2 = A1_2.StaffRow
        L5_2 = L5_2.StatsB
        if L4_2 ~= L5_2 then
          L4_2 = L0_1._compare_staff_by_property_b
          L5_2 = A0_2
          L6_2 = A1_2
          L7_2 = A3_2
          return L4_2(L5_2, L6_2, L7_2)
      end
      else
        L4_2 = MuseumStaffSortType
        L4_2 = L4_2.PropertyC
        if A2_2 == L4_2 then
          L4_2 = A0_2.StaffRow
          L4_2 = L4_2.StatsC
          L5_2 = A1_2.StaffRow
          L5_2 = L5_2.StatsC
          if L4_2 ~= L5_2 then
            L4_2 = L0_1._compare_staff_by_property_c
            L5_2 = A0_2
            L6_2 = A1_2
            L7_2 = A3_2
            return L4_2(L5_2, L6_2, L7_2)
          end
        end
      end
    end
  end
  L4_2 = L0_1._compare_sort_staff_secondary
  L5_2 = A0_2
  L6_2 = A1_2
  return L4_2(L5_2, L6_2)
end
L0_1.compare_sort_staff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.StaffRow
  L2_2 = L1_2.StatsA
  L3_2 = L1_2.StatsB
  L2_2 = L2_2 + L3_2
  L3_2 = L1_2.StatsC
  L2_2 = L2_2 + L3_2
  return L2_2
end
L0_1.get_staff_total_stat = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1.get_staff_total_stat
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.get_staff_total_stat
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if A2_2 then
    L5_2 = L3_2 > L4_2
    return L5_2
  else
    L5_2 = L3_2 < L4_2
    return L5_2
  end
end
L0_1._compare_staff_by_property_total = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsA
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsA
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsA
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsA
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L0_1._compare_staff_by_property_a = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsB
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsB
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsB
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsB
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L0_1._compare_staff_by_property_b = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsC
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsC
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.StaffRow
    L3_2 = L3_2.StatsC
    L4_2 = A1_2.StaffRow
    L4_2 = L4_2.StatsC
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L0_1._compare_staff_by_property_c = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.ID
  L3_2 = A1_2.ID
  L2_2 = L2_2 > L3_2
  return L2_2
end
L0_1._compare_sort_staff_secondary = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StuffStats
  L1_2 = L1_2.StatsA
  if A0_2 == L1_2 then
    L1_2 = MuseumStaffSortType
    L1_2 = L1_2.PropertyA
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.StuffStats
    L1_2 = L1_2.StatsB
    if A0_2 == L1_2 then
      L1_2 = MuseumStaffSortType
      L1_2 = L1_2.PropertyB
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.StuffStats
      L1_2 = L1_2.StatsC
      if A0_2 == L1_2 then
        L1_2 = MuseumStaffSortType
        L1_2 = L1_2.PropertyC
        return L1_2
      end
    end
  end
  L1_2 = MuseumStaffSortType
  L1_2 = L1_2.PropertyTotal
  return L1_2
end
L0_1.get_sort_type_by_stat_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.RewardMuseumItem
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = 0
  L3_2 = A1_2.RewardMuseumItem
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.RewardMuseumItem
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2.ExhibitStuffs
    L8_2 = L7_2
    L7_2 = L7_2.ContainsKey
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.have_got_all_dispatch_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.UpdateCost
  L2_2 = L1_1.MuseumData
  L2_2 = L2_2.CurFunds
  L1_2 = L1_2 <= L2_2
  return L1_2
end
L0_1.is_upgrade_cost_affordable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 0
  L2_2 = A0_2.RandomEventChoices
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.RandomEventChoices
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsCancel
    if not L5_2 then
      L5_2 = A0_2.RandomEventChoices
      L5_2 = L5_2[L4_2]
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_random_event_accept_choice = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil or A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Museum.MuseumBuffTipDialog"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.create_buff_tip_dialog = L2_1
L2_1 = {}
L3_1 = 2.8
L4_1 = -4
L5_1 = 6
L6_1 = 4.6
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    L8_2 = L2_2[L8_2]
    if L8_2 == nil then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.UIRandomUtils
      L8_2 = L8_2.RangeInt
      L9_2 = 1
      L10_2 = L2_1
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L7_2.ID
      L10_2 = L2_1[L8_2]
      L2_2[L9_2] = L10_2
    end
  end
  return L2_2
end
L0_1.generate_random_rotation_angles = L3_1
L3_1 = {}
L3_1.normal = "#383434"
L3_1.success = "#F29E38"
L3_1.failed = "#EB4B3D"
L4_1 = {}
L4_1.normal = "#F8F7ED"
L4_1.success = "#F29E38"
L4_1.failed = "#EB4B3D"
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1._light_bg_colors
  if L0_2 == nil then
    L0_2 = {}
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L3_1.normal
    L1_2 = L1_2(L2_2)
    L0_2.normal = L1_2
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L3_1.success
    L1_2 = L1_2(L2_2)
    L0_2.success = L1_2
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L3_1.failed
    L1_2 = L1_2(L2_2)
    L0_2.failed = L1_2
    L0_1._light_bg_colors = L0_2
  end
  L0_2 = L0_1._light_bg_colors
  return L0_2
end
L0_1._get_light_bg_colors = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1._dark_bg_colors
  if L0_2 == nil then
    L0_2 = {}
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L4_1.normal
    L1_2 = L1_2(L2_2)
    L0_2.normal = L1_2
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L4_1.success
    L1_2 = L1_2(L2_2)
    L0_2.success = L1_2
    L1_2 = G
    L1_2 = L1_2.UIColorUtils
    L1_2 = L1_2.GetColor
    L2_2 = L4_1.failed
    L1_2 = L1_2(L2_2)
    L0_2.failed = L1_2
    L0_1._dark_bg_colors = L0_2
  end
  L0_2 = L0_1._dark_bg_colors
  return L0_2
end
L0_1._get_dark_bg_colors = L5_1
function L5_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L0_1._get_light_bg_colors
    return L1_2()
  else
    L1_2 = L0_1._get_dark_bg_colors
    return L1_2()
  end
end
L0_1.get_colors = L5_1
L5_1 = "MuseumActivity_MaxAreaStats"
function L6_1()
  local L0_2, L1_2
  L0_2 = L0_1._stats_max_value
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.ConstValueClientExcelTable
    L0_2 = L0_2.GetData
    L1_2 = L5_1
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.Value
    L0_2 = L0_2.IntValue
    L0_1._stats_max_value = L0_2
  end
  L0_2 = L0_1._stats_max_value
  return L0_2
end
L0_1.get_stats_max_value = L6_1
L6_1 = {}
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ActivityRank
L7_1 = L7_1.C
L6_1[0] = L7_1
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ActivityRank
L7_1 = L7_1.B
L6_1[1] = L7_1
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ActivityRank
L7_1 = L7_1.A
L6_1[2] = L7_1
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ActivityRank
L7_1 = L7_1.S
L6_1[3] = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.GetAreaFullStatNum
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L6_1[L2_2]
  return L3_2
end
L0_1.get_rank_by_area = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.MuseumData
  L0_2 = L0_2.MAX_AREA_COUNT
  return L0_2
end
L0_1.get_max_area_num = L7_1
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.PerfectTurn
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type1"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.SingleTurnExp
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type2"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.TurnsExp
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type3"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.AreaLevel
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type4"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.StuffCnt
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type5"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.ExhibitCnt
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type6"
L0_1.TEXTID_MISSION_DESC = L7_1
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.PerfectTurn
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type1Complete"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.SingleTurnExp
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type2"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.TurnsExp
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type3Complete"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.AreaLevel
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type4"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.StuffCnt
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type5Complete"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.MuseumMissionType
L8_1 = L8_1.ExhibitCnt
L7_1[L8_1] = "UIText_ActivityMuseum_Mission_Type6Complete"
L0_1.TEXTID_MISSION_DESC_COMPLETE = L7_1
L7_1 = "UIText_ActivityMuseum_Mission_OneArea"
L8_1 = "UIText_ActivityMuseum_Mission_AllArea"
L9_1 = "UIText_ActivityMuseum_RankS"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.Type
  L3_2 = A0_2.Params
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MuseumMissionType
  L4_2 = L4_2.PerfectTurn
  if L2_2 == L4_2 then
    L4_2 = L3_2[0]
    if L4_2 == 0 then
      L4_2 = L7_1
      if L4_2 then
        goto lbl_17
      end
    end
    L4_2 = L8_1
    ::lbl_17::
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L9_1
    L6_2 = L6_2(L7_2)
    L7_2 = L3_2[1]
    if A1_2 then
      L8_2 = L3_2[0]
      if L8_2 == 0 then
        L8_2 = A1_2.AnyAreaPerfectProgress
        if L8_2 then
          goto lbl_37
          L7_2 = L8_2 or L7_2
        end
      end
      L7_2 = A1_2.AllAreasPerfectProgress
    end
    ::lbl_37::
    L8_2 = math
    L8_2 = L8_2.min
    L9_2 = L7_2
    L10_2 = L3_2[1]
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
    L8_2 = L5_2
    L9_2 = L6_2
    L10_2 = L3_2[1]
    L11_2 = L7_2
    L12_2 = L3_2[1]
    return L8_2, L9_2, L10_2, L11_2, L12_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MuseumMissionType
    L4_2 = L4_2.SingleTurnExp
    if L2_2 == L4_2 then
      L4_2 = L3_2[0]
      return L4_2
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MuseumMissionType
      L4_2 = L4_2.TurnsExp
      if L2_2 == L4_2 then
        L4_2 = L3_2[0]
        if A1_2 then
          L4_2 = A1_2.RenewPointProgress
        end
        L5_2 = math
        L5_2 = L5_2.min
        L6_2 = L4_2
        L7_2 = L3_2[0]
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
        L5_2 = L3_2[0]
        L6_2 = L4_2
        L7_2 = L3_2[0]
        return L5_2, L6_2, L7_2
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.MuseumMissionType
        L4_2 = L4_2.AreaLevel
        if L2_2 == L4_2 then
          L4_2 = nil
          L5_2 = L3_2[0]
          if L5_2 == 0 then
            L4_2 = L7_1
          else
            L5_2 = L3_2[0]
            if L5_2 == 1 then
              L5_2 = CS
              L5_2 = L5_2.RPG
              L5_2 = L5_2.GameCore
              L5_2 = L5_2.MuseumAreaConfigExcelTable
              L5_2 = L5_2.GetData
              L6_2 = L3_2[2]
              L5_2 = L5_2(L6_2)
              L4_2 = L5_2.MuseumAreaName
            else
              L5_2 = L3_2[0]
              if L5_2 == 2 then
                L4_2 = L8_1
              end
            end
          end
          L5_2 = G
          L5_2 = L5_2.TextmapStatic
          L5_2 = L5_2.GetText
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          L6_2 = L5_2
          L7_2 = L3_2[1]
          return L6_2, L7_2
        else
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.MuseumMissionType
          L4_2 = L4_2.StuffCnt
          if L2_2 == L4_2 then
            L4_2 = L3_2[0]
            if A1_2 then
              L5_2 = L1_1.MuseumData
              L5_2 = L5_2.Staffs
              L4_2 = L5_2.Count
            end
            L5_2 = math
            L5_2 = L5_2.min
            L6_2 = L4_2
            L7_2 = L3_2[0]
            L5_2 = L5_2(L6_2, L7_2)
            L4_2 = L5_2
            L5_2 = L3_2[0]
            L6_2 = L4_2
            L7_2 = L3_2[0]
            return L5_2, L6_2, L7_2
          else
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.GameCore
            L4_2 = L4_2.MuseumMissionType
            L4_2 = L4_2.ExhibitCnt
            if L2_2 == L4_2 then
              L4_2 = L3_2[0]
              if A1_2 then
                L5_2 = L1_1.MuseumData
                L5_2 = L5_2.ExhibitStuffs
                L4_2 = L5_2.Count
              end
              L5_2 = math
              L5_2 = L5_2.min
              L6_2 = L4_2
              L7_2 = L3_2[0]
              L5_2 = L5_2(L6_2, L7_2)
              L4_2 = L5_2
              L5_2 = L3_2[0]
              L6_2 = L4_2
              L7_2 = L3_2[0]
              return L5_2, L6_2, L7_2
            end
          end
        end
      end
    end
  end
end
L0_1.get_target_mission_param = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.MuseumItemRow
    L10_2 = L9_2.StatsA
    L1_2 = L1_2 + L10_2
    L10_2 = L9_2.StatsB
    L2_2 = L2_2 + L10_2
    L10_2 = L9_2.StatsC
    L3_2 = L3_2 + L10_2
  end
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
L0_1.get_items_property_values = L10_1
return L0_1
