local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "HeliobusSNSUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.HeliobusModule
L2_1 = L2_1.HeliobusSNSData
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.Prefs
L3_1 = L3_1.User
L3_1 = L3_1.HeliobusSeenPostPhase
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_Entrance_MappingInfoID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "Activity_Heliobus_Income_ItemID"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.UintValue
L6_1 = L2_1.PlayerUserID
L7_1 = {}
L7_1.ALL = 0
L7_1.Mission = 1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = L2_1.AllHeliobusSNSPostDataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L4_2 = L2_2
    L3_2 = L2_2.CheckIsAvailable
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L0_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  return L0_2
end
L0_1.get_sns_post_table = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = L7_1.ALL
  if A0_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.deep_copy
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = L7_1.Mission
    if A0_2 == L3_2 then
      L3_2 = 1
      L4_2 = #A1_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A1_2[L6_2]
        L8_2 = L0_1.is_mission_type_post
        L9_2 = L7_2.PostType
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L2_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    else
      L3_2 = 1
      L4_2 = #A1_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A1_2[L6_2]
        L8_2 = L7_2.PostType
        if L8_2 == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L2_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
  return L2_2
end
L0_1.filter_post_table = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.CheckIsAvailable
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L0_1.is_mission_type_post
      L8_2 = L6_2.PostType
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = L1_1
        L8_2 = L7_2
        L7_2 = L7_2.TryGetMainMissionData
        L9_2 = L6_2.Row
        L9_2 = L9_2.PostTypeParameter
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 == nil then
          L8_2 = G
          L8_2 = L8_2.SuperDebug
          L8_2 = L8_2.LogErrorFormat
          L9_2 = "HeliobusSNSUtils get_post_can_take_mission_table() : \228\184\141\229\173\152\229\156\168\228\187\187\229\138\161Id\228\184\186("
          L10_2 = L6_2.Row
          L10_2 = L10_2.PostTypeParameter
          L11_2 = ")\231\154\132Post\228\184\187\228\187\187\229\138\161"
          L9_2 = L9_2 .. L10_2 .. L11_2
          L8_2(L9_2)
          return
        end
        L8_2 = L7_2.IsFinish
        if not L8_2 then
          L8_2 = L7_2.IsFinish
          if not L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L1_2
            L10_2 = L6_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
  return L1_2
end
L0_1.get_post_can_take_mission_table = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_CommonValueShow_AutomatiConversion"
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_CommonValueShow_More"
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2
    L5_2 = L3_2
    L4_2 = L4_2 .. L5_2
    return L4_2
  end
  return L2_2
end
L0_1.get_abbreviation_num_text = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2 + 1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.PhaseFans
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_pop_phase_max_fans = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "HeliobusSNSUtils get_pop_phase_exp_percent() : \228\184\141\229\173\152\229\156\168\231\172\172("
    L5_2 = A0_2
    L6_2 = ")\233\152\182\230\174\181\228\186\186\230\176\148\231\173\137\231\186\167"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPhaseExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2 + 1
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L2_2.PhaseFans
    L4_2 = A1_2 - L4_2
    L5_2 = L3_2.PhaseFans
    L6_2 = L2_2.PhaseFans
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2 / L5_2
    if 1 < L4_2 then
      L5_2 = 1
      if L5_2 then
        goto lbl_40
      end
    end
    L5_2 = L4_2
    ::lbl_40::
    return L5_2
  end
  L4_2 = 1
  return L4_2
end
L0_1.get_pop_phase_fan_percent = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = "Heliobus_Comment_Tendency"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1.get_tendency_text_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusTendencyIcon"
  L2_2 = A0_2
  L3_2 = ".png"
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
L0_1.get_tendency_img_path = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1.AllHeliobusSNSPostDataDict
  L1_2 = L0_2
  L0_2 = L0_2.GetEnumerator
  L0_2 = L0_2(L1_2)
  while true do
    L2_2 = L0_2
    L1_2 = L0_2.MoveNext
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      break
    end
    L1_2 = L0_2.Current
    L1_2 = L1_2.Value
    L3_2 = L1_2
    L2_2 = L1_2.CheckIsAvailable
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = L1_2.IsMyPost
      if not L2_2 then
        L2_2 = L1_2.Row
        L2_2 = L2_2.PostTypeParameter
        L3_2 = L2_1.PostMissionInProgress
        L3_2 = L3_2.ID
        if L2_2 == L3_2 then
          return L1_2
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_post_in_mission_progress = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.AllHeliobusSNSPostDataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.ID
    if L3_2 == A0_2 then
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_by_post_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.AllHeliobusSNSPostDataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L4_2 = L2_2
    L3_2 = L2_2.CheckIsAvailable
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L2_2.IsMyPost
      if not L3_2 then
        L3_2 = L2_2.Row
        L3_2 = L3_2.PostTypeParameter
        if L3_2 == A0_2 then
          return L2_2
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_by_mission_id = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = L2_1.AllHeliobusSNSPostDataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L0_1.is_mission_type_post
    L4_2 = L2_2.PostType
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L2_2.PostDay
      L4_2 = L2_1.ActionDay
      if L3_2 == L4_2 then
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L0_2
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  return L0_2
end
L0_1.get_mission_post_table_in_cur_action_day = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = L2_1.AllHeliobusSNSPostDataDict
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Value
    L5_2 = L4_2.IsMyPost
    if not L5_2 then
      L5_2 = 0
      L6_2 = L4_2.Row
      L6_2 = L6_2.PostUnlockSubMissionIDList
      L6_2 = L6_2.Length
      L6_2 = L6_2 - 1
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L1_1
        L10_2 = L9_2
        L9_2 = L9_2.GetSubMissionRow
        L11_2 = L4_2.Row
        L11_2 = L11_2.PostUnlockSubMissionIDList
        L11_2 = L11_2[L8_2]
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L9_2.MainMissionID
        if L10_2 == A0_2 then
          L10_2 = L0_1.check_post_is_alreay_exist
          L11_2 = L2_2
          L12_2 = L4_2
          L10_2 = L10_2(L11_2, L12_2)
          if not L10_2 then
            if A1_2 then
              L10_2 = L0_1.is_mission_type_post
              L11_2 = L4_2.PostType
              L10_2 = L10_2(L11_2)
              if L10_2 then
                L10_2 = table
                L10_2 = L10_2.insert
                L11_2 = L2_2
                L12_2 = L4_2
                L10_2(L11_2, L12_2)
              end
            else
              L10_2 = table
              L10_2 = L10_2.insert
              L11_2 = L2_2
              L12_2 = L4_2
              L10_2(L11_2, L12_2)
            end
          end
        end
      end
    end
  end
  return L2_2
end
L0_1.get_unlock_post_table_by_main_mission_id = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1.get_sns_post_table
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = 1
  L3_2 = #L0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_2[L5_2]
    L7_2 = L6_2.IsMyPost
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = #L1_2
  if 0 < L2_2 then
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L0_1.compare_by_heliobus_sns_sort_type
      L3_3 = HeliobusSNSSortType
      L3_3 = L3_3.Time
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = false
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L3_2 = table
    L3_2 = L3_2.sort
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = L1_2[1]
  return L2_2
end
L0_1.get_last_my_post = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.ID
    L7_2 = A0_2[L5_2]
    L7_2 = L7_2.ID
    if L6_2 == L7_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.check_post_is_alreay_exist = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
end
L0_1.check_post_phase_is_seen = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L1_2 = L0_2
  L0_2 = L0_2.Clear
  L0_2(L1_2)
end
L0_1.clear_post_phase_prefs = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPostType
  L1_2 = L1_2.MissionMain
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1.is_mission_type_post = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.get_map_entry_id_by_map_info_id
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Map.SwitchAreaPage"
  L4_2 = L1_2
  L5_2 = A0_2
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1.open_map_by_map_info_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil or not A0_2 then
    A0_2 = L4_1
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsShowAreaMap
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_2.FloorID
      L10_2 = L8_2.FloorID
      if L9_2 == L10_2 then
        L3_2 = L8_2.ID
        break
      end
    end
  end
  return L3_2
end
L0_1.get_map_entry_id_by_map_info_id = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2 = L1_2 == A0_2
  return L1_2
end
L0_1.check_is_auth = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = A0_2.PostFansReward
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = L1_2[1]
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_bonus_fan = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.PostIncomeReward
  if L1_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTable
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.ItemID
      L8_2 = L5_1
      if L7_2 == L8_2 then
        L7_2 = L2_2[L6_2]
        L7_2 = L7_2.Count
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_bonus_income = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.ReplyIncomeReward
  if L1_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTable
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.ItemID
      L8_2 = L5_1
      if L7_2 == L8_2 then
        L7_2 = L2_2[L6_2]
        L7_2 = L7_2.Count
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_comment_reply_income = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L1_2 = A0_2.PostTypeParameter
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_8::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusSkillExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.UnlockMissionID
    if L3_2 ~= 0 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.GetSubMissionRow
      L5_2 = L2_2.UnlockMissionID
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2.MainMissionID
      L5_2 = A0_2.PostTypeParameter
      if L4_2 == L5_2 then
        return L2_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_bonus_skill = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    A0_2 = L6_1
  end
  L1_2 = 0
  L2_2 = L2_1.AllHeliobusSNSPostDataDict
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.UserID
    if L4_2 == A0_2 then
      L4_2 = L3_2.Likes
      L1_2 = L1_2 + L4_2
    end
  end
  return L1_2
end
L0_1.get_all_likes_by_user_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil then
    A0_2 = L6_1
  end
  L1_2 = 0
  L2_2 = L2_1.AllHeliobusSNSPostDataDict
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.UserID
    if L4_2 == A0_2 then
      L5_2 = L3_2
      L4_2 = L3_2.CheckIsAvailable
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  return L1_2
end
L0_1.get_all_post_count_by_user_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    A0_2 = L6_1
  end
  L1_2 = {}
  L2_2 = L2_1.AllHeliobusSNSPostDataDict
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.UserID
    if L4_2 == A0_2 then
      L5_2 = L3_2
      L4_2 = L3_2.CheckIsAvailable
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = table
        L4_2 = L4_2.insert
        L5_2 = L1_2
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
    end
  end
  return L1_2
end
L0_1.get_all_post_by_user_id = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A2_2
    if L2_3 ~= nil then
      L2_3 = L0_1.is_mission_type_post
      L3_3 = A2_2.PostType
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_10
      end
    end
    L2_3 = false
    ::lbl_10::
    L4_3 = A0_3
    L3_3 = A0_3.CheckIsCanReply
    L3_3 = L3_3(L4_3)
    L5_3 = A1_3
    L4_3 = A1_3.CheckIsCanReply
    L4_3 = L4_3(L5_3)
    if L3_3 ~= L4_3 then
      return L3_3
    else
      if L2_3 then
        L5_3 = A0_3.IsMyComment
        L6_3 = A1_3.IsMyComment
        if L5_3 ~= L6_3 then
          L5_3 = A0_3.IsMyComment
          return L5_3
      end
      else
        L5_3 = A0_3.CommentDay
        L6_3 = A1_3.CommentDay
        if L5_3 ~= L6_3 then
          L5_3 = L0_1._compare_by_value
          L6_3 = A1_2
          L7_3 = A0_3.CommentDay
          L8_3 = A1_3.CommentDay
          return L5_3(L6_3, L7_3, L8_3)
        else
          L5_3 = L0_1._check_other_sort_post_condition
          L6_3 = A1_2
          L7_3 = A0_3
          L8_3 = A1_3
          return L5_3(L6_3, L7_3, L8_3)
        end
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.sort_comment_table = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A3_2
    if L2_3 ~= nil then
      L2_3 = L0_1.get_post_index
      L3_3 = A0_3
      L4_3 = A3_2
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L0_1.get_post_index
      L4_3 = A1_3
      L5_3 = A3_2
      L3_3 = L3_3(L4_3, L5_3)
      if L2_3 ~= nil and L3_3 ~= nil then
        L4_3 = L2_3 < L3_3
        return L4_3
      elseif L2_3 ~= nil then
        L4_3 = true
        return L4_3
      elseif L3_3 ~= nil then
        L4_3 = false
        return L4_3
      end
    end
    L3_3 = A0_3
    L2_3 = A0_3.CheckIsCanReplyComment
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.CheckIsCanReplyComment
    L3_3 = L3_3(L4_3)
    L4_3 = A0_3.PostType
    L5_3 = CS
    L5_3 = L5_3.RPG
    L5_3 = L5_3.GameCore
    L5_3 = L5_3.HeliobusPostType
    L5_3 = L5_3.Tattle
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.IsMyPost
      if not L4_3 then
        goto lbl_69
      end
    end
    L4_3 = A1_3.PostType
    L5_3 = CS
    L5_3 = L5_3.RPG
    L5_3 = L5_3.GameCore
    L5_3 = L5_3.HeliobusPostType
    L5_3 = L5_3.Tattle
    if L4_3 ~= L5_3 then
      L4_3 = A1_3.IsMyPost
      if not L4_3 then
        goto lbl_69
      end
    end
    if L2_3 ~= L3_3 then
      return L2_3
    else
      L4_3 = A0_3.IsRead
      L5_3 = A1_3.IsRead
      if L4_3 ~= L5_3 then
        L4_3 = A0_3.IsRead
        L4_3 = not L4_3
        do return L4_3 end
        goto lbl_181
        ::lbl_69::
        L4_3 = A0_3.PostType
        L5_3 = CS
        L5_3 = L5_3.RPG
        L5_3 = L5_3.GameCore
        L5_3 = L5_3.HeliobusPostType
        L5_3 = L5_3.Tattle
        if L4_3 ~= L5_3 then
          L4_3 = A0_3.IsMyPost
          if not L4_3 then
            L4_3 = A1_3.PostType
            L5_3 = CS
            L5_3 = L5_3.RPG
            L5_3 = L5_3.GameCore
            L5_3 = L5_3.HeliobusPostType
            L5_3 = L5_3.Tattle
            if L4_3 ~= L5_3 then
              L4_3 = A1_3.IsMyPost
              if not L4_3 then
                L4_3 = L1_1
                L5_3 = L4_3
                L4_3 = L4_3.TryGetMainMissionData
                L6_3 = A0_3.Row
                L6_3 = L6_3.PostTypeParameter
                L4_3 = L4_3(L5_3, L6_3)
                L5_3 = L1_1
                L6_3 = L5_3
                L5_3 = L5_3.TryGetMainMissionData
                L7_3 = A1_3.Row
                L7_3 = L7_3.PostTypeParameter
                L5_3 = L5_3(L6_3, L7_3)
                if L4_3 ~= nil and L5_3 ~= nil then
                  L6_3 = L4_3.IsStart
                  L6_3 = L4_3.IsFinish
                  L6_3 = not L6_3 and L6_3
                  L7_3 = L5_3.IsStart
                  L7_3 = L5_3.IsFinish
                  L7_3 = not L7_3 and L7_3
                  L8_3 = L4_3.IsStart
                  L9_3 = L5_3.IsStart
                  if L8_3 ~= L9_3 then
                    L8_3 = L4_3.IsStart
                    return L8_3
                  elseif L6_3 ~= L7_3 then
                    return L6_3
                  elseif L2_3 ~= L3_3 then
                    return L2_3
                  else
                    L8_3 = L4_3.IsFinish
                    L9_3 = L5_3.IsFinish
                    if L8_3 ~= L9_3 then
                      L8_3 = L4_3.IsFinish
                      L8_3 = not L8_3
                      return L8_3
                    end
                  end
                end
            end
          end
        end
        else
          L4_3 = nil
          L5_3 = nil
          L6_3 = A0_3.PostType
          L7_3 = CS
          L7_3 = L7_3.RPG
          L7_3 = L7_3.GameCore
          L7_3 = L7_3.HeliobusPostType
          L7_3 = L7_3.Tattle
          if L6_3 ~= L7_3 then
            L6_3 = A0_3.IsMyPost
            if not L6_3 then
              goto lbl_165
            end
          end
          L6_3 = L0_1._get_tattle_type_post_weight
          L7_3 = A0_3
          L6_3 = L6_3(L7_3)
          L4_3 = L6_3
          L6_3 = L0_1._get_mission_type_post_weight
          L7_3 = A1_3
          L6_3 = L6_3(L7_3)
          L5_3 = L6_3
          goto lbl_173
          ::lbl_165::
          L6_3 = L0_1._get_mission_type_post_weight
          L7_3 = A0_3
          L6_3 = L6_3(L7_3)
          L4_3 = L6_3
          L6_3 = L0_1._get_tattle_type_post_weight
          L7_3 = A1_3
          L6_3 = L6_3(L7_3)
          L5_3 = L6_3
          ::lbl_173::
          if L4_3 ~= L5_3 then
            L6_3 = L0_1._compare_by_value
            L7_3 = false
            L8_3 = L4_3
            L9_3 = L5_3
            return L6_3(L7_3, L8_3, L9_3)
          end
        end
      end
    end
    ::lbl_181::
    L4_3 = L0_1.compare_by_heliobus_sns_sort_type
    L5_3 = A1_2
    L6_3 = A0_3
    L7_3 = A1_3
    L8_3 = A2_2
    return L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.sort_post_table_by_sort_type = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1.is_same_post
    L7_2 = A0_2
    L8_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_post_index = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.ID
  L3_2 = A1_2.ID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1.is_same_post = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = HeliobusSNSSortType
  L4_2 = L4_2.Type
  if A0_2 == L4_2 then
    L4_2 = A1_2.PostType
    L5_2 = A2_2.PostType
    if L4_2 ~= L5_2 then
      L4_2 = L0_1._compare_post_type
      L5_2 = A1_2
      L6_2 = A2_2
      L7_2 = A3_2
      return L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = A1_2.PostDay
      L5_2 = A2_2.PostDay
      if L4_2 ~= L5_2 then
        L4_2 = L0_1._compare_by_value
        L5_2 = A3_2
        L6_2 = A1_2.PostDay
        L7_2 = A2_2.PostDay
        return L4_2(L5_2, L6_2, L7_2)
      end
    end
  else
    L4_2 = HeliobusSNSSortType
    L4_2 = L4_2.Time
    if A0_2 == L4_2 then
      L4_2 = A1_2.PostDay
      L5_2 = A2_2.PostDay
      if L4_2 ~= L5_2 then
        L4_2 = L0_1._compare_by_value
        L5_2 = A3_2
        L6_2 = A1_2.PostDay
        L7_2 = A2_2.PostDay
        return L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = A1_2.PostType
        L5_2 = A2_2.PostType
        if L4_2 ~= L5_2 then
          L4_2 = L0_1._compare_post_type
          L5_2 = A1_2
          L6_2 = A2_2
          L7_2 = A3_2
          return L4_2(L5_2, L6_2, L7_2)
        end
      end
    end
  end
  L4_2 = L0_1._check_other_sort_post_condition
  L5_2 = A3_2
  L6_2 = A1_2
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1.compare_by_heliobus_sns_sort_type = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.IsMyPost
  if L3_2 then
    if A2_2 then
      L3_2 = A1_2.PostType
      L3_2 = not L3_2
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.HeliobusPostType
      L4_2 = L4_2.Tattle
      L3_2 = L3_2 == L4_2
      return L3_2
    else
      L3_2 = A1_2.PostType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.HeliobusPostType
      L4_2 = L4_2.Tattle
      L3_2 = L3_2 == L4_2
      return L3_2
    end
  else
    L3_2 = A1_2.IsMyPost
    if L3_2 then
      if A2_2 then
        L3_2 = A0_2.PostType
        L3_2 = not L3_2
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.HeliobusPostType
        L4_2 = L4_2.Tattle
        L3_2 = L3_2 ~= L4_2
        return L3_2
      else
        L3_2 = A0_2.PostType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.HeliobusPostType
        L4_2 = L4_2.Tattle
        L3_2 = L3_2 ~= L4_2
        return L3_2
      end
    else
      L3_2 = L0_1._compare_by_value
      L4_2 = not A2_2
      L5_2 = A0_2.PostType
      L5_2 = #L5_2
      L6_2 = A1_2.PostType
      L6_2 = #L6_2
      return L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._compare_post_type = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.ID
  L4_2 = A2_2.ID
  if L3_2 ~= L4_2 then
    L3_2 = L0_1._compare_by_value
    L4_2 = A0_2
    L5_2 = A1_2.ID
    L6_2 = A2_2.ID
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._check_other_sort_post_condition = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2.Row
  L3_2 = L3_2.PostTypeParameter
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  L3_2 = L1_2.IsStart
  if L3_2 then
    L2_2 = 5
  else
    L3_2 = L1_2.IsFinish
    if not L3_2 then
      L3_2 = L1_2.IsFinish
      if not L3_2 then
        L2_2 = 4
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2.CheckIsCanReplyComment
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L2_2 = 3
      else
        L2_2 = 1
      end
    end
  end
  return L2_2
end
L0_1._get_mission_type_post_weight = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.CheckIsCanReplyComment
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 3
    return L1_2
  end
  L1_2 = A0_2.IsRead
  if L1_2 then
    L1_2 = 1
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = 2
  ::lbl_14::
  return L1_2
end
L0_1._get_tattle_type_post_weight = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 then
    L3_2 = A1_2 < A2_2
    return L3_2
  else
    L3_2 = A2_2 < A1_2
    return L3_2
  end
end
L0_1._compare_by_value = L8_1
return L0_1
