local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Team.LocalTeamEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillDetailInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LocalTeamEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = 4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LocalTeamEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._cur_edit_team = nil
  A0_2._confirm_callback = nil
  A0_2._confirm_handler = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, ...)
  local L9_2, L10_2, L11_2, L12_2
  L9_2 = A1_2 or nil
  if not A1_2 then
    L9_2 = LocalTeamSourceType
    L9_2 = L9_2.Raid
  end
  A0_2._team_source = L9_2
  L9_2 = {}
  A0_2.trial_avatar_ids = L9_2
  A0_2.raid_config_row = A8_2
  if A8_2 then
    L9_2 = A0_2._team_source
    L10_2 = LocalTeamSourceType
    L10_2 = L10_2.Raid
    if L9_2 == L10_2 then
      L9_2 = G
      L9_2 = L9_2.Utils
      L9_2 = L9_2.create_lua_table_from_cs_array
      L10_2 = A8_2.TrialAvatarList
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = {}
      end
      A0_2.trial_avatar_ids = L9_2
    end
  end
  A0_2._confirm_callback = A2_2
  A0_2._confirm_handler = A3_2
  L9_2 = dont_destroy_team_on_dispose
  A0_2._dont_destroy_team_on_dispose = L9_2
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = {}
  end
  A0_2._limit_ids = L9_2
  if A5_2 == nil then
    L9_2 = true
    if L9_2 then
      goto lbl_39
    end
  end
  L9_2 = A5_2
  ::lbl_39::
  A0_2._should_auto_exit = L9_2
  L9_2 = A6_2 or L9_2
  if not A6_2 then
    L9_2 = false
  end
  A0_2._enable_assist = L9_2
  A0_2._weakness_table = A7_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_GamePhaseManager
  L10_2 = L9_2
  L9_2 = L9_2.GetCurrentPhase
  L9_2 = L9_2(L10_2)
  L10_2 = G
  L10_2 = L10_2.UtilEngineWrap
  L10_2 = L10_2.IsCsType
  L11_2 = L9_2
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.Client
  L12_2 = L12_2.BattleGamePhase
  L10_2 = L10_2(L11_2, L12_2)
  A0_2._is_in_battle = L10_2
  L11_2 = A0_2
  L10_2 = A0_2._init_cur_edit_team
  L12_2 = ...
  L10_2(L11_2, L12_2)
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  A0_2._team_data_provider = A1_2
end
L0_1.set_team_data_provider = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTeamMember
  L4_2 = A0_2._cur_edit_team
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_team_members = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._enable_challenge_tips_text_id = A3_2
  A0_2._enable_challenge_check_func = A1_2
  A0_2._enable_challenge_check_func_self = A2_2
end
L0_1.setup_enable_challenge_condition = L3_1
function L3_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._team_source
  L2_2 = LocalTeamSourceType
  L2_2 = L2_2.BoxingClub
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._fetch_local_edit_team_from_boxing_club
    L3_2 = ...
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._team_source
    L2_2 = LocalTeamSourceType
    L2_2 = L2_2.Raid
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._fetch_local_edit_team_for_raid
      L1_2(L2_2)
    else
      L1_2 = A0_2._team_source
      L2_2 = LocalTeamSourceType
      L2_2 = L2_2.FantasticStory
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._fetch_local_edit_team_for_fantastic_story
        L3_2 = ...
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._team_source
        L2_2 = LocalTeamSourceType
        L2_2 = L2_2.Television
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._fetch_local_edit_team_for_television_activity
          L3_2 = ...
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1._init_cur_edit_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L2_2 = ipairs
  L3_2 = A0_2.trial_avatar_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L1_2
    L7_2 = L1_2.Add
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = true
  L3_2 = A0_2.raid_config_row
  if L3_2 then
    L3_2 = A0_2.raid_config_row
    L3_2 = L3_2.TeamType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RaidTeamType
    L4_2 = L4_2.TrialOrPlayer
    if L3_2 == L4_2 then
      L2_2 = false
    end
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.CreateLocalEditTeam
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentEditTeam
  L3_2 = L3_2(L4_2)
  A0_2._cur_edit_team = L3_2
end
L0_1._fetch_local_edit_team_for_raid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.BoxingClubModule
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.CreateLocalEditTeam
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentEditTeam
  L4_2 = L4_2(L5_2)
  A0_2._cur_edit_team = L4_2
  if A1_2 ~= nil then
    L4_2 = L2_2.BoxingClubLevelDict
    L5_2 = L4_2
    L4_2 = L4_2.ContainsKey
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_34
    end
  end
  do return end
  ::lbl_34::
  L5_2 = L2_2
  L4_2 = L2_2.TryGetLocalTeamByChallengeID
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.SetTeamMember
  L7_2 = A0_2._cur_edit_team
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._fetch_local_edit_team_from_boxing_club = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A0_2.trial_avatar_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.CreateLocalEditTeam
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentEditTeam
  L3_2 = L3_2(L4_2)
  A0_2._cur_edit_team = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.SetTeamMember
  L5_2 = A0_2._cur_edit_team
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._fetch_local_edit_team_for_fantastic_story = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A0_2.trial_avatar_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.CreateLocalEditTeam
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentEditTeam
  L3_2 = L3_2(L4_2)
  A0_2._cur_edit_team = L3_2
end
L0_1._fetch_local_edit_team_for_television_activity = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SwitchCurrentEditTeam
  L3_2 = CS
  L3_2 = L3_2.DEAEDMGDDHH
  L3_2 = L3_2.INKHBENBOHE
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentEditTeam
  L1_2 = L1_2(L2_2)
  A0_2._cur_edit_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_rogue_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._fetch_local_edit_team_for_rogue = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1._on_rogue_team_data_refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_member_edit
    L5_2 = L4_2
    L4_2 = L4_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JHLHHLLAJEE
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_bind_callback
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._member_edit_click_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_edit
  L4_2 = A0_2._on_btn_btn_quick_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_state
  L4_2 = A0_2._on_btn_buff_state
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._custom_bind_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.GetMemberData
  L5_2 = A2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = A0_2._avatar_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.setup_empty_show
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._avatar_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.setup_avatar_show
    L6_2 = A2_2
    L7_2 = L3_2.AvatarData
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Team.TeamMemberEditPage"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = A2_2
  L8_2 = A1_2
  L9_2 = true
  L10_2 = A0_2._limit_ids
  L11_2 = A0_2._limit_index_list
  L12_2 = A0_2._team_data_provider
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_damage_tip
  L7_2 = A0_2._weakness_table
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._title_id
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.set_weakness_title
    L7_2 = A0_2._title_id
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._use_multi_list_avatar_select_panel
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_multi_list_avatar_select_panel
    L7_2 = A0_2._all_avatar_table_list
    L8_2 = A0_2._title_list
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._btn_buff_state_callback
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_team_buff_panel
    L7_2 = A0_2._btn_buff_textid
    L8_2 = A0_2._btn_buff_state_callback
    L9_2 = A0_2._btn_buff_state_callback_self
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.set_exit_callback
  L7_2 = A0_2._on_return_top_page
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L0_1._member_edit_click_call_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_default_navigation_target
    L1_2(L2_2)
  end
end
L0_1._on_return_top_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_damages
  L4_2 = L3_2
  L3_2 = L3_2.should_show
  L5_2 = A0_2._weakness_table
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_team_limit
    L4_2 = L3_2
    L3_2 = L3_2.should_show
    L5_2 = A0_2._limit_ids
    L3_2 = L3_2(L4_2, L5_2)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_damages
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._weakness_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._limit_ids
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._cur_edit_team
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._cur_edit_team
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_team_member_panel
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._team_source
  L2_2 = LocalTeamSourceType
  L2_2 = L2_2.Raid
  if L1_2 == L2_2 then
    L1_2 = {}
    A0_2._limit_index_list = L1_2
    L1_2 = A0_2.raid_config_row
    if L1_2 then
      L1_2 = A0_2.raid_config_row
      L1_2 = L1_2.TeamPositionLockNum
      if 0 < L1_2 then
        L1_2 = L2_1
        L2_2 = L2_1
        L3_2 = A0_2.raid_config_row
        L3_2 = L3_2.TeamPositionLockNum
        L2_2 = L2_2 - L3_2
        L2_2 = L2_2 + 1
        L3_2 = -1
        for L4_2 = L1_2, L2_2, L3_2 do
          L5_2 = A0_2._binder
          L5_2 = L5_2.panel_member_edit
          L6_2 = L5_2
          L5_2 = L5_2.setup_un_choose_status
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
          L5_2 = table
          L5_2 = L5_2.insert
          L6_2 = A0_2._limit_index_list
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L0_1._init_team_member_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_avatar_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_limit_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_team_member_panel
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_team_limit_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_team_avatar_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.get_table_length
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  L3_2 = false
  L4_2 = A0_2._enable_challenge_check_func
  if L4_2 then
    L4_2 = A0_2._enable_challenge_check_func
    L5_2 = A0_2._enable_challenge_check_func_self
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
    L4_2 = A0_2._enable_challenge_tips_text_id
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_challenge_unlock_tips
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = A0_2._enable_challenge_tips_text_id
      L4_2(L5_2, L6_2)
      L3_2 = true
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_hint_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_unlock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_confirm
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_team_limit
  L6_2 = L5_2
  L5_2 = L5_2.is_condition_met
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L2_2
  end
  L4_2.interactable = L5_2
end
L0_1._setup_confirm_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_edit_name
  L1_2.enabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_name_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_team_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_TeamEdit_VteamName"
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._title_id = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_damages
  L3_2 = L2_2
  L2_2 = L2_2.setup_title
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_weakness_title = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_buff_state
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_team_buff_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_state_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  A0_2._btn_buff_textid = A1_2
  A0_2._btn_buff_state_callback = A2_2
  A0_2._btn_buff_state_callback_self = A3_2
end
L0_1.setup_team_buff_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._use_multi_list_avatar_select_panel = true
  A0_2._all_avatar_table_list = A1_2
  A0_2._title_list = A2_2
end
L0_1.setup_multi_list_avatar_select_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRefreshFuncEntrance
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Team.TeamQuickEditPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._cur_edit_team
  L5_2 = true
  L6_2 = A0_2._limit_index_list
  L7_2 = A0_2._team_data_provider
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_limit_tip
  L4_2 = A0_2._limit_ids
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_damage_tip
  L4_2 = A0_2._weakness_table
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_return_top_page
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._use_multi_list_avatar_select_panel
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setup_multi_list_avatar_select_panel
    L4_2 = A0_2._all_avatar_table_list
    L5_2 = A0_2._title_list
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._title_id
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.set_weakness_title
    L4_2 = A0_2._title_id
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._btn_buff_state_callback
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setup_team_buff_panel
    L4_2 = A0_2._btn_buff_textid
    L5_2 = A0_2._btn_buff_state_callback
    L6_2 = A0_2._btn_buff_state_callback_self
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._on_btn_btn_quick_edit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_avatar_id_list
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._confirm_callback
    if L2_2 ~= nil then
      L2_2 = A0_2._confirm_handler
      if L2_2 ~= nil then
        L2_2 = A0_2._confirm_callback
        L3_2 = A0_2._confirm_handler
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  A0_2._confirm_exit = true
  L2_2 = A0_2._should_auto_exit
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_btn_confirm_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_buff_state_callback
  if L1_2 then
    L1_2 = A0_2._btn_buff_state_callback
    L2_2 = A0_2._btn_buff_state_callback_self
    L3_2 = A0_2._on_return_top_page
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_buff_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L3_2 = L2_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_edit_team
    L7_2 = L6_2
    L6_2 = L6_2.GetMemberData
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsTrialPlayer
      if L7_2 then
        L8_2 = L1_2
        L7_2 = L1_2.Add
        L9_2 = L6_2.TrialPlayerID
        L7_2(L8_2, L9_2)
      else
        L8_2 = L1_2
        L7_2 = L1_2.Add
        L9_2 = L6_2.AvatarID
        L7_2(L8_2, L9_2)
      end
    end
  end
  return L1_2
end
L0_1._get_avatar_id_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.DestroyLocalEditTeam
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeCloseFarmTeamEdit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeCloseTeamEdite
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.TryStopJoinTeamCharacterVO
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
return L0_1
