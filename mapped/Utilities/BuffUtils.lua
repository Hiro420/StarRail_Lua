local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "BuffUtils"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.Env = 0
L1_1.CharAtk = 1
L1_1.CharDef = 2
L1_1.CharSpe = 3
L1_1.CharPassive = 4
L1_1.ItemAtk = 11
L1_1.ItemDef = 12
L1_1.ItemSpe = 13
L1_1.MonsterDebuff = 21
L0_1.BuffPoolType = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MazeBuffExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.GetMazeBuffData = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.get_all_team_buff
  L0_2 = L0_2()
  L1_2 = L0_1.get_all_character_buff
  L1_2 = L1_2()
  L0_2 = L0_2 + L1_2
  L1_2 = L0_1.cal_env_buff_count_in_challenge
  L1_2 = L1_2()
  L0_2 = L0_2 + L1_2
  return L0_2
end
L0_1.get_buff_counts = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.EntityManagerRef
  L4_2 = L2_2
  L3_2 = L2_2.GetLightTeamEntity
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureAbilityComponent
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = L4_2.ModifierCount
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L4_2
    L10_2 = L4_2.GetModifierByIndex
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = G
    L11_2 = L11_2.BuffUtils
    L11_2 = L11_2.GetMazeBuffData
    L12_2 = L10_2.BuffID
    L13_2 = L10_2.Level
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L10_2.State
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.ModifierState
    L13_2 = L13_2.Alive
    if L12_2 == L13_2 and L11_2 then
      L12_2 = L11_2.IsDisplay
      if L12_2 then
        L12_2 = L11_2.MazeBuffPool
        L13_2 = L0_1.BuffPoolType
        L13_2 = L13_2.ItemAtk
        if L12_2 ~= L13_2 then
          L12_2 = L11_2.MazeBuffPool
          L13_2 = L0_1.BuffPoolType
          L13_2 = L13_2.ItemDef
          if L12_2 ~= L13_2 then
            L12_2 = L11_2.MazeBuffPool
            L13_2 = L0_1.BuffPoolType
            L13_2 = L13_2.ItemSpe
            if L12_2 ~= L13_2 then
              goto lbl_69
            end
          end
        end
        L0_2 = L0_2 + 1
        goto lbl_97
        ::lbl_69::
        L12_2 = L11_2.MazeBuffPool
        L13_2 = L0_1.BuffPoolType
        L13_2 = L13_2.Env
        if L12_2 == L13_2 then
          L0_2 = L0_2 + 1
        else
          L12_2 = L11_2.MazeBuffPool
          L13_2 = L0_1.BuffPoolType
          L13_2 = L13_2.CharAtk
          if L12_2 ~= L13_2 then
            L12_2 = L11_2.MazeBuffPool
            L13_2 = L0_1.BuffPoolType
            L13_2 = L13_2.CharDef
            if L12_2 ~= L13_2 then
              L12_2 = L11_2.MazeBuffPool
              L13_2 = L0_1.BuffPoolType
              L13_2 = L13_2.CharSpe
              if L12_2 ~= L13_2 then
                L12_2 = L11_2.MazeBuffPool
                L13_2 = L0_1.BuffPoolType
                L13_2 = L13_2.CharPassive
                if L12_2 ~= L13_2 then
                  goto lbl_97
                end
              end
            end
          end
          L0_2 = L0_2 + 1
        end
      end
    end
    ::lbl_97::
  end
  return L0_2
end
L0_1.get_all_team_buff = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.EntityManagerRef
  L4_2 = L2_2
  L3_2 = L2_2.GetLightTeamEntity
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureAbilityComponent
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = L4_2.ModifierCount
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L4_2
    L10_2 = L4_2.GetModifierByIndex
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = G
    L11_2 = L11_2.BuffUtils
    L11_2 = L11_2.GetMazeBuffData
    L12_2 = L10_2.BuffID
    L13_2 = L10_2.Level
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L10_2.State
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.ModifierState
    L13_2 = L13_2.Alive
    if L12_2 == L13_2 and L11_2 then
      L12_2 = L11_2.IsDisplay
      if L12_2 then
        L12_2 = L11_2.MazeBuffPool
        L13_2 = L0_1.BuffPoolType
        L13_2 = L13_2.Env
        if L12_2 == L13_2 then
          L0_2 = L0_2 + 1
        end
      end
    end
  end
  return L0_2
end
L0_1.get_env_buff = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MemberDatas
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = L1_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L0_1._count_character_buff
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L0_2 = L0_2 + L8_2
  end
  return L0_2
end
L0_1.get_all_character_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.TeamManager
    L4_2 = L3_2
    L3_2 = L3_2.GetMemberEntityByMemberData
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      return L1_2
    end
    L5_2 = L3_2
    L4_2 = L3_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AdventureAbilityComponent
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    if L4_2 == nil then
      return L1_2
    end
    L5_2 = L4_2.ModifierCount
    L6_2 = 0
    L7_2 = L5_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = L4_2
      L10_2 = L4_2.GetModifierByIndex
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2.State
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.ModifierState
      L12_2 = L12_2.Alive
      if L11_2 == L12_2 then
        L11_2 = G
        L11_2 = L11_2.BuffUtils
        L11_2 = L11_2.GetMazeBuffData
        L12_2 = L10_2.BuffID
        L13_2 = L10_2.Level
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L12_2 = L11_2.IsDisplay
          if L12_2 then
            L12_2 = L11_2.MazeBuffPool
            L13_2 = L0_1.BuffPoolType
            L13_2 = L13_2.CharAtk
            if L12_2 ~= L13_2 then
              L12_2 = L11_2.MazeBuffPool
              L13_2 = L0_1.BuffPoolType
              L13_2 = L13_2.CharDef
              if L12_2 ~= L13_2 then
                L12_2 = L11_2.MazeBuffPool
                L13_2 = L0_1.BuffPoolType
                L13_2 = L13_2.CharSpe
                if L12_2 ~= L13_2 then
                  L12_2 = L11_2.MazeBuffPool
                  L13_2 = L0_1.BuffPoolType
                  L13_2 = L13_2.CharPassive
                  if L12_2 ~= L13_2 then
                    goto lbl_77
                  end
                end
              end
            end
            L1_2 = L1_2 + 1
          end
        end
      end
      ::lbl_77::
    end
  end
  return L1_2
end
L0_1._count_character_buff = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.AdventureStatic
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentGameModeType
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameModeType
  L1_2 = L1_2.Challenge
  if L0_2 ~= L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  L1_2 = L1_2.ChallengeDataRef
  L1_2 = L1_2.Row
  L1_2 = L1_2.MazeBuffID
  if L1_2 == 0 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = 1
  return L2_2
end
L0_1.cal_env_buff_count_in_challenge = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.GetMainWorld
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.EntityManagerRef
    L4_2 = L2_2
    L3_2 = L2_2.GetLightTeamEntity
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AdventureAbilityComponent
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L4_2.ModifierCount
    L6_2 = 0
    L7_2 = L5_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = L4_2
      L10_2 = L4_2.GetModifierByIndex
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2.State
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.ModifierState
      L12_2 = L12_2.Alive
      if L11_2 == L12_2 then
        L11_2 = G
        L11_2 = L11_2.BuffUtils
        L11_2 = L11_2.GetMazeBuffData
        L12_2 = L10_2.BuffID
        L13_2 = L10_2.Level
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L12_2 = L11_2.IsDisplay
          if L12_2 then
            L12_2 = L11_2.MazeBuffPool
            if L12_2 == A0_2 then
              return L10_2
            end
          end
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_modifier_by_maze_buff_pool = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.get_modifier_by_maze_buff_pool
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.BuffID
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end
L0_1.get_buff_id_by_maze_buff_pool = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = L0_1.get_buff_id_by_maze_buff_pool
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.InventoryModule
    L4_2 = L3_2
    L3_2 = L3_2.GetItemDataByConfigID
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L1_2 = L3_2
    if L1_2 == nil then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ItemFactory
      L3_2 = L3_2.CreateItemData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L1_2 = L3_2
    end
  end
  return L1_2
end
L0_1.get_item_data_by_maze_buff_pool = L1_1
return L0_1
