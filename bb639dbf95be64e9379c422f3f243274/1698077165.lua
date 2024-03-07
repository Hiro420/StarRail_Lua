local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmTeamEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.CreateTeamNameDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmTeamEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FriendModule
L4_1 = L2_1.MainlineTeamCount
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmTeamEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._team_data = nil
  A0_2._confirm_callback = nil
  A0_2._confirm_handler = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = L2_1.CurrentMainlineTeamIndex
  L8_2 = L2_1
  L9_2 = L8_2
  L8_2 = L8_2.SwitchCurrentEditTeam
  L10_2 = CS
  L10_2 = L10_2.DEAEDMGDDHH
  L10_2 = L10_2.FJGPPKPICLG
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L2_1
  L9_2 = L8_2
  L8_2 = L8_2.GetMainlineTeam
  L10_2 = L2_1.CurrentMainlineTeamIndex
  L8_2 = L8_2(L9_2, L10_2)
  A0_2._team_data = L8_2
  L8_2 = A0_2._team_data
  L9_2 = L8_2
  L8_2 = L8_2.DeleteSnapShot
  L8_2(L9_2)
  A0_2._confirm_callback = A1_2
  A0_2._confirm_handler = A2_2
  L8_2 = A3_2 or L8_2
  if not A3_2 then
    L8_2 = {}
  end
  A0_2._limit_ids = L8_2
  if A4_2 == nil then
    L8_2 = true
    if L8_2 then
      goto lbl_29
    end
  end
  L8_2 = A4_2
  ::lbl_29::
  A0_2._should_auto_exit = L8_2
  L8_2 = A5_2 or L8_2
  if not A5_2 then
    L8_2 = false
  end
  A0_2._enable_assist = L8_2
  A0_2._weakness_table = A6_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.GlobalVars
  L8_2 = L8_2.s_GamePhaseManager
  L9_2 = L8_2
  L8_2 = L8_2.GetCurrentPhase
  L8_2 = L8_2(L9_2)
  L9_2 = G
  L9_2 = L9_2.UtilEngineWrap
  L9_2 = L9_2.IsCsType
  L10_2 = L8_2
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.BattleGamePhase
  L9_2 = L9_2(L10_2, L11_2)
  A0_2._is_in_battle = L9_2
  A0_2._should_check_avatar_dead = false
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
  A0_2._should_check_avatar_dead = A1_2
end
L0_1.set_should_check_avatar_dead = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_1.IsCurShowLocalTeam = false
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
  L2_2 = A0_2
  L1_2 = A0_2._init_team_tab
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.setup_limit
  L3_2 = A0_2._limit_ids
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.assist_switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_assist_member_edit_page_exit_callback
  L3_2 = A0_2._on_return_to_top
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._member_edit_click_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
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
  L3_2 = L3_2.btn_edit_team_name
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
end
L0_1._custom_bind_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamGetAllLineupFinish
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamCurrentEditTeamSwitched
  L4_2 = L0_1._on_current_edit_team_switched
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._team_data
  L4_2 = L3_2
  L3_2 = L3_2.GetAssistMember
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L1_1
    L3_2 = L3_2 + 1
    if A2_2 == L3_2 then
      L3_2 = G
      L3_2 = L3_2.FriendUtils
      L3_2 = L3_2.show_assist_page
      L4_2 = A1_2
      L3_2(L4_2)
  end
  else
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
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_damage_tip
    L7_2 = A0_2._weakness_table
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.UIManager
    L5_2 = L5_2.show
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
end
L0_1._member_edit_click_call_back = L5_1
function L5_1(A0_2)
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
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = L4_1
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
    L8_2 = L8_2.node_tab_root
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_select_callback
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_tab_select
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
end
L0_1._init_team_tab = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SwitchCurrentEditTeam
  L4_2 = CS
  L4_2 = L4_2.DEAEDMGDDHH
  L4_2 = L4_2.FJGPPKPICLG
  L5_2 = A1_2 - 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMainlineTeam
  L4_2 = L2_1.CurrentMainlineTeamIndex
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.GetMemberCount
    L3_2 = L3_2(L4_2)
    if 0 < L3_2 then
      L3_2 = L2_1.CurrentMainlineTeamIndex
      L4_2 = A1_2 - 1
      if L3_2 ~= L4_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.NetworkManager
        L3_2 = L3_2.OOGONDGGKMI
        L4_2 = L3_2
        L3_2 = L3_2.KIDDBPMGAHB
        L5_2 = A1_2 - 1
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._team_data
  if L1_2 then
    L1_2 = A0_2._team_data
    L2_2 = L1_2
    L1_2 = L1_2.GetMemberCount
    L1_2 = L1_2(L2_2)
    if 0 < L1_2 then
      L1_2 = L2_1.CurrentMainlineTeamIndex
      L2_2 = A0_2._team_data
      L2_2 = L2_2.MainLineIndex
      if L1_2 ~= L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.NetworkManager
        L1_2 = L1_2.OOGONDGGKMI
        L2_2 = L1_2
        L1_2 = L1_2.KIDDBPMGAHB
        L3_2 = A0_2._team_data
        L3_2 = L3_2.MainLineIndex
        L1_2(L2_2, L3_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
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
  L1_2 = A0_2._init_ui_navigation
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
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_damages
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._weakness_table
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeOpenFarmTeamEdit
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
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
L0_1._init_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_avatar_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_limit_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_assist_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn_view
  L1_2(L2_2)
end
L0_1._refresh_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_edit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_team_avatar_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.Name
  if L1_2 == "" then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_team_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Team_Default_Name_0%s"
    L5_2 = A0_2._team_data
    L5_2 = L5_2.MainLineIndex
    L5_2 = L5_2 + 1
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_team_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._team_data
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_team_info_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_team_limit_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_team_limit
  L4_2 = L3_2
  L3_2 = L3_2.is_condition_met
  L3_2 = L3_2(L4_2)
  L2_2.interactable = L3_2
end
L0_1._setup_confirm_btn_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._enable_assist
  if L1_2 then
    L1_2 = A0_2._team_data
    L1_2 = L1_2.IsVirtual
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.assist_switch_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.assist_switch_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1._setup_assist_info = L5_1
function L5_1(A0_2)
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
L0_1._on_btn_close_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Team.TeamQuickEditPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._team_data
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_limit_tip
  L4_2 = A0_2._limit_ids
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_damage_tip
  L4_2 = A0_2._weakness_table
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._on_btn_btn_quick_edit = L5_1
function L5_1(A0_2)
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
L0_1._on_btn_arrow_left_click = L5_1
function L5_1(A0_2)
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
L0_1._on_btn_arrow_right_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Team.CreateTeamNameDialog"
  L3_2 = A0_2._team_data
  L3_2 = L3_2.MainLineIndex
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_change_team_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentEditTeam
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.FarmUtils
  L2_2 = L2_2.get_avatar_dead_confirm_text
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L5_2 = A0_2
    L4_2 = A0_2._on_confirm
    L4_2(L5_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConfirmDialogUtil
    L4_2 = L4_2.ShowConfirmDialog
    function L5_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_confirm
        L1_3(L2_3)
      end
    end
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.GetComponentContent
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = DialogBtnMode
    L5_2 = L5_2.eOkCancel
    L4_2.Mode = L5_2
  end
end
L0_1._check_avatar_dead = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._should_check_avatar_dead
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_avatar_dead
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_confirm
    L1_2(L2_2)
  end
end
L0_1._on_btn_confirm_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTeamIndex
  L3_2 = A0_2._team_data
  L3_2 = L3_2.MainLineIndex
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._confirm_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._confirm_handler
    if L1_2 ~= nil then
      L1_2 = A0_2._confirm_callback
      L2_2 = A0_2._confirm_handler
      L1_2(L2_2)
    else
      L1_2 = A0_2._confirm_callback
      L1_2()
    end
  end
  A0_2._confirm_exit = true
  L1_2 = A0_2._should_auto_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_confirm = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A1_2 or "" == A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_team_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._team_data
    L4_2 = L4_2.Name
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_player_set_team_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L2_1
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._team_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._enable_assist
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.assist_switch_panel
    L2_2 = L1_2
    L1_2 = L1_2.switch_team
    L3_2 = A0_2._team_data
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_current_edit_team_switched = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_1.IsCurShowLocalTeam = true
  L1_2 = A0_2._confirm_exit
  if not L1_2 then
    L1_2 = A0_2._is_in_battle
    if not L1_2 then
      L1_2 = L3_1
      L2_2 = L1_2
      L1_2 = L1_2.RemoveAssistAvatar
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_assist
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
L0_1._on_dispose = L5_1
return L0_1
