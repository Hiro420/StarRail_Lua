local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RogueUtils"
L0_1 = L0_1(L1_1)
L1_1 = 50000
L2_1 = 50001
L3_1 = 50002
L4_1 = 50003
L5_1 = 50005
L6_1 = 50006
L7_1 = 50007
L8_1 = 50008
L9_1 = 50009
L10_1 = 50011
L11_1 = "RogueDLC_SwitchButton_UnlockID"
L12_1 = 215
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.Rogue.Menu.RogueMenuPage"
  L2_2 = 1
  L0_2(L1_2, L2_2)
end
L0_1.show_rogue_map_page = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.Rogue.Menu.RogueMenuPage"
  L2_2 = 2
  L0_2(L1_2, L2_2)
end
L0_1.show_rogue_buff_list_page = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.Rogue.Menu.RogueMenuPage"
  L2_2 = 3
  L0_2(L1_2, L2_2)
end
L0_1.show_rogue_aeon_page = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.Rogue.Menu.RogueMenuPage"
  L2_2 = 4
  L0_2(L1_2, L2_2)
end
L0_1.show_rogue_miracle_list_page = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.Rogue.Menu.RogueMenuPage"
  L2_2 = 5
  L0_2(L1_2, L2_2)
end
L0_1.show_rogue_dlc_dice_list_page = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.RogueModule
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L3_2 = L0_2
  L2_2 = L0_2.GetAchivedBuffList
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1.get_achived_rogue_buff_table = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if L1_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = A0_3
    L2_3 = A0_3.GetRogueAeonID
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.GetRogueAeonID
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      if L2_3 == 0 then
        L4_3 = false
        return L4_3
      elseif L3_3 == 0 then
        L4_3 = true
        return L4_3
      else
        L4_3 = L2_3 < L3_3
        return L4_3
      end
    end
    L5_3 = A0_3
    L4_3 = A0_3.GetRogueBuffType
    L4_3 = L4_3(L5_3)
    L6_3 = A1_3
    L5_3 = A1_3.GetRogueBuffType
    L5_3 = L5_3(L6_3)
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 < L5_3
      return L6_3
    end
    L7_3 = A0_3
    L6_3 = A0_3.GetRogueBuffRarity
    L6_3 = L6_3(L7_3)
    L8_3 = A1_3
    L7_3 = A1_3.GetRogueBuffRarity
    L7_3 = L7_3(L8_3)
    if L6_3 ~= L7_3 then
      L8_3 = L6_3 > L7_3
      return L8_3
    end
    L9_3 = A0_3
    L8_3 = A0_3.IsLevelMax
    L8_3 = L8_3(L9_3)
    L10_3 = A1_3
    L9_3 = A1_3.IsLevelMax
    L9_3 = L9_3(L10_3)
    if L8_3 ~= L9_3 then
      return L8_3
    end
    L10_3 = A0_3.BuffID
    L11_3 = A1_3.BuffID
    L10_3 = L10_3 < L11_3
    return L10_3
  end
  L1_2(L2_2, L3_2)
end
L0_1.sort_rogue_buff_table = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueRogueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Rogue_Shop_Buff_LineItemRarityColor"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ConstValue
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.string_split
  L3_2 = L1_2
  L4_2 = ","
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2[A0_2]
  return L3_2
end
L0_1.get_rogue_buff_rarity_color = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2.BuffID
  L3_2 = A0_2.Level
  L4_2 = 0
  if A1_2 ~= nil then
    L5_2 = 0
    L6_2 = A1_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A1_2[L8_2]
      L10_2 = L9_2.BuffID
      if L10_2 == L2_2 then
        L10_2 = L9_2.Level
        L4_2 = L4_2 + L10_2
      end
    end
  end
  L5_2 = L4_2 + L3_2
  L6_2 = G
  L6_2 = L6_2.BuffUtils
  L6_2 = L6_2.GetMazeBuffData
  L7_2 = L2_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.GetMazeBuffRow
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  return L6_2
end
L0_1.get_rogue_add_level_maze_buff_row = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetActive
    L11_2 = A3_2 == 1 and L7_2 == A2_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetActive
    L11_2 = 1 < A3_2 and L7_2 == A2_2
    L9_2(L10_2, L11_2)
  end
end
L0_1.setup_rogue_buff_bg = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._add_mission_lock
  if L1_2 ~= true then
    A0_2._add_mission_lock = true
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.AddMissionPerformanceLock
    L1_2(L2_2)
  end
end
L0_1.add_mission_performance_lock = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._add_mission_lock
  if L1_2 == true then
    A0_2._add_mission_lock = false
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.ReleaseMissionPerformanceLock
    L1_2(L2_2)
  end
end
L0_1.remove_mission_performance_lock = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L3_2 = L1_2
  L2_2 = L1_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ProgressInfo
  L3_2 = L3_2.ProgressAreaDic
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.ContainsKey
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L3_2[A0_2]
      L4_2 = L4_2.Count
      if 1 < L4_2 then
        L4_2 = true
        return L4_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
L0_1.is_rogue_area_show_difficulty = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L1_1
  return L0_2(L1_2)
end
L0_1.is_rogue_immersion_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L4_1
  return L0_2(L1_2)
end
L0_1.is_rogue_map_res_bar_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L2_1
  return L0_2(L1_2)
end
L0_1.is_rogue_score_reward_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L5_1
  return L0_2(L1_2)
end
L0_1.is_rogue_talent_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L3_1
  return L0_2(L1_2)
end
L0_1.is_aeon_exit_unlock = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.RogueModule
  L1_2 = L0_2
  L0_2 = L0_2.GetRogueData
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueAreaConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2.ProgressInfo
  L2_2 = L2_2.CurAreaID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.AreaProgress
    if L2_2 == 0 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.SystemOpenModule
      L2_2 = L2_2.IsOpen
      L3_2 = L7_1
      L2_2 = L2_2(L3_2)
      L2_2 = not L2_2
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_rogue_newbie = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L6_1
  return L0_2(L1_2)
end
L0_1.is_rogue_handbook_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L8_1
  return L0_2(L1_2)
end
L0_1.is_rogue_handbook_buff_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L9_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.GlobalVars
    L0_2 = L0_2.s_ModuleManager
    L0_2 = L0_2.RogueAdventureModule
    L0_2 = L0_2.IsMiracleUnlocked
  end
  return L0_2
end
L0_1.is_rogue_handbook_miacle_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.RogueHandbookModule
  L0_2 = L0_2.UnlockEventNum
  L0_2 = 0 < L0_2
  return L0_2
end
L0_1.is_rogue_handbook_event_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L10_1
  return L0_2(L1_2)
end
L0_1.is_rogue_reward_key_unlock = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.GotoManager
  L0_2 = L0_2.Goto
  L1_2 = L12_1
  L0_2(L1_2)
end
L0_1.goto_rogue_entrance = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L3_2 = L1_2
  L2_2 = L1_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ProgressInfo
  L3_2 = L3_2.AllAreaDataList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.IsActivity
    if not L9_2 then
      L9_2 = L8_2.IsDoing
      if L9_2 then
        return L8_2
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_resident_rogue_doing_area_data = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = L11_1
  L0_2 = L0_2(L1_2)
  if L0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L0_2.Value
  L2_2 = L2_2.UintValue
  return L1_2(L2_2)
end
L0_1.is_rogue_dlc_entrance_unlock = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAeonExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    if L4_2 ~= nil then
      L5_2 = L4_2.AeonID
      if L5_2 ~= A0_2 then
        L6_2 = L0_1.create_one_ban_aeon_data
        L7_2 = L5_2
        L8_2 = L0_1._is_id_in_list
        L9_2 = L5_2
        L10_2 = A1_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = false
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L2_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.IsSelected
    L3_3 = A1_3.IsSelected
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsSelected
      return L2_3
    end
    L2_3 = A0_3.IsCrossAeon
    L3_3 = A1_3.IsCrossAeon
    if L2_3 == L3_3 then
      L2_3 = A0_3.Sort
      L3_3 = A1_3.Sort
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = A1_3.IsCrossAeon
      return L2_3
    end
  end
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.create_all_selectable_ban_aeon_data = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.AeonID = A0_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueAeonDisplayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.Row = L4_2
  L3_2.IsSelected = A1_2
  L3_2.IsCrossAeon = A2_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueAeonExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.Sort
  L3_2.Sort = L5_2
  return L3_2
end
L0_1.create_one_ban_aeon_data = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1.create_one_ban_aeon_data
    L8_2 = L6_2
    L9_2 = true
    L10_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1.create_all_selected_aeon_data = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueSelectedBanAeons
  L2_2 = L1_2
  L1_2 = L1_2.ContainsKey
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RogueSelectedBanAeons
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= A0_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L0_1.create_all_selected_aeon_data
  L4_2 = L2_2
  return L3_2(L4_2)
end
L0_1.try_get_rogue_nous_selected_banned_aeon = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A0_2 == L6_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_id_in_list = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueSeenUnlockAeons
  L3_2 = L1_2
  L2_2 = L1_2.Contains
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.Add
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.mark_aeon_seen = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L3_2 = L1_2
  L2_2 = L1_2.RemoveTriggeredActionID
  L5_2 = A0_2
  L4_2 = A0_2.GetRogueActionID
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.remove_rogue_triggered_action_id = L13_1
return L0_1
