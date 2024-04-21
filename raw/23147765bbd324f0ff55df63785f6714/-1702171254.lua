local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTips.BaseMonsterDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EntityMonsterDataProvider"
L2_1 = G
L2_1 = L2_1.BaseMonsterDataProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_wave_index = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._monster_waves = L2_2
  L2_2 = {}
  A0_2._wave_num_to_buff_list = L2_2
  L2_2 = {}
  A0_2._drops = L2_2
  A0_2._last_wave_index = 0
  L3_2 = A0_2
  L2_2 = A0_2._init_data_by_entity
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L2_2 = L2_2.GetBattleAssistMonsterList
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2._init_data_by_entity
      L9_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = A0_2._drops
  L3_2(L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_show_drop = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._drops
  return L1_2
end
L0_1.get_drops = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._monster_waves
  return L2_2
end
L0_1.get_monster_waves_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_show_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._wave_num_to_buff_list
  L3_2 = L3_2[A2_2]
  return L3_2
end
L0_1.get_buff_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.NPCComponent
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetStageID
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "Maze monster info error, monster stage id: %s"
    L8_2 = tostring
    L9_2 = L3_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AdventureStatic
  L5_2 = L5_2.GetNPCMonsterHardConfig
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.MonsterData
  L7_2 = L7_2.CreateDataListFromStageRow
  L8_2 = L4_2
  L9_2 = L6_2
  L10_2 = true
  L11_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._get_buff_list
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L10_2 = 0
  L11_2 = L7_2.Count
  L11_2 = L11_2 - 1
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L7_2[L13_2]
    L15_2 = L14_2.WaveIndex
    L16_2 = A0_2._last_wave_index
    L15_2 = L15_2 + L16_2
    L16_2 = A0_2._monster_waves
    L16_2 = L16_2[L15_2]
    if L16_2 == nil then
      L16_2 = A0_2._monster_waves
      L17_2 = {}
      L16_2[L15_2] = L17_2
    end
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = A0_2._monster_waves
    L17_2 = L17_2[L15_2]
    L18_2 = L14_2
    L16_2(L17_2, L18_2)
    L16_2 = A0_2._wave_num_to_buff_list
    L16_2[L15_2] = L8_2
    L16_2 = L14_2.WaveIndex
    if L16_2 == 1 then
      L16_2 = #L9_2
      L16_2 = L16_2 + 1
      L9_2[L16_2] = L14_2
    end
  end
  L10_2 = ipairs
  L11_2 = A0_2._monster_waves
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = table
    L15_2 = L15_2.sort
    L16_2 = L14_2
    function L17_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = A0_3.TemplateRow
      L3_3 = A1_3.TemplateRow
      L4_3 = CS
      L4_3 = L4_3.System
      L4_3 = L4_3.Convert
      L4_3 = L4_3.ToUInt32
      L5_3 = L2_3.Rank
      L4_3 = L4_3(L5_3)
      L5_3 = CS
      L5_3 = L5_3.System
      L5_3 = L5_3.Convert
      L5_3 = L5_3.ToUInt32
      L6_3 = L3_3.Rank
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L15_2(L16_2, L17_2)
  end
  L10_2 = A0_2._wave_num_to_buff_list
  L11_2 = A0_2._wave_num_to_buff_list
  L11_2 = #L11_2
  L11_2 = L11_2 + 1
  L13_2 = A0_2
  L12_2 = A0_2._get_buff_list
  L14_2 = A1_2
  L12_2 = L12_2(L13_2, L14_2)
  L10_2[L11_2] = L12_2
  L11_2 = A0_2
  L10_2 = A0_2._refresh_reward_list
  L12_2 = L2_2
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A0_2._monster_waves
  L10_2 = #L10_2
  A0_2._last_wave_index = L10_2
end
L0_1._init_data_by_entity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = nil
  L4_2 = A1_2
  L3_2 = A1_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureAbilityComponent
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ModifierCount
    L5_2 = 0
    L6_2 = L4_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L10_2 = L3_2
      L9_2 = L3_2.GetModifierByIndex
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L9_2.State
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ModifierState
      L11_2 = L11_2.Alive
      if L10_2 == L11_2 then
        L10_2 = L9_2.BuffID
        if L10_2 ~= 0 then
          L10_2 = G
          L10_2 = L10_2.BuffUtils
          L10_2 = L10_2.GetMazeBuffData
          L11_2 = L9_2.BuffID
          L12_2 = L9_2.Level
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 ~= nil then
            L11_2 = L10_2.IsDisplay
            if L11_2 then
              if L2_2 == nil then
                L11_2 = {}
                L2_2 = L11_2
              end
              L11_2 = #L2_2
              L11_2 = L11_2 + 1
              L2_2[L11_2] = L9_2
            end
          end
        end
      end
    end
  end
  return L2_2
end
L0_1._get_buff_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = A1_2.MapNpcDef
  L3_2 = L3_2.EventID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.PlayerModule
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.WorldLevel
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PlaneEventExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.DisplayItemList
  L6_2 = L6_2.Length
  if L6_2 ~= 0 then
    L6_2 = 0
    L7_2 = L5_2.DisplayItemList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = A0_2
      L10_2 = A0_2._add_drop
      L12_2 = L5_2.DisplayItemList
      L12_2 = L12_2[L9_2]
      L13_2 = A0_2._drops
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L6_2 = L5_2.IsUseMonsterDrop
  if L6_2 and A2_2 ~= nil then
    L6_2 = ipairs
    L7_2 = A2_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.Row
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.MonsterDropExcelTable
      L12_2 = L12_2.GetData
      L13_2 = L11_2.MonsterTemplateID
      L14_2 = L4_2
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 then
        L13_2 = L12_2.DisplayItemList
        L13_2 = L13_2.Length
        if L13_2 ~= 0 then
          L13_2 = 0
          L14_2 = L12_2.DisplayItemList
          L14_2 = L14_2.Length
          L14_2 = L14_2 - 1
          L15_2 = 1
          for L16_2 = L13_2, L14_2, L15_2 do
            L18_2 = A0_2
            L17_2 = A0_2._add_drop
            L19_2 = L12_2.DisplayItemList
            L19_2 = L19_2[L16_2]
            L20_2 = A0_2._drops
            L17_2(L18_2, L19_2, L20_2)
          end
        end
      end
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.RogueStatic
  L6_2 = L6_2.GetRogueMonsterExtraDrop
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.Length
    if L7_2 ~= 0 then
      L7_2 = 0
      L8_2 = L6_2.Length
      L8_2 = L8_2 - 1
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L12_2 = A0_2
        L11_2 = A0_2._add_drop
        L13_2 = L6_2[L10_2]
        L14_2 = A0_2._drops
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L0_1._refresh_reward_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MonsterID
    if L8_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MonsterExcelTable
    L8_2 = L8_2.GetData
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    L9_2 = L7_2.Row
    L9_2 = L9_2.MonsterTemplateID
    L10_2 = L8_2.MonsterTemplateID
    if L9_2 == L10_2 then
      L9_2 = true
      return L9_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._has_monster = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ItemID
    L9_2 = A1_2.ItemID
    if L8_2 == L9_2 then
      L8_2 = L7_2.ItemNum
      L9_2 = A1_2.ItemNum
      L8_2 = L8_2 + L9_2
      L7_2.ItemNum = L8_2
      return
    end
  end
  L3_2 = #A2_2
  L3_2 = L3_2 + 1
  L4_2 = {}
  L5_2 = A1_2.ItemID
  L4_2.ItemID = L5_2
  L5_2 = A1_2.ItemNum
  L4_2.ItemNum = L5_2
  A2_2[L3_2] = L4_2
end
L0_1._add_drop = L1_1
return L0_1
