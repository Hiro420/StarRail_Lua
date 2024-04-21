local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeSkillPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = 9904
L3_1 = 9905
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "NPC_Interact_LockInput_Delay_Time"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.FloatValue
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.GameModeType
L6_1 = L6_1.Client
L5_1[L6_1] = true
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.GameModeType
L6_1 = L6_1.RogueAeonRoom
L5_1[L6_1] = true
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.GameModeType
L6_1 = L6_1.Train
L5_1[L6_1] = true
L6_1 = {}
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.GameModeType
L7_1 = L7_1.AetherDivide
L6_1[L7_1] = true
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.GameModeType
L8_1 = L8_1.AetherDivide
L7_1[L8_1] = true
function L8_1(A0_2)
  local L1_2
  A0_2._unlock_attack = false
  A0_2._unlock_skill = false
  A0_2._is_attack_blocked_by_hud_template = false
  A0_2._is_skill_blocked_by_hud_template = false
  A0_2._action_hidden = false
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnlockFuncUnlockData
  L4_2 = A0_2._on_unlock_func_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkEnd
  L4_2 = A0_2._on_talk_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshAdventurePlayerList
  L4_2 = L0_1._on_refresh_player_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnShow
  L4_2 = A0_2._on_show_maze_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnHide
  L4_2 = A0_2._on_hide_maze_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowActionArea
  L4_2 = A0_2._on_show_action_area
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._maze_event_types = L1_2
  L1_2 = {}
  A0_2._types_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_protect_end
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._attack_protect_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_attack_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureSkillType
  L3_2 = L3_2.NormalAtk
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_skill_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureSkillType
  L3_2 = L3_2.MazeSkill
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_skill_btn
  L2_2 = L1_2
  L1_2 = L1_2.bind_use_maze_skill_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_use_maze_skill
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_mp
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.try_show_role_trial_eff
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = "MazeSkillPanel_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnlockFuncUnlockData
  L4_2 = A0_2._on_unlock_func_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkEnd
  L4_2 = A0_2._on_talk_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshAdventurePlayerList
  L4_2 = L0_1._on_refresh_player_list
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = "MazeSkillPanel_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_in = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = "MazeSkillPanel_FadeOut"
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_out = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._maze_event_types
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_maze_event
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.MazeEventPanel
    L5_2 = G
    L5_2 = L5_2.MazeEventPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_maze_event = L2_2
    L2_2 = A0_2._panel_maze_event
    L3_2 = L2_2
    L2_2 = L2_2.async_bind_with_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_maze_event
    L5_2 = A0_2
    L6_2 = A0_2._update_maze_event
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._panel_maze_event
    L3_2 = L2_2
    L2_2 = L2_2.is_loaded
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._update_maze_event
      L2_2(L3_2)
    end
  end
end
L0_1._on_show_maze_event = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_maze_event
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_maze_event
    L2_2 = L1_2
    L1_2 = L1_2.update_types
    L3_2 = A0_2._maze_event_types
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_maze_event = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._maze_event_types
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.FuncType
    L8_2 = A1_2.FuncType
    if L7_2 == L8_2 then
      L7_2 = A1_2.CustomEvent
      if L7_2 ~= nil then
        L7_2 = L6_2.CustomEvent
        L8_2 = A1_2.CustomEvent
        if L7_2 ~= L8_2 then
          goto lbl_29
        end
      end
      L7_2 = A0_2._panel_maze_event
      if L7_2 ~= nil then
        L7_2 = A0_2._panel_maze_event
        L8_2 = L7_2
        L7_2 = L7_2.try_clear_trace_puzzle_func_param
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._maze_event_types
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
    ::lbl_29::
  end
  L2_2 = A0_2._panel_maze_event
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_maze_event
    L3_2 = L2_2
    L2_2 = L2_2.is_loaded
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._update_maze_event
      L2_2(L3_2)
    end
  end
end
L0_1._on_hide_maze_event = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._action_hidden
  L3_2 = not A1_2
  L2_2 = L2_2 ~= L3_2
  if not L2_2 then
    return
  end
  L3_2 = not A1_2
  A0_2._action_hidden = L3_2
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._play_fade_in
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._play_fade_out
    L3_2(L4_2)
  end
end
L0_1._on_show_action_area = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_attack_view
  L1_2(L2_2)
end
L0_1._refresh_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._unlock_attack
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ConditionPrepared
    L3_2 = L3_1
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2
    L1_2 = L1_2.ThenLuaAction
    function L3_2()
      local L0_3, L1_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.SystemOpenModule
      L0_3 = L0_3.IsOpen
      L1_3 = L3_1
      L0_3 = L0_3(L1_3)
      A0_2._unlock_attack = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_atk_btn_status
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_atk_btn_status
    L1_2(L2_2)
  end
  L1_2 = A0_2._unlock_skill
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ConditionPrepared
    L3_2 = L2_1
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2
    L1_2 = L1_2.ThenLuaAction
    function L3_2()
      local L0_3, L1_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.SystemOpenModule
      L0_3 = L0_3.IsOpen
      L1_3 = L2_1
      L0_3 = L0_3(L1_3)
      A0_2._unlock_skill = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_skill_btn_status
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_skill_btn_status
    L1_2(L2_2)
  end
end
L0_1._refresh_all_attack_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_attack_btn
  L1_2 = L1_2.has_skill
  L2_2 = A0_2._unlock_attack
  L2_2 = L1_2 or L2_2
  if L2_2 and L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_all_attack_diabled
    L2_2 = L2_2(L3_2)
    L2_2 = A0_2._is_attack_blocked_by_hud_template
    L2_2 = not L2_2 and L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_attack_btn
  L4_2 = L3_2
  L3_2 = L3_2.set_light_weight_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_atk_btn_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_skill_btn
  L1_2 = L1_2.has_skill
  L2_2 = A0_2._is_skill_blocked_by_hud_template
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_skill_btn
  L4_2 = L3_2
  L3_2 = L3_2.set_light_weight_active
  L5_2 = A0_2._unlock_skill
  L5_2 = L1_2 or L5_2
  if L5_2 and L1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_all_attack_diabled
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._is_skill_disabled
    L5_2 = L5_2(L6_2)
    L5_2 = not L5_2 and L5_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_mp
  L4_2 = L3_2
  L3_2 = L3_2.set_light_weight_active
  L5_2 = A0_2._unlock_skill
  L5_2 = L1_2 or L5_2
  if L5_2 and L1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_all_attack_diabled
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._is_mp_disabled
    L5_2 = L5_2(L6_2)
    L5_2 = not L5_2 and L5_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._unlock_skill
  L3_2 = L1_2 or L3_2
  if L3_2 and L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_all_attack_diabled
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._is_mp_disabled
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2 and L3_2
  end
  A0_2.skill_btn_active = L3_2
end
L0_1._refresh_skill_btn_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = L5_1[L1_2]
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Town
  if L1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GameCoreConfigManager
    L2_2 = L2_2.MazeConfig
    L2_2 = L2_2.IsShowSKillPanelInTown
    L2_2 = not L2_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_all_attack_diabled = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = L6_1[L1_2]
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_skill_disabled = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = L7_1[L1_2]
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_mp_disabled = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_mp
    L3_2 = L2_2
    L2_2 = L2_2.play_mp_insufficient
    L2_2(L3_2)
  end
end
L0_1._on_use_maze_skill = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._block_attack
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._attack_protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._attack_protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_talk_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._attack_protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._attack_protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._block_attack
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_protect_end = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_attack_btn
  L3_2 = L2_2
  L2_2 = L2_2.block
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_skill_btn
  L3_2 = L2_2
  L2_2 = L2_2.block
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._block_attack = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_mp
  L2_2 = L1_2
  L1_2 = L1_2.on_top_page
  L1_2(L2_2)
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_all_attack_view
  L2_2(L3_2)
end
L0_1._on_unlock_func_data = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_attack_btn
  L3_2 = L2_2
  L2_2 = L2_2.refresh_player_list
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_skill_btn
  L3_2 = L2_2
  L2_2 = L2_2.refresh_player_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_rush_view
  L2_2(L3_2)
end
L0_1._on_refresh_player_list = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Attack
  if A2_2 == L3_2 then
    A0_2._is_attack_blocked_by_hud_template = A1_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_all_attack_view
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HudType
    L3_2 = L3_2.Skill
    if A2_2 == L3_2 then
      A0_2._is_skill_blocked_by_hud_template = A1_2
      L4_2 = A0_2
      L3_2 = A0_2._refresh_all_attack_view
      L3_2(L4_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HudType
      L3_2 = L3_2.Run
      if A2_2 == L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.panel_rush_btn
        L4_2 = L3_2
        L3_2 = L3_2.set_hud_template
        L5_2 = A1_2
        L6_2 = A2_2
        L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.HudType
        L3_2 = L3_2.ActionNormal
        if A2_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.safe_set_active
          L5_2 = not A1_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1.set_hud_template = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rush_btn
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._refresh_rush_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RoleTrialModule
  L1_2 = L1_2.IsInTrial
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.RoleTrialModule
    L2_2 = L2_2.RoleTrialInstance
    L2_2 = L2_2.Row
    L2_2 = L2_2.EnableMazeSkillEffect
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_skill_btn
    L4_2 = L3_2
    L3_2 = L3_2.set_loop_eff_enabled
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.try_show_role_trial_eff = L8_1
return L0_1
