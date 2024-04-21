local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Maze.MazeAction.MazeWolfBroActionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeWolfBroActionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
L2_1 = "MazeChargeSkillBtn_Outline_Add"
L3_1 = "MazeChargeSkillBtn_Outline_Cut"
L4_1 = "MazeChargeSkillBtn_Refresh"
function L5_1(A0_2)
  local L1_2
  A0_2._maze_event_skill_index = 1
  A0_2._maze_action_skill_index = 0
  A0_2._show_bullet = false
  A0_2._cur_bullet_cnt = nil
  A0_2._is_need_refresh_maze_event = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  if not A1_2 then
    A0_2._skill_component = nil
    A0_2._skill_config = nil
  end
end
L0_1.on_enable_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._show_bullet = A1_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._unbind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_maze_event
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.rebind
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._update_maze_action_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_maze_event
    L5_2 = A0_2._on_btn_maze_event_click
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_maze_event
  L4_2 = A0_2._on_btn_maze_event_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_maze_action
  L4_2 = A0_2._on_btn_maze_action_click
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
  L3_2 = L3_2.PuzzleHudWolfBroInBoxShow
  L4_2 = L0_1._on_in_box
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudWolfBroOutBoxHide
  L4_2 = L0_1._on_out_box
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudWolfBroCustomDataChange
  L4_2 = L0_1._on_custom_data_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_maze_action_lock_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tag_maze_action
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AdventureStatic
    L3_2 = L2_2
    L2_2 = L2_2.IsPlayingFakeAvatar
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._skill_component
      if L2_2 == nil then
        L2_2 = A0_2._skill_config
        if L2_2 == nil then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.AdventureStatic
          L2_2 = L2_2.GetLocalPlayer
          L2_2 = L2_2()
          L3_2 = L2_2 or L3_2
          if L2_2 then
            L4_2 = L2_2
            L3_2 = L2_2.GetComponent
            L5_2 = typeof
            L6_2 = CS
            L6_2 = L6_2.RPG
            L6_2 = L6_2.GameCore
            L6_2 = L6_2.AdventureSkillCharacterComponent
            L5_2, L6_2 = L5_2(L6_2)
            L3_2 = L3_2(L4_2, L5_2, L6_2)
          end
          A0_2._skill_component = L3_2
          L3_2 = A0_2._skill_component
          L4_2 = L3_2
          L3_2 = L3_2.GetSkillConfigByIndex
          L5_2 = A0_2._maze_event_skill_index
          L3_2 = L3_2(L4_2, L5_2)
          A0_2._skill_config = L3_2
        end
      end
      L2_2 = A0_2._skill_component
      if L2_2 then
        L2_2 = A0_2._skill_config
        if L2_2 then
          L2_2 = A0_2._skill_component
          L3_2 = L2_2
          L2_2 = L2_2.GetSkillCDRemained
          L4_2 = A0_2._maze_event_skill_index
          L2_2 = L2_2(L3_2, L4_2)
          if 0 < L2_2 then
            L3_2 = A0_2
            L2_2 = A0_2._update_btn_maze_event_cd
            L2_2(L3_2)
          else
            L3_2 = A0_2
            L2_2 = A0_2._exit_btn_maze_event_cd
            L2_2(L3_2)
          end
        end
      end
    end
  end
end
L0_1._on_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_maze_event_count_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.1f"
  L4_2 = A0_2._skill_component
  L5_2 = L4_2
  L4_2 = L4_2.GetSkillCDRemained
  L6_2 = A0_2._maze_event_skill_index
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cd_maze_event
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = tostring
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_maze_event
  L3_2 = A0_2._skill_config
  L3_2 = L3_2.CoolDown
  L3_2 = L1_2 / L3_2
  L2_2.value = L3_2
  A0_2._is_need_refresh_maze_event = true
end
L0_1._update_btn_maze_event_cd = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_maze_event_count_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_need_refresh_maze_event
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_maze_event_refresh
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    A0_2._is_need_refresh_maze_event = false
  end
end
L0_1._exit_btn_maze_event_cd = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.InputController
  L2_2 = L2_2.InputData
  L2_2.PressSkillBtn = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L2_2 = L2_2.GetLocalPlayer
  L2_2 = L2_2()
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureCharacterController
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.CharacterInput
    L4_2.TriggerSkill = true
  end
end
L0_1._on_btn_maze_event_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetLocalPlayer
  L1_2 = L1_2()
  L2_2 = L1_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoWolfBroCustomData
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._skill_component
  if L3_2 == nil then
    return
  end
  L3_2 = L2_2.isBulletActivated
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "MazeText_MazePuzzle_WolfBro_LockSkill1"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L2_2.bulletCnt
  if L3_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "MazeText_MazePuzzle_WolfBro_NoAmmo"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._skill_component
  L5_2 = L4_2
  L4_2 = L4_2.GetSkillCDRemained
  L6_2 = A0_2._maze_action_skill_index
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 <= 0 then
    L4_2 = L3_2.InputController
    L4_2 = L4_2.InputData
    L6_2 = L3_2
    L5_2 = L3_2.CheckAndUseBtnCommonCD
    L5_2 = L5_2(L6_2)
    L4_2.PressNormalAtkBtn = L5_2
  end
end
L0_1._on_btn_maze_action_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_rush_view
  L2_2(L3_2)
end
L0_1._on_refresh_player_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_maze_action
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.InputController
  L3_2.IsForbidRush = true
  L4_2 = A0_2
  L3_2 = A0_2._refresh_rush_view
  L3_2(L4_2)
end
L0_1._on_in_box = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_maze_action
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._show_bullet
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.InputController
  L3_2.IsForbidRush = false
  L4_2 = A0_2
  L3_2 = A0_2._refresh_rush_view
  L3_2(L4_2)
end
L0_1._on_out_box = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._update_maze_action_view
  L2_2(L3_2)
end
L0_1._on_custom_data_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetLocalPlayer
  L1_2 = L1_2()
  L2_2 = L1_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoWolfBroCustomData
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.isBulletActivated
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_lock_maze_action
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = L2_2.bulletCnt
      L4_2 = A0_2._cur_bullet_cnt
      if L3_2 > L4_2 then
        L3_2 = A0_2._cur_bullet_cnt
        L3_2 = L3_2 + 1
        L4_2 = L2_2.bulletCnt
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L8_2 = A0_2
          L7_2 = A0_2._try_play_animation
          L9_2 = L6_2
          L10_2 = L2_1
          L7_2(L8_2, L9_2, L10_2)
        end
      else
        L3_2 = L2_2.bulletCnt
        L4_2 = A0_2._cur_bullet_cnt
        if L3_2 < L4_2 then
          L3_2 = L1_1
          L4_2 = A0_2._cur_bullet_cnt
          L4_2 = L4_2 + 1
          L5_2 = -1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.Client
            L7_2 = L7_2.UIAnimationUtils
            L7_2 = L7_2.PlayFromEnd
            L8_2 = A0_2._binder
            L8_2 = L8_2.animation_bullet_list
            L8_2 = L8_2[L6_2]
            L9_2 = L3_1
            L7_2(L8_2, L9_2)
          end
          L4_2 = A0_2
          L3_2 = A0_2._try_play_animation
          L5_2 = A0_2._cur_bullet_cnt
          L6_2 = L3_1
          L3_2(L4_2, L5_2, L6_2)
        end
      end
      L3_2 = L2_2.bulletCnt
      A0_2._cur_bullet_cnt = L3_2
    else
      L4_2 = A0_2
      L3_2 = A0_2._setup_node_maze_action_lock_state
      L3_2(L4_2)
    end
  end
end
L0_1._update_maze_action_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_bullet_list
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_bullet_list
    L3_2 = L3_2[A1_2]
    L4_2 = L3_2
    L3_2 = L3_2.Stop
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_bullet_list
    L3_2 = L3_2[A1_2]
    L4_2 = L3_2
    L3_2 = L3_2.Rewind
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation_bullet_list
    L4_2 = L4_2[A1_2]
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_play_animation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_maze_action
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromEnd
    L6_2 = A0_2._binder
    L6_2 = L6_2.animation_bullet_list
    L6_2 = L6_2[L4_2]
    L7_2 = L3_1
    L5_2(L6_2, L7_2)
  end
  A0_2._cur_bullet_cnt = 0
end
L0_1._setup_node_maze_action_lock_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rush_btn
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._refresh_rush_view = L5_1
return L0_1
