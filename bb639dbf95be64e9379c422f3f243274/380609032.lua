local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "BoxingClubUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1._generate_enemy_table_from_row
    L8_2 = A0_2[L6_2]
    L9_2 = L2_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
  return L2_2
end
L0_1.get_display_enemies_by_monster_array = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.Monster0
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2.Monster0
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterData
      L5_2 = L3_2.MonsterID
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = L3_2.Level
      end
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = #A1_2
      L5_2 = L5_2 + 1
      A1_2[L5_2] = L4_2
    end
  end
  L3_2 = A0_2.Monster1
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2.Monster1
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterData
      L5_2 = L3_2.MonsterID
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = L3_2.Level
      end
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = #A1_2
      L5_2 = L5_2 + 1
      A1_2[L5_2] = L4_2
    end
  end
  L3_2 = A0_2.Monster2
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2.Monster2
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterData
      L5_2 = L3_2.MonsterID
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = L3_2.Level
      end
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = #A1_2
      L5_2 = L5_2 + 1
      A1_2[L5_2] = L4_2
    end
  end
  L3_2 = A0_2.Monster3
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2.Monster3
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterData
      L5_2 = L3_2.MonsterID
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = L3_2.Level
      end
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = #A1_2
      L5_2 = L5_2 + 1
      A1_2[L5_2] = L4_2
    end
  end
  L3_2 = A0_2.Monster4
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2.Monster4
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A1_2
    L6_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterData
      L5_2 = L3_2.MonsterID
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = L3_2.Level
      end
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = #A1_2
      L5_2 = L5_2 + 1
      A1_2[L5_2] = L4_2
    end
  end
end
L0_1._generate_enemy_table_from_row = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ScheduleModule
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = A0_2.Row
  L3_2 = L3_2.ActivityModuleID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.BeginTimeStamp
  return L2_2
end
L0_1.get_schedule_by_level_instance = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L1_2 = A0_2.StageGroupList
    L1_2 = L1_2.Length
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubStageGroupConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.StageGroupList
  L2_2 = L2_2[0]
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.EventIDList
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      goto lbl_25
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_25::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetStageIDByEventID
  L4_2 = L1_2.EventIDList
  L4_2 = L4_2[0]
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.Level
    if L3_2 then
      goto lbl_45
    end
  end
  L3_2 = 0
  ::lbl_45::
  return L3_2
end
L0_1.get_level_by_challenge_row = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= nil then
    L1_2 = A0_2.BattleRecord
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextID
  L1_2 = L1_2.empty
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2.BattleRecord
  L1_2 = L1_2.Row
  L1_2 = L1_2.EventIDList
  L2_2 = A0_2.BattleRecord
  L2_2 = L2_2.CurrentStageIndex
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubStageConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    return L3_2
  end
  L3_2 = L2_2.BuffID
  L4_2 = G
  L4_2 = L4_2.BuffUtils
  L4_2 = L4_2.GetMazeBuffData
  L5_2 = L3_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    return L5_2
  end
  L5_2 = L4_2.BuffName
  return L5_2
end
L0_1.get_buff_name_by_level_instance = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.BattleRecord
  if L1_2 == nil then
    L1_2 = A0_2.Row
    L1_2 = L1_2.ChallengeBuff
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  end
  L1_2 = A0_2.BattleRecord
  L1_2 = L1_2.Row
  L1_2 = L1_2.EventIDList
  L2_2 = A0_2.BattleRecord
  L2_2 = L2_2.CurrentStageIndex
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubStageConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.BuffID
  L4_2 = G
  L4_2 = L4_2.BuffUtils
  L4_2 = L4_2.GetMazeBuffData
  L5_2 = L3_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end
L0_1.get_buff_row_by_level_instance = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prefs
  L0_2 = L0_2.User
  L0_2.BoxingClubResonanceLimitRewardBtnSeen = true
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.BoxingClub.BoxingClubResonanceRewardPage"
  L0_2(L1_2)
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prefs
  L0_2 = L0_2.ForceSave
  L0_2()
end
L0_1.open_resonance_limit_reward_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.AvatarModule
    L7_2 = L6_2
    L6_2 = L6_2.AddTrialPlayer
    L8_2 = A0_2[L5_2]
    L6_2(L7_2, L8_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.AvatarModule
    L7_2 = L6_2
    L6_2 = L6_2.GetTrialAvatar
    L8_2 = A0_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_trial_avatar_table = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.AvatarModule
    L7_2 = L6_2
    L6_2 = L6_2.GetAvatar
    L8_2 = A0_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 == nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.AvatarModule
      L8_2 = L7_2
      L7_2 = L7_2.AddTrialPlayer
      L9_2 = A0_2[L5_2]
      L7_2(L8_2, L9_2)
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.AvatarModule
      L8_2 = L7_2
      L7_2 = L7_2.GetTrialAvatar
      L9_2 = A0_2[L5_2]
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_avatar_table = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ActivityModule
  L1_2 = L0_2
  L0_2 = L0_2.GetBoxingClubResonanceActivityData
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return L0_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ResidentActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetResidentBoxingClubResonanceActivityData
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  return L0_2
end
L0_1.get_avail_resonance_activity_data = L1_1
return L0_1
