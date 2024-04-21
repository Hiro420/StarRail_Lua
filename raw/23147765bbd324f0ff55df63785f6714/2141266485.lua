local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTelevisionCustomPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_boss_feature_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.activity_in_schedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_buff_target_info
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_point_target_info
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_target
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.point_target_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_panel
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.CurrentTelevisionID
  A0_2.television_id = L1_2
  L1_2 = L1_1.CurrentTelevisionData
  A0_2.television_data = L1_2
  L1_2 = A0_2.television_data
  L2_2 = L1_2
  L1_2 = L1_2.IsDeath
  L1_2 = L1_2(L2_2)
  A0_2.is_death = L1_2
  L1_2 = A0_2.television_data
  L1_2 = L1_2.LevelRow
  A0_2.level_row = L1_2
end
L0_1.init_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2.television_data
  L2_2 = L2_2.QuestList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2.television_data
    L7_2 = L7_2.QuestList
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 == nil then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.activity_in_schedule = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.level_row
  L3_2 = L3_2.MonsterBuffDesc
  L2_2.Desc = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2.level_row
  L4_2 = L4_2.MonsterParmList
  L3_2 = L3_2(L4_2)
  L2_2.Param = L3_2
  L1_2[1] = L2_2
  A0_2._boss_feature_info_row_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.boss_feature_info_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._boss_feature_info_row_list
  L1_2(L2_2, L3_2)
end
L0_1._setup_boss_feature_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.is_death
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_target
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2.television_data
  L1_2 = L1_2.QuestList
  L1_2 = L1_2[0]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.FinishWayRow
  L3_2 = L3_2.ParamInt2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_GamePhaseManager
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentPhase
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.BattleInstanceRef
  L4_2 = L4_2.GameWorldRef
  L4_2 = L4_2.EntityManagerRef
  L4_2 = L4_2.LevelEntity
  L6_2 = L4_2
  L5_2 = L4_2.GetComponent
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.LevelUIComponent
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L5_2
  L6_2 = L5_2.GetActivityBuffLayerCount
  L8_2 = A0_2.television_data
  L8_2 = L8_2.MazeBuffID
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.buff_target_panel
  L8_2 = L7_2
  L7_2 = L7_2.setup_text
  L9_2 = L2_2.DataRow
  L9_2 = L9_2.QuestTitle
  L10_2 = {}
  L11_2 = L2_2.FinishWayRow
  L11_2 = L11_2.ParamInt1
  L12_2 = L2_2.FinishWayRow
  L12_2 = L12_2.ParamInt2
  L13_2 = L2_2.FinishWayRow
  L13_2 = L13_2.ParamInt3
  L14_2 = L2_2.TotalProgress
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.buff_target_panel
  L8_2 = L7_2
  L7_2 = L7_2._show_status_panel
  L9_2 = true
  L7_2(L8_2, L9_2)
  if L3_2 <= L6_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.buff_target_panel
    L8_2 = L7_2
    L7_2 = L7_2.setup_status
    L9_2 = true
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.buff_target_panel
    L8_2 = L7_2
    L7_2 = L7_2._setup_complete_status_by_target_state
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.ChallengeTargetState
    L9_2 = L9_2.None
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_buff_target_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = 1
  L2_2 = A0_2.is_death
  if L2_2 then
    L1_2 = 0
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.GameWorldRef
  L2_2 = L2_2.EntityManagerRef
  L2_2 = L2_2.LevelEntity
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LevelDataComponent
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FixPoint
  L4_2 = L4_2.FloorToInt
  L5_2 = L3_2.BattleScoringTotal
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  A0_2.target_data = L5_2
  L5_2 = L1_2
  L6_2 = A0_2.television_data
  L6_2 = L6_2.QuestList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_1
    L10_2 = L9_2
    L9_2 = L9_2.TryGetQuestData
    L11_2 = A0_2.television_data
    L11_2 = L11_2.QuestList
    L11_2 = L11_2[L8_2]
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.EmptyChallengeTargetData
    L10_2 = L10_2()
    L11_2 = L9_2.DataRow
    L11_2 = L11_2.QuestTitle
    L10_2.Name = L11_2
    L11_2 = L9_2.FinishWayRow
    L11_2 = L11_2.ParamInt1
    L10_2.ChallengeParam1 = L11_2
    L11_2 = L9_2.FinishWayRow
    L11_2 = L11_2.ParamInt2
    L10_2.ChallengeParam2 = L11_2
    L11_2 = L9_2.FinishWayRow
    L11_2 = L11_2.ParamInt2
    if L4_2 >= L11_2 then
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.ChallengeTargetState
      L12_2 = L12_2.Success
      L10_2.ChallengeTargetState = L12_2
    else
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.ChallengeTargetState
      L12_2 = L12_2.None
      L10_2.ChallengeTargetState = L12_2
    end
    L10_2.ChallengeType = 0
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = A0_2.target_data
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.point_target_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.target_data
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.point_target_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_show_status_panel
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._setup_point_target_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_death
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_death
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_death_buff_panel
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_common_buff_panel
    L1_2(L2_2)
  end
end
L0_1._setup_buff_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2.level_row
  L2_2 = L2_2.MonsterBuffTips
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_buff_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.level_row
  L4_2 = L4_2.BuffTips
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.GameWorldRef
  L2_2 = L2_2.EntityManagerRef
  L2_2 = L2_2.LevelEntity
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LevelUIComponent
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetActivityBuffLayerCount
  L6_2 = A0_2.television_data
  L6_2 = L6_2.MazeBuffID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L6_2 = {}
  L7_2 = A0_2.level_row
  L7_2 = L7_2.MazeBuffID
  L6_2.BuffID = L7_2
  L6_2.BuffCount = L4_2
  L6_2.Interactable = false
  L6_2.ShowCount = true
  L7_2 = A0_2.level_row
  L6_2.LevelRow = L7_2
  L5_2[1] = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.buff_list_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = #L5_2
  A0_2.count = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.refresh_desc
  L8_2 = false
  L6_2(L7_2, L8_2)
end
L0_1._setup_common_buff_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = L1_1.CurrentBuffList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = {}
    L10_2 = L2_2[L6_2]
    L9_2.BuffID = L10_2
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetBuffMaxLayer
    L12_2 = L2_2[L6_2]
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.BuffCount = L10_2
    L9_2.Interactable = false
    L9_2.ShowCount = true
    L10_2 = A0_2.level_row
    L9_2.LevelRow = L10_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = #L1_2
  A0_2.count = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.refresh_desc
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_death_buff_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2.count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.buff_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.refresh_desc
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.refresh_desc = L3_1
return L0_1
