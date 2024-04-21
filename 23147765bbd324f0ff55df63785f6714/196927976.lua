local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubEnemyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnemyPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.PreEditTeamMode = 1
L1_1.EditedTeamMode = 2
L1_1.PreRandomPickEnemy = 3
L1_1.RandomPickingEnemy = 4
L1_1.FirstRound = 5
L1_1.OtherRound = 6
L1_1.FinalRound = 7
L2_1 = {}
L2_1.first_enter = "QuestFistClubPaperPage_Frist_FadeIn"
L2_1.first_out = "QuestFistClubPaperPage_Frist_FadeOut"
L2_1.first_main_to_roll = "QuestFistClubPaperPage_Frist_Ready_Switch_Roll"
L2_1.first_roll_to_main = "QuestFistClubPaperPage_Frist_Roll_Switch_Ready"
L2_1.enter = "QuestFistClubPaperPage_FadeIn"
L2_1.out = "QuestFistClubPaperPage_FadeOut"
L2_1.main_to_roll = "QuestFistClubPaperPage_Ready_Switch_Roll"
L2_1.roll_to_main = "QuestFistClubPaperPage_Roll_Switch_Ready"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.BoxingClubModule
L4_1 = "UIText_BoxingClub_Challenge_StageNullName"
L5_1 = "UIText_BoxingClub_Challenge_StageNullWave"
L6_1 = "UIText_BoxingClub_Challenge_GetEnemy"
L7_1 = "UIText_BoxingClub_Challenge_GoBattle"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.BoxingClubStageConfigExcelTable
L9_1 = 1.5
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._btn_click_wrapper
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.show_enemy_detail_button
  L4_2 = A0_2._show_enemy_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_match_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_root_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_match_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_root_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.show_enemy_detail_button
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_stage
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_stage
    L3_2 = L1_1.FirstRound
    if not (L2_2 < L3_2) then
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.is_gamepad_input
      L2_2 = L2_2()
      if L2_2 then
        goto lbl_15
      end
    end
  end
  do return end
  ::lbl_15::
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._show_enemy_detail
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_stage
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.show_enemy_detail_button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_stage
  L5_2 = L1_1.FirstRound
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L4_2 = L4_2 >= L5_2 and L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_stage = A1_2
  A0_2._round = A2_2
  A0_2._level_instance = A3_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.ButtonMutex
  L4_2 = L4_2(L5_2)
  A0_2._btn_mutex = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.pre_match_info_panel
  A0_2._info_panel = L4_2
  L4_2 = A0_2._cur_stage
  L5_2 = L1_1.EditedTeamMode
  if L4_2 > L5_2 then
    L4_2 = A0_2._info_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_root_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.in_match_info_panel
    A0_2._info_panel = L4_2
  end
  L4_2 = A0_2._info_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_root_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_stage_info_by_event_id
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_node_by_stage
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_enemy_name
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_enemy_weakness
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_enemy_wave
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_buff_by_stage
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_img_by_stage
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_button_desc_by_stage
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_enemy_talk
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_enemy_level
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_series_hint
  L4_2(L5_2)
end
L0_1.setup_view = L10_1
function L10_1(A0_2, A1_2)
  A0_2._challenge_id = A1_2
end
L0_1.setup_challenge_id = L10_1
function L10_1(A0_2, A1_2)
  A0_2._avatar_id_lst = A1_2
end
L0_1.setup_avatar_ids_lst = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextID
    L2_2 = L2_2.empty
    if A1_2 ~= L2_2 then
      goto lbl_15
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_talk_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  ::lbl_15::
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_talk_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_enemy_talk = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_display_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_enemy_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_display_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_empty_root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.show_enemy_detail_button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.switch_view_when_effect = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.BattleRecord
  L1_2 = L1_2.CurrentStage
  if L1_2 == 0 then
    return
  end
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
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._stage_row = L4_2
end
L0_1._update_stage_info_by_event_id = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_stage
  L4_2 = L1_1.PreEditTeamMode
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.show_enemy_detail_button
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_stage
  L4_2 = L1_1.FirstRound
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = L3_2 >= L4_2 and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._update_node_by_stage = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.enemy_name_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = L8_1.GetData
    L2_2 = A0_2._level_instance
    L2_2 = L2_2.BattleRecord
    L2_2 = L2_2.CurrentStage
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.enemy_name_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_enemy_name = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_weakness
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_enemy_weakness = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._update_default_wave
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._update_wave_by_stage
    L1_2(L2_2)
  end
end
L0_1._update_enemy_wave = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_level
  L3_2 = G
  L3_2 = L3_2.BoxingClubUtils
  L3_2 = L3_2.get_level_by_challenge_row
  L4_2 = A0_2._level_instance
  L4_2 = L4_2.Row
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._update_enemy_level = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_wave_num
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1._update_default_wave = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_series_hint
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.Row
  L3_2 = L3_2.ChallengeTip
  L1_2(L2_2, L3_2)
end
L0_1._update_series_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_wave_num
  L3_2 = A0_2._stage_row
  L3_2 = L3_2.MonsterList
  L3_2 = L3_2.Length
  L1_2(L2_2, L3_2)
end
L0_1._update_wave_by_stage = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.OtherRound
  if L1_2 <= L2_2 then
    L1_2 = A0_2._cur_stage
    L2_2 = L1_1.FirstRound
    if L1_2 >= L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.next_round_buff_title
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.final_hint_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.next_round_buff_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.FinalRound
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.next_round_buff_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.final_hint_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.next_round_buff_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_BoxingClub_Challenge_BuffGet"
  L1_2(L2_2, L3_2)
end
L0_1._update_buff_by_stage = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.enemy_display_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_enemy_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.enemy_display_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_enemy_bg_hide
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.enemy_display_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.update_empty_root
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_display_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_enemy_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_display_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_empty_root
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_display_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enemy
  L3_2 = A0_2._stage_row
  L3_2 = L3_2.MonsterList
  L4_2 = A0_2._stage_row
  L5_2 = A0_2._level_instance
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._update_img_by_stage = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.EditedTeamMode
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_button_desc_by_stage = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.RandomPickingEnemy
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubStageConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.BattleRecord
  L2_2 = L2_2.CurrentStage
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_talk_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BubbleTalkEnemy
  L2_2(L3_2, L4_2)
end
L0_1._update_enemy_talk = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_cur_stage_monster_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Monster.MonsterTipsDialog"
  L4_2 = L1_2
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_enemy_detail = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.BoxingClubUtils
  L1_2 = L1_2.get_display_enemies_by_monster_array
  L2_2 = A0_2._stage_row
  L2_2 = L2_2.MonsterList
  L3_2 = A0_2._stage_row
  L3_2 = L3_2.Level
  return L1_2(L2_2, L3_2)
end
L0_1._generate_cur_stage_monster_datas = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_stage
  L2_2 = L1_1.EditedTeamMode
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_start_random_enemy_btn_clicked
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_start_battle_btn_clicked
    L1_2(L2_2)
  end
end
L0_1._on_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.StartMatch
  L3_2 = A0_2._challenge_id
  L4_2 = A0_2._avatar_id_lst
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.DestroyLocalEditTeam
  L1_2(L2_2)
end
L0_1._on_start_random_enemy_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_mutex
  if L1_2 then
    L1_2 = A0_2._btn_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Check
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_clicked
      L0_3(L1_3)
    end
    L4_2 = L9_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_clicked
    L1_2(L2_2)
  end
end
L0_1._btn_click_wrapper = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.StartBattle
  L3_2 = A0_2._challenge_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CDAHGGAHJOO
  L1_2(L2_2, L3_2)
end
L0_1._on_start_battle_btn_clicked = L10_1
return L0_1
