local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeSkillBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._skill_type = nil
  A0_2._is_blocked = false
  A0_2.has_skill = true
  A0_2._pause_data_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_resume_data_refresh
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pause_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshSkillMP
  L4_2 = L0_1._on_refresh_skill_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshSkillStatus
  L4_2 = L0_1._on_refresh_skill_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerLockNewTarget
  L4_2 = L0_1._on_player_lock_new_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPauseTeamDataRefresh
  L4_2 = L0_1._pause_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIResumeTeamDataRefresh
  L4_2 = L0_1._on_resume_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = A0_2._refresh_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureMazeBtnEffect
  L4_2 = A0_2._on_play_maze_btn_effect
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_skill_short_down_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    return
  end
  A0_2._pause_data_refresh = true
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._pause_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._pause_data_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pause_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._pause_data_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh_skill_status
  L1_2(L2_2)
end
L0_1._on_resume_data_refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.BtnType
  L3_2 = A0_2._skill_type
  if L2_2 ~= L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_loop_eff_enabled
  L4_2 = A1_2.Enable
  L2_2(L3_2, L4_2)
end
L0_1._on_play_maze_btn_effect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._effect_enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loop_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._effect_enabled
  L2_2(L3_2, L4_2)
end
L0_1.set_loop_eff_enabled = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_datas
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_blocked = A1_2
end
L0_1.block = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.CheckMask
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TeamDataRefreshMask
  L4_2 = L4_2.Full
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_refresh_skill_status
    L2_2(L3_2)
  end
end
L0_1._on_team_data_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pause_data_refresh
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentMazeMPValueForDisplay
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  A0_2._current_mp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_status
  L1_2(L2_2)
end
L0_1._on_refresh_skill_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._target_entity
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._target_entity
  L1_2 = L1_2.RuntimeID
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GamePlayStatic
  L2_2 = L2_2.IsMonsterContainsMainAttackDamageType
  L3_2 = L1_2
  L4_2 = A0_2._skill_row
  L4_2 = L4_2.StanceDamageType
  return L2_2(L3_2, L4_2)
end
L0_1._check_weakness_match = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._natureRow
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_weakness_match
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unactive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_skill_weakpoint_statu = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AdventureCharacterDataComponent
    L4_2, L5_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 ~= nil then
      L3_2 = A1_2.EntityType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.EntityType
      L4_2 = L4_2.NPCMonster
      if L3_2 == L4_2 then
        A0_2._target_entity = A1_2
        return
      end
    end
  end
  A0_2._target_entity = nil
end
L0_1._setup_new_target = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_new_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_skill_weakpoint_statu
  L3_2(L4_2)
end
L0_1._on_player_lock_new_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._current_player
    L3_2 = L1_2.CurrentPlayingTeamMember
    if L2_2 == L3_2 then
      return
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.Train
  if L2_2 == L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_datas
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.refresh_player_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_status
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IsFakeAvatar
  if L2_2 then
    L2_2 = A1_2.EntityType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EntityType
    L3_2 = L3_2.NPC
    if L2_2 ~= L3_2 then
      L2_2 = true
      return L2_2
    else
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._decide_has_skill_by_entity = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._current_player
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureCharacterDataComponent
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._skill_component
  L5_2 = L4_2
  L4_2 = L4_2.GetSkillIndexBySkillType
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._maze_skill_index = L4_2
  L4_2 = A1_2.IsFakeAvatar
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpecialNPCDataExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.CharacterID
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._maze_skill_index
    if not (L5_2 < 0) then
      L5_2 = A0_2._maze_skill_index
      L6_2 = L4_2.MazeSkillIdList
      L6_2 = L6_2.Length
      if not (L5_2 >= L6_2) then
        goto lbl_35
      end
    end
    A0_2.has_skill = false
    do return end
    ::lbl_35::
    L5_2 = L4_2.MazeSkillIdList
    L6_2 = A0_2._maze_skill_index
    L5_2 = L5_2[L6_2]
    A0_2._skill_id = L5_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AdventurePlayerExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.CharacterID
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._maze_skill_index
    if not (L5_2 < 0) then
      L5_2 = A0_2._maze_skill_index
      L6_2 = L4_2.MazeSkillIdList
      L6_2 = L6_2.Length
      if not (L5_2 >= L6_2) then
        goto lbl_57
      end
    end
    A0_2.has_skill = false
    do return end
    ::lbl_57::
    L5_2 = L4_2.MazeSkillIdList
    L6_2 = A0_2._maze_skill_index
    L5_2 = L5_2[L6_2]
    A0_2._skill_id = L5_2
  end
end
L0_1._setup_skill_index_and_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.CurrentPlayingTeamMember
    if L3_2 ~= nil then
      L3_2 = A0_2._current_player
      L4_2 = L2_2.CurrentPlayingTeamMember
      if L3_2 ~= L4_2 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  L3_2 = L2_2.CurrentPlayingTeamMember
  A0_2._current_player = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._decide_has_skill_by_entity
  L5_2 = A0_2._current_player
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.has_skill = L3_2
  L3_2 = A0_2.has_skill
  if not L3_2 then
    L3_2 = A0_2._binder
    L4_2 = L3_2
    L3_2 = L3_2.set_light_weight_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._current_player
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureSkillCharacterComponent
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._skill_component = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_skill_index_and_id
  L5_2 = A0_2._current_player
  L6_2 = A0_2._skill_type
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.has_skill
  if not L3_2 then
    L3_2 = A0_2._binder
    L4_2 = L3_2
    L3_2 = L3_2.set_light_weight_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._skill_component
  L4_2 = L3_2
  L3_2 = L3_2.GetSkillConfigByIndex
  L5_2 = A0_2._maze_skill_index
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._skill_config = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazeSkillExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._skill_id
  L3_2 = L3_2(L4_2)
  A0_2._maze_skill_row = L3_2
  L3_2 = A0_2._maze_skill_row
  L3_2 = L3_2.MPCost
  A0_2._mp_cost = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMazeMPValueForDisplay
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2 = L3_2(L4_2)
  A0_2._current_mp = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetMazeSkillRelatedAvatarSkill
  L4_2 = A0_2._current_player
  L5_2 = A0_2._skill_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._skill_row = L3_2
  L3_2 = A0_2._skill_row
  if L3_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "skill row is null, skill id is "
    L5_2 = A0_2._skill_id
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.set_light_weight_active
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._get_datas = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._skill_row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_skill
  L4_2 = A0_2._skill_row
  L4_2 = L4_2.SkillIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._skill_row
  L2_2 = L2_2.StanceDamageType
  L1_2 = L1_2(L2_2)
  A0_2._natureRow = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_tag_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._natureRow
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._natureRow
  L1_2 = L1_2 == nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._natureRow
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_damage_active
    L5_2 = A0_2._natureRow
    L5_2 = L5_2.IconNatureForWeakActive
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_damage_unactive
    L5_2 = A0_2._natureRow
    L5_2 = L5_2.IconNatureForWeakUnactive
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.weak_point
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_skill_weakpoint_statu
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_skill_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._skill_row
  L4_2 = L4_2.SkillTag
  L2_2(L3_2, L4_2)
end
L0_1._refresh_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._skill_config
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_ban_mark
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_ban_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._skill_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureSkillType
  L2_2 = L2_2.NormalAtk
  if L1_2 == L2_2 then
    L1_2 = A0_2._skill_component
    L2_2 = L1_2
    L1_2 = L1_2.CheckAllowUseSkill_Custom
    L3_2 = A0_2._maze_skill_index
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_ban_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._skill_component
    L3_2 = L2_2
    L2_2 = L2_2.CheckAllowUseSkill_MapRotation
    L4_2 = A0_2._maze_skill_index
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._skill_component
    L4_2 = L3_2
    L3_2 = L3_2.CheckAllowUseSkill_LockModule
    L5_2 = A0_2._maze_skill_index
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetInteractable
    L6_2 = L2_2 or L6_2
    if L2_2 then
      L6_2 = L3_2
    end
    L4_2(L5_2, L6_2)
    return
  end
  L1_2 = false
  L2_2 = A0_2._skill_config
  L2_2 = L2_2.CanSwitchActiveState
  if L2_2 then
    L2_2 = A0_2._maze_skill_index
    if 0 <= L2_2 then
      L2_2 = A0_2._skill_component
      L3_2 = L2_2
      L2_2 = L2_2.CheckSkillActive
      L4_2 = A0_2._maze_skill_index
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L1_2 = true
      end
    end
  end
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_ban_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._current_mp
    L3_2 = A0_2._mp_cost
    L2_2 = L2_2 >= L3_2
    if L2_2 then
      L3_2 = A0_2._skill_component
      L4_2 = L3_2
      L3_2 = L3_2.CheckAllowUseSkill_ForbidPlotCharacter
      L5_2 = A0_2._maze_skill_index
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    if L2_2 then
      L3_2 = A0_2._skill_component
      L4_2 = L3_2
      L3_2 = L3_2.CheckAllowUseSkill_Custom
      L5_2 = A0_2._maze_skill_index
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_ban_mark
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetLightWeightActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._skill_component
    L4_2 = L3_2
    L3_2 = L3_2.CheckAllowUseSkill_MapRotation
    L5_2 = A0_2._maze_skill_index
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._skill_component
    L5_2 = L4_2
    L4_2 = L4_2.CheckAllowUseSkill_LockModule
    L6_2 = A0_2._maze_skill_index
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_root
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetInteractable
    L7_2 = L3_2 or L7_2
    if L3_2 then
      L7_2 = L4_2
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._refresh_skill_status = L1_1
function L1_1(A0_2, A1_2, A2_2)
  if A1_2 == nil or A2_2 == nil then
    return
  end
  A0_2._callback_self = A1_2
  A0_2._click_callback = A2_2
end
L0_1.bind_use_maze_skill_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_blocked
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeClickSkillButton
  L3_2 = A0_2._skill_type
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._skill_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureSkillType
  L3_2 = L3_2.NormalAtk
  if L2_2 == L3_2 then
    L2_2 = A0_2._skill_component
    L3_2 = L2_2
    L2_2 = L2_2.CheckAllowUseSkill_MapRotation
    L4_2 = A0_2._maze_skill_index
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.MapRotationUtils
      L2_2 = L2_2.ShowPoseSwitchBanMazeAttackText
      L2_2()
    end
    L2_2 = A0_2._skill_component
    L3_2 = L2_2
    L2_2 = L2_2.CheckAllowUseSkill_LockModule
    L4_2 = A0_2._maze_skill_index
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "MazeText_Maze_GamePlay_GravityRoom_BanAttackandSkill"
      L2_2(L3_2, L4_2)
    end
    L2_2 = L1_2.InputController
    L2_2 = L2_2.InputData
    L4_2 = L1_2
    L3_2 = L1_2.CheckAndUseBtnCommonCD
    L3_2 = L3_2(L4_2)
    L2_2.PressNormalAtkBtn = L3_2
  else
    L2_2 = A0_2._skill_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AdventureSkillType
    L3_2 = L3_2.MazeSkill
    if L2_2 == L3_2 then
      L2_2 = A0_2._skill_component
      if L2_2 ~= nil then
        L2_2 = A0_2._skill_component
        L3_2 = L2_2
        L2_2 = L2_2.IsCurrentSkillFinish
        L2_2 = L2_2(L3_2)
        if L2_2 then
          goto lbl_83
        end
        L2_2 = A0_2._skill_component
        L2_2 = L2_2.UseTypeAheadSkillInput
        if L2_2 then
          goto lbl_83
        end
      end
      do return end
      ::lbl_83::
      L2_2 = A0_2._skill_component
      L3_2 = L2_2
      L2_2 = L2_2.TryGetComboSkillIndex
      L4_2 = A0_2._skill_type
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2._skill_component
      L4_2 = L3_2
      L3_2 = L3_2.CheckAllowUseSkill
      L5_2 = A0_2._maze_skill_index
      L6_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = false
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AdventureSkillCharacterComponent
      L5_2 = L5_2.SkillAllowUseCheckResult
      L5_2 = L5_2.MPNotEnough
      L5_2 = L3_2 == L5_2
      L6_2 = A0_2._skill_config
      L6_2 = L6_2.CanSwitchActiveState
      if L6_2 then
        L6_2 = A0_2._skill_component
        L7_2 = L6_2
        L6_2 = L6_2.CheckSkillActive
        L8_2 = A0_2._maze_skill_index
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L4_2 = true
        end
      end
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.AdventureSkillCharacterComponent
      L6_2 = L6_2.SkillAllowUseCheckResult
      L6_2 = L6_2.Allow
      if L3_2 ~= L6_2 then
        L6_2 = nil
        if not L4_2 and L5_2 then
          L7_2 = G
          L7_2 = L7_2.InventoryUtils
          L7_2 = L7_2.enable_quick_use_func
          L7_2 = L7_2()
          if L7_2 then
            L7_2 = G
            L7_2 = L7_2.UIManager
            L7_2 = L7_2.load_and_async_show
            L8_2 = "Ui.Inventory.ItemUse.MPItemUseDialog"
            L7_2(L8_2)
          else
            L6_2 = "SkillButtonMPNotEnoughTextID"
          end
        end
        if L6_2 ~= nil then
          L7_2 = G
          L7_2 = L7_2.NotifyManager
          L7_2 = L7_2.notify
          L8_2 = G
          L8_2 = L8_2.CS
          L8_2 = L8_2.NotifyType
          L8_2 = L8_2.UIPileToastMessageTextID
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.AdventureSkillCharacterComponent
        L7_2 = L7_2.SkillAllowUseCheckResult
        L7_2 = L7_2.MapRotation
        if L3_2 == L7_2 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.MapRotationUtils
          L7_2 = L7_2.ShowPoseSwitchBanMazeSkillText
          L7_2()
        end
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.AdventureSkillCharacterComponent
        L7_2 = L7_2.SkillAllowUseCheckResult
        L7_2 = L7_2.LockModuleForbid
        if L3_2 == L7_2 then
          L7_2 = G
          L7_2 = L7_2.NotifyManager
          L7_2 = L7_2.notify
          L8_2 = G
          L8_2 = L8_2.CS
          L8_2 = L8_2.NotifyType
          L8_2 = L8_2.UIPileToastMessageTextID
          L9_2 = "MazeText_Maze_GamePlay_GravityRoom_BanAttackandSkill"
          L7_2(L8_2, L9_2)
        end
      end
      L6_2 = A0_2._skill_component
      if L6_2 ~= nil then
        L6_2 = A0_2._skill_component
        L6_2 = L6_2.UseTypeAheadSkillInput
        if L6_2 then
          L6_2 = L1_2.InputController
          L6_2 = L6_2.InputData
          L6_2.PressSkillBtn = true
      end
      else
        L6_2 = L1_2.InputController
        L6_2 = L6_2.InputData
        L8_2 = L1_2
        L7_2 = L1_2.CheckAndUseBtnCommonCD
        L7_2 = L7_2(L8_2)
        L6_2.PressSkillBtn = L7_2
      end
      L6_2 = A0_2._click_callback
      if L6_2 ~= nil then
        L6_2 = A0_2._click_callback
        L7_2 = A0_2._callback_self
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._on_btn_skill_short_down_click = L1_1
return L0_1
