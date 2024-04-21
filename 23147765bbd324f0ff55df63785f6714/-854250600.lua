local L0_1, L1_1, L2_1
L0_1 = {}
L0_1[1] = "UIText_ActivityCommon_RankS"
L0_1[2] = "UIText_ActivityCommon_RankA"
L0_1[3] = "UIText_ActivityCommon_RankB"
L0_1[4] = "UIText_ActivityCommon_RankC"
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "RogueEndlessUtils"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1[A0_2]
  if not L1_2 then
    L1_2 = L0_1[4]
  end
  return L1_2
end
L1_1.get_battle_score_rank_textID = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueEndless_Activity_MegaBuff_AreaID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.IntValue
      if A0_2 == L6_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L1_1.has_mega_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueEndless_Activity_SP_Pin_MazeBuffID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      if A0_2 == L6_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L1_1.is_specific_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueEndless_Activity_SP_Pin_MiracleDisplayID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      if A0_2 == L6_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L1_1.is_specific_miracle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1._create_monsters_from_config
  L2_2 = A0_2.ActivityAreaRow
  L2_2 = L2_2.DisplayMonster2
  L3_2 = A0_2.RogueMapID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1._create_monsters_from_config
  L3_2 = A0_2.ActivityAreaRow
  L3_2 = L3_2.DisplayMonster
  L4_2 = A0_2.RogueMapID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L1_1.get_endless_common_area_monsters = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.WorldLevel
  L5_2 = A0_2
  L4_2 = A0_2.GetEnumerator
  L4_2 = L4_2(L5_2)
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    L5_2 = L5_2.Key
    L6_2 = 0
    L7_2 = L4_2.Current
    L7_2 = L7_2.Value
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueMapExcelTable
    L8_2 = L8_2.GetData
    L9_2 = A1_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.LevelList
      L9_2 = L9_2.Length
      if 0 < L9_2 then
        L9_2 = L8_2.LevelList
        L9_2 = L9_2.Length
        if L3_2 < L9_2 then
          L10_2 = L8_2.LevelList
          L6_2 = L10_2[L3_2]
        else
          L10_2 = L8_2.LevelList
          L11_2 = L9_2 - 1
          L6_2 = L10_2[L11_2]
        end
    end
    else
      L9_2 = G
      L9_2 = L9_2.SuperDebug
      L9_2 = L9_2.LogErrorFormat
      L10_2 = "[RogueEndless] \232\175\187\229\143\150RogueMapConfig\229\164\177\232\180\165\239\188\129\239\188\129 MapID:%d SiteID:%d"
      L11_2 = A1_2
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.MonsterData
    L10_2 = L5_2
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = #L2_2
    L12_2 = L12_2 + 1
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.Dispose
  L5_2(L6_2)
  return L2_2
end
L1_1._create_monsters_from_config = L2_1
function L2_1(A0_2)
  local L1_2
  if A0_2 == 1 or A0_2 == 2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RogueModule
    L1_2 = L1_2.RogueEndlessConstValue
    L1_2 = L1_2.MapRoomDescCombat
    return L1_2
  end
  if A0_2 == 5 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RogueModule
    L1_2 = L1_2.RogueEndlessConstValue
    L1_2 = L1_2.MapRoomDescRespite
    return L1_2
  end
  if A0_2 == 6 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RogueModule
    L1_2 = L1_2.RogueEndlessConstValue
    L1_2 = L1_2.MapRoomDescElite
    return L1_2
  end
  if A0_2 == 7 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RogueModule
    L1_2 = L1_2.RogueEndlessConstValue
    L1_2 = L1_2.MapRoomDescBoss
    return L1_2
  end
end
L1_1.get_rogue_map_room_desc_by_type = L2_1
return L1_1
