local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryThemePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryThemePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryGroupTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryGroupTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChallengeModule
L2_1 = 5091
L3_1 = "5091"
L4_1 = 5097
L5_1 = "5097"
L6_1 = 5098
L7_1 = "MaxLevel"
L8_1 = "5098"
L9_1 = 5113
L10_1 = "5113"
L11_1 = "ChallengeAutoSettleTutorialShowReward"
L12_1 = "ChallengeAutoSettleTutorialSkipReward"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeStoryMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._action_queue = nil
  L1_2 = {}
  A0_2.theme_panel_list = L1_2
end
L0_1.ctor = L13_1
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.is_to_buff_page
  if L1_2 then
    L1_2 = "ChallengeStory_MainPageFromTipDialog"
    return L1_2
  else
    L1_2 = A0_2.is_to_team_page
    if L1_2 then
      L1_2 = "ChallengeStory_MainPageFromTeamPage"
      return L1_2
    else
      L1_2 = "ChallengeStoryMainPage_FadeIn"
      return L1_2
    end
  end
end
L0_1.get_custom_fade_in_anim_name = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Name
  if L2_2 == "ChallengeStoryEnvironmentInfoPage" then
    A0_2.is_to_buff_page = true
    L2_2 = "ChallengeStory_MainPageToTipDialog"
    return L2_2
  else
    L2_2 = A0_2.is_to_team_page
    if L2_2 then
      L2_2 = "ChallengeStory_MainPageToTeamPage"
      return L2_2
    else
      L2_2 = "ChallengeStoryMainPage_FadeOut"
      return L2_2
    end
  end
end
L0_1.get_custom_fade_out_anim_name = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_action_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._switch_out_challenge_bgm
  L1_2(L2_2)
  L1_2 = A0_2.group_data
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SaveLastStoryChallengeGroupIDToCache
    L3_2 = A0_2.group_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
  A0_2.group_data = nil
end
L0_1._on_dispose = L13_1
function L13_1(A0_2, A1_2)
  A0_2._init_group_id = A1_2
end
L0_1.init = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2.is_to_team_page = false
  A0_2.is_to_buff_page = false
end
L0_1._on_return_to_top = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_theme_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  if L1_2 == 1 then
    return
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.select_prev
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._select_prev = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  L2_2 = A0_2.data
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    return
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.select_next
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._select_next = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_cumulative_rewards_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_enter_special_zoom = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cumulative_rewards_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "ChallengeStoryDetailPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "ChallengeStoryEnvironmentInfoPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_rewards
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select_left
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_select_left
    L4_2 = A0_2._select_prev
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_select_right
    L4_2 = A0_2._select_next
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPauseLuaActionQueue
  L4_2 = A0_2._on_pause_action_queue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_group_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_tab
  L1_2(L2_2)
  L1_2 = A0_2.data
  L1_2 = #L1_2
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_tab_area
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.is_exit = true
  L2_2 = A0_2
  L1_2 = A0_2.set_transition_style
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.TransitionStyle_AboveAndBelowBlack
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.IsInSchedule
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.exit
      L6_2(L7_2)
    end
  end
end
L0_1._on_player_daily_refresh = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_in_challenge_bgm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._common_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_transition_style
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.TransitionStyle_Default
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = "StateChallengeStory"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._switch_in_challenge_bgm = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = "StateChallengeStory"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.StopUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._switch_out_challenge_bgm = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ActionQueue
    L1_2 = L1_2(L2_2)
    A0_2._action_queue = L1_2
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  else
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
end
L0_1._init_action_queue = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._action_queue = nil
  end
end
L0_1._dispose_action_queue = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    return
  end
  if A1_2 then
    L2_2 = A0_2._action_queue
    L3_2 = L2_2
    L2_2 = L2_2.pause_queue
    L2_2(L3_2)
  else
    L2_2 = A0_2._action_queue
    L3_2 = L2_2
    L2_2 = L2_2.recover_queue
    L2_2(L3_2)
  end
end
L0_1._on_pause_action_queue = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_add_auto_settle_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_schedule_remain_time_action
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ChallengeActionUtils
  L1_2 = L1_2.sort_action_queue
  L2_2 = A0_2._action_queue
  L1_2(L2_2)
end
L0_1._collect_setup_view_actions = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_add_system_tutorial_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_schedule_refresh_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_quick_unlock_action
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ChallengeActionUtils
  L1_2 = L1_2.sort_action_queue
  L2_2 = A0_2._action_queue
  L1_2(L2_2)
end
L0_1._collect_tab_select_actions = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.system_tutorial_added
  if L1_2 then
    return
  end
  A0_2.system_tutorial_added = true
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.add_action
  L3_2 = G
  L3_2 = L3_2.ChallengeActionUtils
  L3_2 = L3_2.create_immediate_action
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L3_1
    L0_3(L1_3, L2_3)
  end
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.ActionSortWeightEnum
  L5_2 = L5_2.ScheduleUnlock
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._try_add_system_tutorial_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2.group_data
    if L1_2 ~= nil then
      L1_2 = A0_2.group_data
      L1_2 = L1_2.IsScheduleChallenge
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAutoSettleResult
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Story
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.AutoFinishedChallengeIDList
    L2_2 = L2_2 ~= nil
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetChallengeData
    L5_2 = L1_2.CurSettledChallengeID
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2 ~= nil and L4_2
    L6_2 = L4_2
    L5_2 = L4_2.IsInSchedule
    L5_2 = L4_2 ~= nil and L5_2
    L6_2 = L4_2 ~= nil
    if L5_2 then
      L7_2 = A0_2._action_queue
      L8_2 = L7_2
      L7_2 = L7_2.add_action
      L9_2 = G
      L9_2 = L9_2.ChallengeActionUtils
      L9_2 = L9_2.create_dialog_action
      L10_2 = "Ui.Challenge.AutoSettle.ChallengeAutoSettleResultDialog"
      L11_2 = G
      L11_2 = L11_2.ChallengeActionUtils
      L11_2 = L11_2.ActionSortWeightEnum
      L11_2 = L11_2.AutoSettle
      L12_2 = L1_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      if L2_2 then
        L7_2 = G
        L7_2 = L7_2.Utils
        L7_2 = L7_2.create_lua_table_from_cs_list
        L9_2 = L1_2
        L8_2 = L1_2.GetAutoFinishedRewards
        L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = A0_2._action_queue
        L9_2 = L8_2
        L8_2 = L8_2.add_action
        L10_2 = G
        L10_2 = L10_2.ChallengeActionUtils
        L10_2 = L10_2.create_reward_dialog_action
        L11_2 = L7_2
        L12_2 = G
        L12_2 = L12_2.ChallengeActionUtils
        L12_2 = L12_2.ActionSortWeightEnum
        L12_2 = L12_2.AutoSettle
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = A0_2
      L7_2 = A0_2._try_add_auto_settle_tutorial_action
      L9_2 = not L6_2
      L7_2(L8_2, L9_2)
      if L6_2 then
        L7_2 = A0_2._action_queue
        L8_2 = L7_2
        L7_2 = L7_2.add_action
        L9_2 = G
        L9_2 = L9_2.ChallengeActionUtils
        L9_2 = L9_2.create_anim_action
        L10_2 = A0_2._binder
        L10_2 = L10_2.anim_btn_reward_hint
        L11_2 = "RewardPanelHint"
        L12_2 = G
        L12_2 = L12_2.ChallengeActionUtils
        L12_2 = L12_2.ActionSortWeightEnum
        L12_2 = L12_2.AutoSettle
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.ClearAutoSettleResultRecord
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Story
  L2_2(L3_2, L4_2)
end
L0_1._try_add_auto_settle_action = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L10_1
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    if L0_3 then
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.trigger_custom_string
      L1_3 = L12_1
      L0_3(L1_3)
    else
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.trigger_custom_string
      L1_3 = L11_1
      L0_3(L1_3)
    end
  end
  L6_2 = G
  L6_2 = L6_2.ChallengeActionUtils
  L6_2 = L6_2.ActionSortWeightEnum
  L6_2 = L6_2.AutoSettle
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._try_add_auto_settle_tutorial_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.time_limited_tab
  if L1_2 ~= nil then
    L1_2 = A0_2.old_last_challenge_group_id
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLatestScheduleChallengeGroupDataByGroupType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Story
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SeenBuffScheduleChallengeGroupIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = L1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2.time_limited_tab
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2.time_limited_tab
    L1_3 = L0_3
    L0_3 = L0_3.play_time_limited_anim
    L0_3(L1_3)
  end
  L7_2 = G
  L7_2 = L7_2.ChallengeActionUtils
  L7_2 = L7_2.ActionSortWeightEnum
  L7_2 = L7_2.ScheduleExpire
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._try_add_schedule_remain_time_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2.group_data
    if L1_2 ~= nil then
      L1_2 = A0_2.group_data
      L1_2 = L1_2.IsScheduleChallenge
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SeenBuffScheduleChallengeGroupIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2.group_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_dialog_action
  L5_2 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialog"
  L6_2 = G
  L6_2 = L6_2.ChallengeActionUtils
  L6_2 = L6_2.ActionSortWeightEnum
  L6_2 = L6_2.ScheduleRefresh
  L7_2 = A0_2.group_data
  L8_2 = true
  L9_2 = false
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2.group_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.Prefs
    L0_3 = L0_3.User
    L0_3 = L0_3.SeenBuffScheduleChallengeGroupIDs
    L1_3 = L0_3
    L0_3 = L0_3.Contains
    L2_3 = L2_2
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.User
      L0_3 = L0_3.SeenBuffScheduleChallengeGroupIDs
      L1_3 = L0_3
      L0_3 = L0_3.Add
      L2_3 = L2_2
      L0_3(L1_3, L2_3)
    end
  end
  L7_2 = G
  L7_2 = L7_2.ChallengeActionUtils
  L7_2 = L7_2.ActionSortWeightEnum
  L7_2 = L7_2.ScheduleRefresh
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._try_add_schedule_refresh_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2.group_data
    if L1_2 ~= nil then
      L1_2 = A0_2.group_data
      L1_2 = L1_2.IsScheduleChallenge
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2.group_data
  L1_2 = L1_2.ChallengeDatas
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetChallengeHistoryMaxLevelByType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Story
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChallengeUtils
  L3_2 = L3_2.GetAutoSettleMaxLevelByGroupType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Story
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L2_2
  L6_2 = L1_2.Count
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 <= 1 then
    return
  end
  L5_2 = A0_2.group_data
  L5_2 = L5_2.LastAutoUnlockProgress
  L5_2 = L4_2 <= L5_2
  if L5_2 then
    return
  end
  L6_2 = A0_2.group_data
  L6_2 = L6_2.LastAutoUnlockProgress
  L7_2 = A0_2.group_data
  L7_2.LastAutoUnlockProgress = L4_2
  L7_2 = L4_2 - 1
  L7_2 = L1_2[L7_2]
  L8_2 = L7_2 ~= nil and L8_2
  if L8_2 then
    return
  end
  L10_2 = A0_2
  L9_2 = A0_2._try_add_quick_unlock_image_tutorial_action
  L9_2(L10_2)
  L10_2 = A0_2
  L9_2 = A0_2._try_add_quick_unlock_description_anim_action
  L11_2 = L4_2
  L12_2 = L2_2
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2._try_add_quick_unlock_operation_tutorial_action
  L11_2 = L4_2
  L9_2(L10_2, L11_2)
end
L0_1._try_add_quick_unlock_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.add_action
  L3_2 = G
  L3_2 = L3_2.ChallengeActionUtils
  L3_2 = L3_2.create_immediate_action
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L5_1
    L0_3(L1_3, L2_3)
  end
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.ActionSortWeightEnum
  L5_2 = L5_2.AutoUnlockTutorial
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._try_add_quick_unlock_image_tutorial_action = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._action_queue
  L4_2 = L3_2
  L3_2 = L3_2.add_action
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_quick_unlock
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.text_quick_unlock
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetTextID
    L2_3 = "UIText_Challenge_Inherit_Description"
    L3_3 = G
    L3_3 = L3_3.MathUtils
    L3_3 = L3_3.add_zero_front_num
    L4_3 = 2
    L5_3 = A1_2
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = G
    L4_3 = L4_3.MathUtils
    L4_3 = L4_3.add_zero_front_num
    L5_3 = 2
    L6_3 = A2_2
    L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_quick_unlock
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "QuickUnlockHintPanel"
    L0_3(L1_3, L2_3)
  end
  L7_2 = G
  L7_2 = L7_2.ChallengeActionUtils
  L7_2 = L7_2.ActionSortWeightEnum
  L7_2 = L7_2.AutoUnlock
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._try_add_quick_unlock_description_anim_action = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.current_theme_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_set_tutorial_node
  L4_2 = A1_2
  L5_2 = L7_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_wait_second_action
  L5_2 = 2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L8_1
    L0_3(L1_3, L2_3)
  end
  L7_2 = nil
  L8_2 = G
  L8_2 = L8_2.ChallengeActionUtils
  L8_2 = L8_2.ActionSortWeightEnum
  L8_2 = L8_2.AutoUnlock
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._try_add_quick_unlock_operation_tutorial_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  L1_2 = L1_2._is_doing
  if L1_2 == false then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.start_do_action
    L1_2(L2_2)
  end
end
L0_1._start_actions = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._collect_tab_select_actions
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_actions
  L1_2(L2_2)
end
L0_1.try_play_tab_select_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._collect_setup_view_actions
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_actions
  L1_2(L2_2)
end
L0_1.try_play_setup_view_action = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._init_group_id
    L7_2 = A0_2.data
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.ID
    if L6_2 == L7_2 then
      L1_2 = L5_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_action_queue
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.try_play_setup_view_action
  L2_2(L3_2)
end
L0_1._common_setup_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableStoryGroupData
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2.data = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.data
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.get_theme_panel
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2.data
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ScheduleData
    L2_3 = L2_3.BeginTimeStamp
    L3_3 = A1_3.ScheduleData
    L3_3 = L3_3.BeginTimeStamp
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._init_group_id
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_default_select_group_id
    L2_2 = L2_2(L3_2)
    A0_2._init_group_id = L2_2
  end
end
L0_1.init_group_data = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SeenBuffScheduleChallengeGroupIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2.data
  L3_2 = L3_2[1]
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = A0_2.data
    L2_2 = L2_2[1]
    L2_2 = L2_2.ID
    return L2_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLastStoryChallengeGroupIDFromCache
  L2_2 = L2_2(L3_2)
  if L2_2 ~= 0 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetChallengeGroupData
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.IsAvailable
      L4_2 = L4_2(L5_2)
      if L4_2 then
        return L2_2
      end
    end
  end
  L3_2 = A0_2.data
  L3_2 = L3_2[1]
  return L3_2
end
L0_1._get_default_select_group_id = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_group_tab
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLastStoryChallengeGroupID
  L1_2 = L1_2(L2_2)
  A0_2.old_last_challenge_group_id = L1_2
  L1_2 = 1
  L2_2 = A0_2.data
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._init_group_tab
    L7_2 = A0_2.data
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1.init_tab = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ChallengeStoryGroupTabItem
  L5_2 = G
  L5_2 = L5_2.ChallengeStoryGroupTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_select_callback
  L5_2 = A0_2._on_select_tab
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2.ID
  L4_2 = A0_2.old_last_challenge_group_id
  L3_2 = L3_2 == L4_2
  L5_2 = L2_2
  L4_2 = L2_2.setup_group_data
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  if L3_2 then
    A0_2.time_limited_tab = L2_2
  end
end
L0_1._init_group_tab = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.group_data = A1_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeRefreshUIRedDot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_theme_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_main_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_quick_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.try_play_tab_select_action
  L2_2(L3_2)
end
L0_1._on_select_tab = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_detail_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rewards_info
  L1_2(L2_2)
end
L0_1.refresh_main_panel = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_theme_panel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_click_callback
  L5_2 = A0_2.on_click_level
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.current_theme_panel
  if L3_2 ~= nil then
    L3_2 = A0_2.current_theme_panel
    if L3_2 ~= L2_2 then
      L3_2 = A0_2.current_theme_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.clear_animation_state
  L3_2(L4_2)
  A0_2.current_theme_panel = L2_2
end
L0_1.setup_theme_panel = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.theme_panel_list
  L3_2 = A1_2.ID
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L3_2 = A0_2.load_index
    if not L3_2 then
      L3_2 = 1
    end
    A0_2.load_index = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.sync_load_prefab
    L5_2 = A1_2.StoryThemeConfigRow
    L5_2 = L5_2.ThemePanelPrefabPath
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_theme_panel
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = "ChallengeStoryThemePanel"
    L5_2 = A0_2.load_index
    L4_2 = L4_2 .. L5_2
    L3_2.name = L4_2
    L4_2 = A0_2.load_index
    L4_2 = L4_2 + 1
    A0_2.load_index = L4_2
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.ChallengeStoryThemePanel
    L7_2 = G
    L7_2 = L7_2.ChallengeStoryThemePanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2 = L4_2
    L5_2 = L2_2
    L4_2 = L2_2.bind
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = L2_2
    L4_2 = L2_2.safe_set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.theme_panel_list
    L5_2 = A1_2.ID
    L4_2[L5_2] = L2_2
  end
  return L2_2
end
L0_1.get_theme_panel = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2.is_to_team_page = true
end
L0_1.on_click_level = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_schedule_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_detail_info = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.data
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.ID
    if L6_2 ~= A1_2 then
      L6_2 = A0_2.data
      L6_2 = L6_2[L5_2]
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_other_group = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogErrorFormat
  L2_2 = "\229\189\147\229\137\141\230\183\177\230\184\138\229\136\134\231\187\132\229\183\178\232\191\135\230\156\159\239\188\129\239\188\129"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current_star_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.group_data
  L3_2 = L3_2.CurrentStarCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_star_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.group_data
  L3_2 = L3_2.TotalStarCount
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChallengeMazeReward"
  L4_2 = A0_2.group_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_cumulative_rewards
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh_rewards_info = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Challenge.Reward.ChallengeRewardPreviewDialog"
  L3_2 = A0_2.group_data
  L4_2 = "UIText_ChallengeStory_Reward_LevelStar"
  L5_2 = "UIText_ChallengeStory_Reward_LevelClear"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_rewards = L13_1
return L0_1
