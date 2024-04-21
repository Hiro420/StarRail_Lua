local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceRandomSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceRandomSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BoxingClub_Challenge_StageNullName"
L2_1 = {}
L2_1.first_enter = "QuestFistClubPaperPage_Frist_FadeIn"
L2_1.first_out = "QuestFistClubPaperPage_Frist_FadeOut"
L2_1.first_main_to_roll = "QuestFistClubPaperPage_Frist_Ready_Switch_Roll"
L2_1.first_roll_to_main = "QuestFistClubPaperPage_Frist_Roll_Switch_Ready"
L2_1.enter = "QuestFistClubPaperPage_FadeIn"
L2_1.out = "QuestFistClubPaperPage_FadeOut"
L2_1.main_to_roll = "QuestFistClubPaperPage_Ready_Switch_Roll"
L2_1.roll_to_main = "QuestFistClubPaperPage_Roll_Switch_Ready"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._cur_round_index = A1_2
  A0_2._challenge_id = A2_2
  A0_2._level_instance = A3_2
  A0_2._on_random_finished_callback = A4_2
  A0_2._callback_listener = A5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.team_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L1_1
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.enemy_team_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.enemy_main_level
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.random_performer
  L7_2 = L6_2
  L6_2 = L6_2.InitRandomComponent
  L8_2 = A0_2._level_instance
  L8_2 = L8_2.BattleRecord
  L8_2 = L8_2.StageGroupID
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A0_2
  L12_2 = A0_2._on_random_enemy
  L13_2 = A0_2._on_random_finished
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_performer
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._cur_round_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2._can_react_to_input = false
end
L0_1.play = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.custom_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.custom_set_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_main_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.custom_hide_main_enemy = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_performer
  L2_2 = L1_2
  L1_2 = L1_2.ForceResetToDefault
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_team_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_main_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.WorldLevel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetStageIDByEventID
  L4_2 = A1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BoxingClubStageConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._boxing_club_row = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._stage_row = L4_2
  L4_2 = A0_2._stage_row
  L4_2 = L4_2.MonsterList
  A0_2._monster_array = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_enemy_title
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_main_enemy
  L4_2(L5_2)
end
L0_1._on_random_enemy = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._on_random_finished_callback
  if L1_2 then
    L1_2 = A0_2._callback_listener
    if L1_2 then
      L1_2 = A0_2._on_random_finished_callback
      L2_2 = A0_2._callback_listener
      L1_2(L2_2)
    end
  end
end
L0_1._on_random_finished = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_team_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._boxing_club_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_enemy_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._stage_row
  L1_2 = L1_2.MonsterList
  L1_2 = L1_2.Length
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.enemy_main_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._monster_array
  L2_2 = A0_2._monster_array
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._boxing_club_row
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.MonsterWaveIndex
  if L4_2 == 0 then
    L3_2 = L1_2.Monster0
  else
    L4_2 = L2_2.MonsterWaveIndex
    if L4_2 == 1 then
      L3_2 = L1_2.Monster1
    else
      L4_2 = L2_2.MonsterWaveIndex
      if L4_2 == 2 then
        L3_2 = L1_2.Monster2
      else
        L4_2 = L2_2.MonsterWaveIndex
        if L4_2 == 3 then
          L3_2 = L1_2.Monster3
        else
          L4_2 = L2_2.MonsterWaveIndex
          if L4_2 == 4 then
            L3_2 = L1_2.Monster4
          else
            L4_2 = L2_2.MonsterWaveIndex
            if L4_2 == 5 then
              L3_2 = L1_2.Monster5
            end
          end
        end
      end
    end
  end
  if L3_2 == 0 then
    L4_2 = L1_2.Monster0
    if L4_2 ~= 0 then
      L3_2 = L1_2.Monster0
  end
  elseif L3_2 == 0 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.enemy_main_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MonsterTemplateExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2.MonsterTemplateID
  L5_2 = L5_2(L6_2)
  if L5_2 == nil then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.enemy_main_figure
  L9_2 = L5_2.ImagePath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.enemy_main_level
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A0_2._stage_row
  L8_2 = L8_2.Level
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.enemy_main_weakness
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = G
  L8_2 = L8_2.Utils
  L8_2 = L8_2.create_lua_table_from_cs_array
  L9_2 = L4_2.StanceWeakList
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._setup_main_enemy = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BoxingClub.BoxingClubResonanceBuffCheckDialog"
  L3_2 = {}
  L4_2 = 3100024
  L5_2 = 3100031
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_click_show_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.custom_hide_main_enemy
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._level_instance
  L2_2 = L1_2
  L1_2 = L1_2.ClearWaitForRandomMark
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._play_effect_based_on_stage
  L3_2 = L2_1.main_to_roll
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._on_stage_changed
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_click_start_random = L3_1
return L0_1
