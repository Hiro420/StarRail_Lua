local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Team.TeamEditMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.CreateTeamNameDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamEditMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FeatureSwitchModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.StoryLineModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_LRUCached
  A0_2._view_cache_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TeamEditMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._pause_game = true
  L1_2 = TeamMode
  L1_2 = L1_2.NormalTeam
  A0_2._team_mode = L1_2
  L1_2 = L1_1.MainlineTeamCount
  A0_2._team_count = L1_2
  A0_2._refresh_timer = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if nil ~= A1_2 then
    L4_2 = CS
    L4_2 = L4_2.DEAEDMGDDHH
    L4_2 = L4_2.__CastFrom
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.DEAEDMGDDHH
    L5_2 = L5_2.INKHBENBOHE
    if L4_2 ~= L5_2 then
      L5_2 = CS
      L5_2 = L5_2.DEAEDMGDDHH
      L5_2 = L5_2.OKNONINOGNN
      if L4_2 ~= L5_2 then
        L5_2 = CS
        L5_2 = L5_2.DEAEDMGDDHH
        L5_2 = L5_2.BJPEFPLKPMD
        if L4_2 ~= L5_2 then
          goto lbl_26
        end
      end
    end
    L5_2 = TeamMode
    L5_2 = L5_2.RogueTeam
    A0_2._team_mode = L5_2
    ::lbl_26::
    if nil ~= A2_2 then
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.SwitchCurrentEditTeam
      L7_2 = L4_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.SwitchCurrentEditTeam
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = A0_2._team_mode
  L5_2 = TeamMode
  L5_2 = L5_2.RogueTeam
  if L4_2 == L5_2 then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetCurrentEditTeam
    L4_2 = L4_2(L5_2)
    A0_2._team_data = L4_2
  else
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetCurrentTeam
    L4_2 = L4_2(L5_2)
    A0_2._team_data = L4_2
    L4_2 = A0_2._team_data
    L4_2 = L4_2.IsVirtual
    if L4_2 then
      L4_2 = TeamMode
      L4_2 = L4_2.VirtualTeam
      A0_2._team_mode = L4_2
    else
      L4_2 = L3_1.CurrentLine
      L4_2 = L4_2.IsMainLine
      if not L4_2 then
        L4_2 = TeamMode
        L4_2 = L4_2.StoryLineTeam
        A0_2._team_mode = L4_2
      else
        L4_2 = TeamMode
        L4_2 = L4_2.NormalTeam
        A0_2._team_mode = L4_2
      end
    end
  end
  A0_2._show_hp = true
  if A3_2 then
    A0_2._transition_style = A3_2
  end
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_target
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeOpenTeamEdite
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_bind_callback
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JHLHHLLAJEE
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_team_mode
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._team_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._member_edit_click_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.setup_limit_by_avatars
  L3_2 = A0_2._team_data
  L3_2 = L3_2.LockedAvatarIDs
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_property_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_edit_name
  L1_2.enabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_name_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L9_2 = A0_2._show_hp
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.show
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._member_edit_click_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.TeamCurrentEditTeamSwitched
  L4_2 = L0_1._on_team_current_edit_team_switched
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
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
  L3_2 = L3_2.btn_change_team_name
  L4_2 = A0_2._on_btn_change_team_name
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_left
  L4_2 = A0_2._on_btn_arrow_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_right
  L4_2 = A0_2._on_btn_arrow_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetTeamName
  L4_2 = A0_2._on_player_set_team_name
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetBattleTeam
  L4_2 = A0_2._on_player_set_battle_team
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._custom_bind_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._team_mode
  L2_2 = TeamMode
  L2_2 = L2_2.NormalTeam
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_normal_team_mode
    L1_2(L2_2)
  else
    L1_2 = A0_2._team_mode
    L2_2 = TeamMode
    L2_2 = L2_2.VirtualTeam
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._init_virtual_team_mode
      L1_2(L2_2)
    else
      L1_2 = A0_2._team_mode
      L2_2 = TeamMode
      L2_2 = L2_2.RogueTeam
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._init_rogue_team_mode
        L1_2(L2_2)
      else
        L1_2 = A0_2._team_mode
        L2_2 = TeamMode
        L2_2 = L2_2.StoryLineTeam
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._init_story_line_team_mode
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._init_team_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_team_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_edit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_normal_team_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = L1_2.text_team_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_TeamEdit_VteamName"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_edit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_label_in_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._init_virtual_team_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._show_hp = true
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
  L1_2 = L1_2.text_team_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Sub_Title10"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_page_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Main_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_edit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_label_in_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rogue_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rogue_buff_page
  L4_2 = A0_2._on_btn_rogue_buff_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._init_rogue_team_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = L1_2.text_team_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_TeamEdit_StoryLineName"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_edit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_label_in_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._init_story_line_team_mode = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L0_1._on_btn_rogue_buff_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._team_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TeamTabItem
    L8_2 = G
    L8_2 = L8_2.TeamTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_item_tab_root
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_select_callback
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.on_tab_select
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._team_data
  L3_2 = L3_2.MainLineIndex
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.move_to_current_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_current_team_mark
  L1_2(L2_2)
end
L0_1._init_team_tab_control = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SwitchCurrentEditTeam
  L4_2 = CS
  L4_2 = L4_2.DEAEDMGDDHH
  L4_2 = L4_2.FJGPPKPICLG
  L5_2 = A1_2 - 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentEditTeam
  L2_2 = L2_2(L3_2)
  A0_2._team_data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_member_edit
  L3_2 = L2_2
  L2_2 = L2_2.switch_team
  L4_2 = A0_2._team_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_page
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_normal_team
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.TryStopJoinTeamCharacterVO
  L2_2(L3_2)
end
L0_1.on_tab_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.Name
  if L1_2 == "" then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_team_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Team_Default_Name_0%s"
    L5_2 = A0_2._team_data
    L5_2 = L5_2.MainLineIndex
    L5_2 = L5_2 + 1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_team_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._team_data
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.get_table_length
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_label_in_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._team_data
  L5_2 = L5_2.MainLineIndex
  L6_2 = L1_1.CurrentMainlineTeamIndex
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_normal_team = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._team_mode
  L2_2 = TeamMode
  L2_2 = L2_2.NormalTeam
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_normal_team
    L1_2(L2_2)
  end
end
L0_1._refresh_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTeamIndex
  L3_2 = A0_2._team_data
  L3_2 = L3_2.MainLineIndex
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._refresh_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._refresh_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._refresh_timer = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._refresh_timer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    A0_2._refresh_timer = nil
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_page
    L0_3(L1_3)
  end
  L4_2 = 0.35
  L5_2 = 0.35
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._refresh_timer = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Team.TeamQuickEditPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._team_data
  L5_2 = A0_2._show_hp
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_edit_closed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._on_btn_btn_quick_edit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._refresh_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_edit_closed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFeatureClosed
  L3_2 = CS
  L3_2 = L3_2.NPLIJJDOLJK
  L3_2 = L3_2.NNEOGAODJOL
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "RetCodeError_9"
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Team.CreateTeamNameDialog"
    L3_2 = A0_2._team_data
    L3_2 = L3_2.MainLineIndex
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_change_team_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.remove_all_avatar_selected_eff
    L1_2(L2_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.move_to_current_item
  L1_2(L2_2)
end
L0_1._on_btn_arrow_left_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.remove_all_avatar_selected_eff
    L1_2(L2_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.move_to_current_item
  L1_2(L2_2)
end
L0_1._on_btn_arrow_right_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A1_2 or "" == A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_team_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._team_data
    L4_2 = L4_2.Name
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_player_set_team_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_TeamEdit_ActiveTeamMessage"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.get_table_length
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_label_in_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._team_data
  L5_2 = L5_2.MainLineIndex
  L6_2 = L1_1.CurrentMainlineTeamIndex
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_current_team_mark
  L3_2(L4_2)
end
L0_1._on_player_set_battle_team = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._refresh_timer
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentEditTeam
  L1_2 = L1_2(L2_2)
  A0_2._team_data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._team_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._on_team_current_edit_team_switched = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._team_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_control
    L6_2 = L5_2
    L5_2 = L5_2.find_item
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setup_current_team_mark
      L8_2 = L1_1.CurrentMainlineTeamIndex
      L8_2 = L8_2 + 1
      L8_2 = L4_2 == L8_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_current_team_mark = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rogue_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeCloseTeamEdite
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnTeamMemberEditConfirm
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
L0_1._on_dispose = L4_1
return L0_1
