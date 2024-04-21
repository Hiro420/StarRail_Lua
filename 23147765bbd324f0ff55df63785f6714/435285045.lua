local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.Group.ChallengeSelectGroupTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.Group.ChallengeSelectGroupTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.ChallengeSelectUI3DPage"
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
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeSelectPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "ChallengeMaze_World02_MissionFinish_Value"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ChallengeSelectUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_select_ui3d = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._action_queue = nil
end
L1_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._init_group_id = A1_2
  A0_2._init_challenge_id = A2_2
end
L1_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_in_challenge_bgm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_finish_bubble_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._collect_setup_view_actions
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._wait_finish_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_actions
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_environment
  L4_2 = A0_2._on_btn_environment
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cumulative_rewards
  L4_2 = A0_2._on_btn_cumulative_rewards
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_left
  L4_2 = A0_2._on_btn_tab_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_right
  L4_2 = A0_2._on_btn_tab_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_group_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
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
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_action_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._switch_out_challenge_bgm
  L1_2(L2_2)
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.SaveLastMemoryChallengeGroupIDToCache
    L3_2 = A0_2._challenge_group_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
  A0_2._challenge_group_data = nil
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.IsScheduleChallenge
    if L1_2 then
      L1_2 = A0_2._challenge_group_data
      L2_2 = L1_2
      L1_2 = L1_2.IsInSchedule
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = G
        L2_2 = L2_2.SuperDebug
        L2_2 = L2_2.LogErrorFormat
        L3_2 = "\229\189\147\229\137\141\230\183\177\230\184\138\229\136\134\231\187\132\228\184\141\229\156\168\229\188\128\230\148\190\230\151\182\233\151\180\229\134\133\239\188\129\239\188\129"
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.exit
        L2_2(L3_2)
      end
    end
  end
end
L1_1._check_in_schedule = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._challenge_group_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsScheduleChallenge
    if L6_2 then
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
end
L1_1._on_player_daily_refresh = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2.IsScheduleChallenge
  if L3_2 then
    L3_2 = A1_2.ChallengeDatas
    L3_2 = L3_2[0]
    if L3_2 == nil then
      L4_2 = false
      return L4_2
    end
    L5_2 = L3_2
    L4_2 = L3_2.GetOpenResult
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.IsOpen
    if not L5_2 then
      if not A2_2 then
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.create_lua_table_from_cs_array
        L6_2 = L4_2.Params
        L5_2 = L5_2(L6_2)
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.TextmapStatic
        L6_2 = L6_2.GetText
        L7_2 = L4_2.DisableHintTextID
        L8_2 = unpack
        L9_2 = L5_2
        L8_2, L9_2 = L8_2(L9_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = G
        L7_2 = L7_2.NotifyManager
        L7_2 = L7_2.notify
        L8_2 = G
        L8_2 = L8_2.CS
        L8_2 = L8_2.NotifyType
        L8_2 = L8_2.UIPileToastMessageString
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      L5_2 = false
      return L5_2
    end
  end
  L3_2 = true
  return L3_2
end
L1_1._check_group_data_valid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_in_schedule
    L2_2(L3_2)
  end
  L2_2 = A0_2._challenge_select_ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._challenge_select_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.is_loaded
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._challenge_select_ui3d
      L2_2 = L2_2.is_init_finish
      if L2_2 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  if A1_2 then
    L2_2 = A0_2._challenge_select_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_world_map_camera
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.challenge_list_panel
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.challenge_list_panel
      L3_2 = L2_2
      L2_2 = L2_2.move_to_cur_challenge
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._challenge_select_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_detail_camera
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._close_quick_unlock_hint
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._close_remain_time_hint
    L2_2(L3_2)
  end
end
L1_1._on_view_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.show_challenge_environment_info
  L2_2 = A0_2._challenge_group_data
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_environment = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Challenge.Reward.ChallengeRewardPreviewDialog"
  L3_2 = A0_2._challenge_group_data
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_cumulative_rewards = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L1_1._on_btn_tab_left = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L1_1._on_btn_tab_right = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableChallengeGroups
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._challenge_group_data_table = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._challenge_group_data_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.IsScheduleChallenge
    L3_3 = A1_3.IsScheduleChallenge
    if L2_3 ~= L3_3 then
      return L2_3
    end
    if L2_3 then
      L4_3 = A0_3.ID
      L5_3 = A1_3.ID
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L4_3 = A0_3.IsComplete
    L5_3 = A1_3.IsComplete
    if L4_3 ~= L5_3 then
      return L5_3
    end
    L6_3 = A0_3.ID
    L7_3 = A1_3.ID
    L6_3 = L6_3 < L7_3
    return L6_3
  end
  L1_2(L2_2, L3_2)
  A0_2._schedule_group_data_count = 0
  L1_2 = pairs
  L2_2 = A0_2._challenge_group_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsScheduleChallenge
    if L6_2 then
      L6_2 = A0_2._schedule_group_data_count
      L6_2 = L6_2 + 1
      A0_2._schedule_group_data_count = L6_2
    end
  end
end
L1_1._init_group_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
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
    L3_2 = L3_2.node_tab_btn_root
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_default_click_tab_uid
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = A0_2._challenge_group_data_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_tab_item
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L6_2.ID
    L9_2 = A0_2._init_group_id
    if L8_2 == L9_2 then
      L9_2 = L7_2
      L8_2 = L7_2.set_init_challenge_id
      L10_2 = A0_2._init_challenge_id
      L8_2(L9_2, L10_2)
      L1_2 = L5_2
    end
    L9_2 = L7_2
    L8_2 = L7_2.show_btn_splash
    L10_2 = L6_2.IsScheduleChallenge
    if L10_2 then
      L10_2 = A0_2._schedule_group_data_count
      L10_2 = L5_2 == L10_2
    end
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tab_select
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_layout
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = NavigationType
    L4_2 = L4_2.Horizontal
    if L4_2 then
      goto lbl_73
    end
  end
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  ::lbl_73::
  L2_2(L3_2, L4_2)
end
L1_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._schedule_group_data_count
  if 0 < L1_2 then
    L1_2 = A0_2._challenge_group_data_table
    L1_2 = L1_2[1]
    L2_2 = G
    L2_2 = L2_2.ChallengeUtils
    L2_2 = L2_2.is_schedule_challenge_group_valid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = 1
      return L2_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_first_resident_challenge_group_index
  return L1_2(L2_2)
end
L1_1._get_default_click_tab_uid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ChallengeSelectGroupTabItem
  L5_2 = G
  L5_2 = L5_2.ChallengeSelectGroupTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2.IsScheduleChallenge
  if L3_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = 0
  ::lbl_14::
  L2_2.button_prefab_index = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.set_group_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_challenge_info_list_panel
  L5_2 = A0_2._binder
  L5_2 = L5_2.challenge_list_panel
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item_root
  L3_2(L4_2, L5_2)
  return L2_2
end
L1_1._get_tab_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._challenge_group_data_table
  L2_2 = L2_2[A1_2]
  L4_2 = A0_2
  L3_2 = A0_2._check_group_data_valid
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._challenge_group_data
    if L2_2 ~= L3_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  A0_2._challenge_group_data = L2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L6_2 = A0_2
  L5_2 = A0_2.get_first_selected_object
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_top_bar
  L4_2 = L3_2
  L3_2 = L3_2.refresh_navigation
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_finish_bubble_mission
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._close_remain_time_hint
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._close_quick_unlock_hint
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._collect_tab_select_actions
  L3_2(L4_2)
  L3_2 = A0_2._view_set
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._start_actions
    L3_2(L4_2)
  end
end
L1_1._on_tab_select = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._schedule_group_data_count
  if 0 < L1_2 then
    L1_2 = A0_2._challenge_group_data_table
    L1_2 = L1_2[1]
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = nil
  ::lbl_9::
  return L1_2
end
L1_1._get_latest_schedule_challenge_group = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._schedule_group_data_count
  if L1_2 < 2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._challenge_group_data_table
  L1_2 = L1_2[2]
  return L1_2
end
L1_1._get_older_schedule_challenge_group = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._challenge_group_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsScheduleChallenge
    if not L6_2 then
      return L4_2
    end
  end
end
L1_1._get_first_resident_challenge_group_index = L3_1
function L3_1(A0_2)
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
  end
end
L1_1._init_action_queue = L3_1
function L3_1(A0_2)
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
L1_1._dispose_action_queue = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_add_auto_settle_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_tab_add_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_add_schedule_expire_action
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ChallengeActionUtils
  L1_2 = L1_2.sort_action_queue
  L2_2 = A0_2._action_queue
  L1_2(L2_2)
end
L1_1._collect_setup_view_actions = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.ChallengeActionUtils
    L1_2 = L1_2.append_actions
    L2_2 = A0_2._action_queue
    L3_2 = A0_2._tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.get_tab_select_actions
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.ChallengeActionUtils
  L1_2 = L1_2.sort_action_queue
  L2_2 = A0_2._action_queue
  L1_2(L2_2)
end
L1_1._collect_tab_select_actions = L3_1
L3_1 = "5112"
L4_1 = "ChallengeAutoSettleTutorialShowReward"
L5_1 = "ChallengeAutoSettleTutorialSkipReward"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMemoryAutoSettleResult
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.AutoFinishedChallengeIDList
    L2_2 = L2_2 ~= nil
    L3_2 = true
    if L2_2 or L3_2 then
      L4_2 = L0_1
      L5_2 = L4_2
      L4_2 = L4_2.GetChallengeData
      L6_2 = L1_2.CurSettledChallengeID
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2 ~= nil and L5_2
      L7_2 = L5_2
      L6_2 = L5_2.IsInSchedule
      L6_2 = L5_2 ~= nil and L6_2
      L7_2 = L5_2 ~= nil
      if L6_2 then
        L8_2 = A0_2._action_queue
        L9_2 = L8_2
        L8_2 = L8_2.add_action
        L10_2 = G
        L10_2 = L10_2.ChallengeActionUtils
        L10_2 = L10_2.create_dialog_action
        L11_2 = "Ui.Challenge.AutoSettle.ChallengeAutoSettleResultDialog"
        L12_2 = G
        L12_2 = L12_2.ChallengeActionUtils
        L12_2 = L12_2.ActionSortWeightEnum
        L12_2 = L12_2.AutoSettle
        L13_2 = L1_2
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
        if L2_2 then
          L8_2 = G
          L8_2 = L8_2.Utils
          L8_2 = L8_2.create_lua_table_from_cs_list
          L10_2 = L1_2
          L9_2 = L1_2.GetAutoFinishedRewards
          L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          L9_2 = A0_2._action_queue
          L10_2 = L9_2
          L9_2 = L9_2.add_action
          L11_2 = G
          L11_2 = L11_2.ChallengeActionUtils
          L11_2 = L11_2.create_reward_dialog_action
          L12_2 = L8_2
          L13_2 = G
          L13_2 = L13_2.ChallengeActionUtils
          L13_2 = L13_2.ActionSortWeightEnum
          L13_2 = L13_2.AutoSettle
          L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
        if L3_2 then
          L8_2 = A0_2._action_queue
          L9_2 = L8_2
          L8_2 = L8_2.add_action
          L10_2 = G
          L10_2 = L10_2.ChallengeActionUtils
          L10_2 = L10_2.create_immediate_action
          function L11_2()
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
            L0_3 = L7_2
            if L0_3 then
              L0_3 = G
              L0_3 = L0_3.Utils
              L0_3 = L0_3.trigger_custom_string
              L1_3 = L4_1
              L0_3(L1_3)
            else
              L0_3 = G
              L0_3 = L0_3.Utils
              L0_3 = L0_3.trigger_custom_string
              L1_3 = L5_1
              L0_3(L1_3)
            end
          end
          L12_2 = G
          L12_2 = L12_2.ChallengeActionUtils
          L12_2 = L12_2.ActionSortWeightEnum
          L12_2 = L12_2.AutoSettle
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          if L7_2 then
            L8_2 = A0_2._action_queue
            L9_2 = L8_2
            L8_2 = L8_2.add_action
            L10_2 = G
            L10_2 = L10_2.ChallengeActionUtils
            L10_2 = L10_2.create_anim_action
            L11_2 = A0_2._binder
            L11_2 = L11_2.anim_btn_reward_hint
            L12_2 = "RewardPanelHint"
            L13_2 = G
            L13_2 = L13_2.ChallengeActionUtils
            L13_2 = L13_2.ActionSortWeightEnum
            L13_2 = L13_2.AutoSettle
            L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          end
        end
      end
    end
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.ClearAutoSettleResultRecord
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Memory
  L2_2(L3_2, L4_2)
end
L1_1._try_add_auto_settle_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2 or L7_2
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.get_tab_add_actions
      L7_2 = L7_2(L8_2)
    end
    L8_2 = G
    L8_2 = L8_2.ChallengeActionUtils
    L8_2 = L8_2.append_actions
    L9_2 = A0_2._action_queue
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L1_1._try_add_tab_add_action = L6_1
function L6_1(A0_2)
  local L1_2
end
L1_1._try_add_schedule_expire_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.is_doing
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.start_do_action
    L1_2(L2_2)
  end
end
L1_1._start_actions = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_remain_time_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._close_quick_unlock_hint
  L1_2(L2_2)
end
L1_1._on_first_child_dialog_open = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._wait_show_remain_time_hint = false
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.refresh_remain_time_hint
    L7_2(L8_2)
  end
end
L1_1._close_remain_time_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quick_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._close_quick_unlock_hint = L6_1
function L6_1(A0_2, A1_2)
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
L1_1._on_pause_action_queue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._fade_animation
  if L1_2 ~= nil then
    L1_2 = A0_2._fade_animation
    L1_2 = L1_2.EntranceAnimationClip
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  A0_2._fade_in_finish = true
  do return end
  ::lbl_10::
  A0_2._fade_in_finish = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_fade_in_finish
  L4_2 = A0_2._fade_animation
  L4_2 = L4_2.EntranceAnimationClip
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.reset
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.start
  L2_2(L3_2)
end
L1_1._wait_finish_fade_in = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._fade_in_finish = true
end
L1_1._on_fade_in_finish = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._fade_in_finish
  L1_2 = not L1_2
  return L1_2
end
L1_1._not_finish_fade_in = L6_1
function L6_1(A0_2)
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
    L5_2 = "StateChallenge"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._switch_in_challenge_bgm = L6_1
function L6_1(A0_2)
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
    L5_2 = "StateChallenge"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.StopUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._switch_out_challenge_bgm = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.world_mission_finish_value
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = L2_1
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.Value
      if L2_2 ~= nil then
        L2_2 = L1_2.Value
        L2_2 = L2_2.UintValue
        A0_2.world_mission_finish_value = L2_2
      end
    end
  end
  L1_2 = A0_2._challenge_group_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.ID
    L2_2 = A0_2.world_mission_finish_value
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.trigger_custom_string
      L2_2 = "401010701_UIOpen"
      L1_2(L2_2)
    end
  end
end
L1_1._try_finish_bubble_mission = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = A0_2._challenge_group_data
    if L1_2 ~= nil then
      L1_2 = A0_2._challenge_group_data
      L1_2 = L1_2.IsScheduleChallenge
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._on_btn_environment
        L1_2(L2_2)
      end
    end
  end
end
L1_1._on_left_stick_button_click = L6_1
function L6_1(A0_2, A1_2)
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
L1_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_cumulative_rewards_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1._on_enter_special_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cumulative_rewards_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L6_1
return L1_1
