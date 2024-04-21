local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.FightActivityTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityTaskProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityTaskProgressPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_ActivityFight_ChallengeRequirement"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AdventureStatic
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.FightActivityUtils
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.LevelDifficulty
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.FightActivityModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.FightActivityUtils
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "FightActivityDetailPage"
L8_1 = G
L8_1 = L8_1.BasePage
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FightActivityDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._task_progress_panel = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_setup = false
  A0_2._group_row = A1_2
  L3_2 = A0_2._group_row
  L3_2 = L3_2.ActivityFightGroupID
  A0_2._group_id = L3_2
  L3_2 = L5_1.GetTrialAvatarDataByGroupID
  L4_2 = A0_2._group_id
  L3_2 = L3_2(L4_2)
  A0_2._trial_avatar_data = L3_2
  A0_2._fight_rows = nil
  A0_2._stage_rows = nil
  A0_2._schedule_data = nil
  A0_2._monster_lists = nil
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_from_activity_panel = L3_2
  L3_2 = {}
  A0_2._team_avatars = L3_2
  L3_2 = {}
  A0_2._selected_avatars = L3_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.FightActivityTeamInfoProvider
  L5_2 = A0_2._team_avatars
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._team_info_provider = L3_2
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.GetFightActivityGroupInfo
  L5_2 = A0_2._group_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._group_info = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.FightActivityDiffculty
  A0_2._difficulty_level = L3_2
  L3_2 = A0_2._difficulty_level
  if L3_2 == 3 then
    L3_2 = A0_2._group_info
    L3_2 = L3_2.PassedMaxDifficultyLevel
    if L3_2 < 2 then
      A0_2._difficulty_level = 2
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.FightActivityChallengeRecord
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A0_2._group_id
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.FightActivityChallengeRecord
    L4_2 = A0_2._group_id
    L3_2 = L3_2[L4_2]
    L4_2 = 0
    L5_2 = 3
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      if L8_2 == 0 then
        L8_2 = A0_2._selected_avatars
        L9_2 = L7_2 + 1
        L8_2[L9_2] = nil
      else
        L8_2 = L3_2[L7_2]
        L9_2 = A0_2._trial_avatar_data
        L9_2 = L9_2.SpecialAvatarID
        if L8_2 == L9_2 then
          L8_2 = A0_2._selected_avatars
          L9_2 = L7_2 + 1
          L10_2 = A0_2._trial_avatar_data
          L8_2[L9_2] = L10_2
        else
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.Client
          L8_2 = L8_2.GlobalVars
          L8_2 = L8_2.s_ModuleManager
          L8_2 = L8_2.AvatarModule
          L9_2 = L8_2
          L8_2 = L8_2.GetAvatar
          L10_2 = L3_2[L7_2]
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = A0_2._selected_avatars
          L10_2 = L7_2 + 1
          L9_2[L10_2] = L8_2
        end
      end
    end
    L4_2 = 1
    L5_2 = 4
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._selected_avatars
      L8_2 = L8_2[L7_2]
      if L8_2 ~= nil then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._team_avatars
        L10_2 = A0_2._selected_avatars
        L10_2 = L10_2[L7_2]
        L8_2(L9_2, L10_2)
      end
    end
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.FightActivityTeamInfoProvider
    L6_2 = A0_2._team_avatars
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._team_info_provider = L4_2
  end
  A0_2._checked_btn_level = nil
end
L6_1.init = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_levels
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_levels
  L2_2(L3_2)
end
L6_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.get_pre_circular_index
  L2_2 = A0_2._difficulty_level
  L3_2 = 3
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_switch_level
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._select_prev = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.get_next_circular_index
  L2_2 = A0_2._difficulty_level
  L3_2 = 3
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_switch_level
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._select_next = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_role_details
  L4_2 = A0_2._on_btn_role_details
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_levels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L5_2
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_switch_level
      L2_3 = L4_2
      L0_3(L1_3, L2_3)
    end
    L6_2(L7_2, L8_2, L9_2)
  end
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._selected_avatars
  L4_2 = A0_2._trial_avatar_data
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  L3_2 = A0_2._on_selected_avatars_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_icon_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 4
  L4_2 = A0_2._on_avatar_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JJDJNEPKOBO
  L1_2(L2_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamHpRefresh
  L4_2 = A0_2._on_hp_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_setup = false
  A0_2._group_row = nil
  A0_2._fight_rows = nil
  A0_2._stage_rows = nil
  A0_2._schedule_data = nil
  A0_2._monster_lists = nil
  A0_2._team_avatars = nil
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._team_info_provider
  L1_2(L2_2)
  A0_2._team_info_provider = nil
  A0_2._difficulty_level = nil
  A0_2._checked_btn_level = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.GetFightGroupScheduleData
  L2_2 = A0_2._group_id
  L1_2 = L1_2(L2_2)
  A0_2._schedule_data = L1_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L3_1.Easy
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L3_1.Normal
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L3_1.Hard
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2._fight_rows = L1_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1.GetStageIDByEventID
  L4_2 = A0_2._fight_rows
  L4_2 = L4_2[1]
  L4_2 = L4_2.FightEventID
  L5_2 = L4_1.WorldLevel
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1.GetStageIDByEventID
  L4_2 = A0_2._fight_rows
  L4_2 = L4_2[2]
  L4_2 = L4_2.FightEventID
  L5_2 = L4_1.WorldLevel
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1.GetStageIDByEventID
  L4_2 = A0_2._fight_rows
  L4_2 = L4_2[3]
  L4_2 = L4_2.FightEventID
  L5_2 = L4_1.WorldLevel
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  A0_2._stage_rows = L1_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L2_1.GetMonsterIDsByStageID
  L4_2 = A0_2._stage_rows
  L4_2 = L4_2[1]
  L4_2 = L4_2.StageID
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L2_1.GetMonsterIDsByStageID
  L4_2 = A0_2._stage_rows
  L4_2 = L4_2[2]
  L4_2 = L4_2.StageID
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L2_1.GetMonsterIDsByStageID
  L4_2 = A0_2._stage_rows
  L4_2 = L4_2[3]
  L4_2 = L4_2.StageID
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2._monster_lists = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fight_info
  L1_2(L2_2)
  A0_2._is_setup = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_tab_unlock_animation
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_avatars
  L1_2 = L1_2(L2_2)
  A0_2._selected_avatars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L6_1._on_selected_avatars_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.Prefs
    L0_3 = L0_3.User
    L0_3 = L0_3.FightActivityTabAnimationGroupID
    L1_3 = L0_3
    L0_3 = L0_3.Contains
    L2_3 = A0_2._group_id
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.User
      L0_3 = L0_3.FightActivityTabAnimationGroupID
      L1_3 = L0_3
      L0_3 = L0_3.Remove
      L2_3 = A0_2._group_id
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.tab_animation
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_hard_btn
      L0_3(L1_3)
      L0_3 = A0_2._count_down_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._count_down_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.fade_in_duration
  L4_2, L5_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L6_1._try_show_tab_unlock_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._schedule_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._setup_remain_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_group_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._group_row
  L3_2 = L3_2.FightStageTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_group_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._group_row
  L3_2 = L3_2.FightStageDesc
  L1_2(L2_2, L3_2)
end
L6_1._setup_fight_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_setup
  if not L1_2 then
    return
  end
  L1_2 = A0_2._selected_avatars
  L2_2 = {}
  A0_2._team_avatars = L2_2
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._team_avatars
      L8_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_challenge
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_levels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_avatar_icon_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_warning_tip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_monster_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_task_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mask_light
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_bottom_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_difficulty_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_hard_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._record_selection
  L2_2(L3_2)
end
L6_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.light
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.light
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._difficulty_level
    L7_2 = L7_2 == L4_2
    L5_2(L6_2, L7_2)
  end
end
L6_1._refresh_mask_light = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._team_avatars
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
end
L6_1._refresh_btn_challenge = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._checked_btn_level
  if L1_2 ~= nil then
    L1_2 = A0_2._checked_btn_level
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_levels
  L2_2 = A0_2._difficulty_level
  L1_2 = L1_2[L2_2]
  A0_2._checked_btn_level = L1_2
  L1_2 = A0_2._checked_btn_level
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._refresh_btn_levels = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_info
  L1_2 = L1_2.PassedMaxDifficultyLevel
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FightActivityTabAnimationGroupID
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = 2 <= L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hard_lock_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hard_icon_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._refresh_hard_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_icon_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._refresh_avatar_icon_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._team_avatars
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_warning_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._team_avatars
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._team_avatars
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Level
    L1_2 = L1_2 + L6_2
  end
  L2_2 = A0_2._stage_rows
  L3_2 = A0_2._difficulty_level
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.Level
  L3_2 = A0_2._fight_rows
  L4_2 = A0_2._difficulty_level
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.OffsetLevel
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_warning_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 * 4
  L5_2 = L1_2 < L5_2
  L3_2(L4_2, L5_2)
end
L6_1._refresh_warning_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster_icon
  L2_2 = L1_2
  L1_2 = L1_2.refresh_list
  L3_2 = A0_2._monster_lists
  L4_2 = A0_2._stage_rows
  L5_2 = A0_2._difficulty_level
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_strength_80
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_strength_100
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_strength_endless
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hard_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
end
L6_1._refresh_monster_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_task_progress_panel
  L1_2(L2_2)
  L1_2 = A0_2._difficulty_level
  if L1_2 == 3 then
    L1_2 = L5_1.GetEndlessRewardWaves
    L2_2 = A0_2._group_id
    L1_2 = L1_2(L2_2)
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._task_progress_panel
      L7_2 = L5_2 + 1
      L6_2 = L6_2[L7_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = A0_2._group_id
      L9_2 = A0_2._difficulty_level
      L10_2 = A0_2._fight_rows
      L11_2 = A0_2._difficulty_level
      L10_2 = L10_2[L11_2]
      L11_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  else
    L1_2 = A0_2._task_progress_panel
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._group_id
    L4_2 = A0_2._difficulty_level
    L5_2 = A0_2._fight_rows
    L6_2 = A0_2._difficulty_level
    L5_2 = L5_2[L6_2]
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L6_1._refresh_task_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_complete_bgs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._group_info
    if L6_2 ~= nil then
      L6_2 = A0_2._group_info
      L6_2 = L6_2.PassedMaxDifficultyLevel
      if L4_2 <= L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.btn_complete_bgs
        L6_2 = L6_2[L4_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.btn_level_text
        L6_2 = L6_2[L4_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = false
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_level_dot
        L6_2 = L6_2[L4_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = false
        L6_2(L7_2, L8_2)
    end
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.btn_complete_bgs
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.btn_level_text
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_level_dot
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
end
L6_1._refresh_btn_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1.UsedAttackFood
  L1_2 = L1_2 ~= -1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eat_default
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eat_eatting
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._refresh_eat_btn_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._difficulty_level
  if L2_2 == 3 then
    L2_2 = L5_1.GetEndlessRewardWaves
    L3_2 = A0_2._group_id
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2.Length
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.task_panel_root
  L2_2 = L2_2.transform
  L2_2 = L2_2.childCount
  L3_2 = L2_2
  L4_2 = L1_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_loadmeta_task_panel
    L9_2 = L9_2.Prefab
    L10_2 = A0_2._binder
    L10_2 = L10_2.task_panel_root
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.FightActivityTaskProgressPanel
    L11_2 = G
    L11_2 = L11_2.FightActivityTaskProgressPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._task_progress_panel
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._task_progress_panel
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.set_active
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L3_2 = L1_2 + 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._task_progress_panel
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.set_active
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L6_1._refresh_task_progress_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FightActivityReward"
  L4_2 = A0_2._group_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._bind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._difficulty_level
  L1_2.FightActivityDiffculty = L2_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L7_2 = L1_2
      L6_2 = L1_2.Add
      L8_2 = 0
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._selected_avatars
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.SpecialAvatarID
      if L6_2 ~= 0 then
        L7_2 = L1_2
        L6_2 = L1_2.Add
        L8_2 = A0_2._selected_avatars
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.SpecialAvatarID
        L6_2(L7_2, L8_2)
      else
        L7_2 = L1_2
        L6_2 = L1_2.Add
        L8_2 = A0_2._selected_avatars
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.ID
        L6_2(L7_2, L8_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FightActivityChallengeRecord
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A0_2._group_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.FightActivityChallengeRecord
    L3_2 = A0_2._group_id
    L2_2[L3_2] = L1_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.FightActivityChallengeRecord
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2._group_id
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._record_selection = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._difficulty_level
  L1_2 = L1_2 == 3
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_botton_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_common_btn_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L6_1._refresh_bottom_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._difficulty_level
  if L1_2 == 3 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_difficulty_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityFight_Tips_Hard"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_difficulty_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityFight_Tips"
    L1_2(L2_2, L3_2)
  end
end
L6_1._refresh_difficulty_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_btn_close = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = ""
  L5_2 = A0_2._group_id
  L5_2 = L5_2 * 10
  L5_2 = L5_2 + A1_2
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._difficulty_level = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L6_1._on_btn_switch_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._team_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.set_avatars
  L3_2 = A0_2._team_avatars
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._team_avatars
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._team_avatars
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_show
      L7_2 = G
      L7_2 = L7_2.AvatarMainPage
      L8_2 = nil
      L9_2 = nil
      L10_2 = A0_2._team_info_provider
      L11_2 = A0_2._team_avatars
      L11_2 = L11_2[L5_2]
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L1_2 = L6_2
      break
    end
  end
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = G
    L3_2 = L3_2.AvatarMainPage
    L4_2 = nil
    L5_2 = nil
    L6_2 = A0_2._team_info_provider
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L1_2 = L2_2
  end
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AvatarModule
  L3_2 = L3_2.AllAvatars
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L2_2
  L6_2 = A0_2._trial_avatar_data
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.sort_avatars
  L5_2 = L2_2
  L6_2 = AvatarSortType
  L6_2 = L6_2.Level
  L7_2 = false
  L8_2 = A0_2._team_info_provider
  L9_2 = L8_2
  L8_2 = L8_2.get_avatars_in_team
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L1_2
  L4_2 = L1_2.set_avatar_data_list
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L6_1._on_btn_role_details = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select_avatar
  L4_2 = L3_2
  L3_2 = L3_2.unselect_avatar_by_out
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L6_1._on_btn_avatar_head = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_GamePhaseManager
    L1_3 = L0_3
    L0_3 = L0_3.GetCurrentPhase
    L0_3 = L0_3(L1_3)
    if L0_3 ~= nil then
      L1_3 = CS
      L1_3 = L1_3.System
      L1_3 = L1_3.Collections
      L1_3 = L1_3.Generic
      L1_3 = L1_3.List
      L2_3 = CS
      L2_3 = L2_3.System
      L2_3 = L2_3.UInt32
      L1_3 = L1_3(L2_3)
      L1_3 = L1_3()
      L2_3 = 1
      L3_3 = A0_2._team_avatars
      L3_3 = #L3_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L7_3 = L1_3
        L6_3 = L1_3.Add
        L8_3 = A0_2._team_avatars
        L8_3 = L8_3[L5_3]
        L8_3 = L8_3.ID
        L6_3(L7_3, L8_3)
      end
      L2_3 = L3_1.__CastFrom
      L3_3 = A0_2._difficulty_level
      L2_3 = L2_3(L3_3)
      L3_3 = L4_1
      L4_3 = L3_3
      L3_3 = L3_3.SetAutoShowOnExitBattle
      L5_3 = A0_2._group_id
      L6_3 = L2_3
      L7_3 = A0_2._is_from_activity_panel
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = CS
      L3_3 = L3_3.System
      L3_3 = L3_3.Collections
      L3_3 = L3_3.Generic
      L3_3 = L3_3.List
      L4_3 = CS
      L4_3 = L4_3.System
      L4_3 = L4_3.UInt32
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3()
      L4_3 = L4_1.UsedAttackFood
      if L4_3 ~= -1 then
        L4_3 = L4_1.FoodRemainTurn
        L5_3 = L4_3
        L4_3 = L4_3.ContainsKey
        L6_3 = L4_1.UsedAttackFood
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L5_3 = L3_3
          L4_3 = L3_3.Add
          L6_3 = L4_1.UsedAttackFood
          L4_3(L5_3, L6_3)
        end
      end
      L4_3 = L4_1.UsedDefendFood
      if L4_3 ~= -1 then
        L4_3 = L4_1.FoodRemainTurn
        L5_3 = L4_3
        L4_3 = L4_3.ContainsKey
        L6_3 = L4_1.UsedDefendFood
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L5_3 = L3_3
          L4_3 = L3_3.Add
          L6_3 = L4_1.UsedDefendFood
          L4_3(L5_3, L6_3)
        end
      end
      L4_3 = A0_2._group_row
      L4_3 = L4_3.FightStageTitle
      L4_1.BattleTitle = L4_3
      L4_3 = A0_2._difficulty_level
      L4_1.BattleLevel = L4_3
      L4_3 = A0_2._group_row
      L4_3 = L4_3.FightStageDesc
      L4_1.BattleTips = L4_3
      L4_3 = A0_2._group_id
      L4_1.BattleGroupID = L4_3
      L4_3 = G
      L4_3 = L4_3.Utils
      L4_3 = L4_3.index_of_item
      L5_3 = A0_2._team_avatars
      L6_3 = A0_2._trial_avatar_data
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
        L5_3 = L4_3 - 1
        L6_3 = A0_2._trial_avatar_data
        L6_3 = L6_3.SpecialAvatarID
        L1_3[L5_3] = L6_3
        L5_3 = L0_3.EnterBattle
        L6_3 = L5_3
        L5_3 = L5_3.TriggerBattleByFightActivity
        L7_3 = A0_2._group_id
        L8_3 = L2_3
        L9_3 = L1_3
        L10_3 = L3_3
        L11_3 = L4_3 - 1
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L5_3 = L0_3.EnterBattle
        L6_3 = L5_3
        L5_3 = L5_3.TriggerBattleByFightActivity
        L7_3 = A0_2._group_id
        L8_3 = L2_3
        L9_3 = L1_3
        L10_3 = L3_3
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      end
    end
  end
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_btn_challenge = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = A0_2._group_id
  L5_2 = "_RewardBtn"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.FightActivityRewardDialog
  L3_2 = A0_2._group_row
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_reward = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.LineupSlotPanel
  L8_2 = G
  L8_2 = L8_2.LineupSlotPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_handler
  L7_2 = A0_2
  L8_2 = A0_2._on_btn_avatar_head
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._selected_avatars
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L6_1._on_avatar_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L6_1._on_hp_refresh = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._expire_call_back = L7_1
return L6_1
