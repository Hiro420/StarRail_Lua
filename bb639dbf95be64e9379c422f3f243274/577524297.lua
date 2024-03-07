local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSubMenuVerticalPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.DefaultTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
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
L4_1 = 1
L5_1 = 4
L6_1 = 0.25
function L7_1(A0_2)
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
  L3_2 = L3_2.AvatarMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_detail_page_type
  L3_2 = G
  L3_2 = L3_2.AvatarDetailPageType
  L3_2 = L3_2.MainPage
  L1_2(L2_2, L3_2)
  A0_2._pause_game = true
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
  A0_2._is_save_by_click = false
  A0_2.is_played_fade_in = false
  A0_2.is_eidolon_played_fade_in = false
  A0_2._default_sub_menu_id = 1
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  A0_2.team_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A3_2 or nil
  if not A3_2 then
    L6_2 = G
    L6_2 = L6_2.new
    L7_2 = G
    L7_2 = L7_2.DefaultTeamInfoProvider
    L8_2 = A0_2.team_data
    L6_2 = L6_2(L7_2, L8_2)
  end
  A0_2._team_info_provider = L6_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = A0_2._default_sub_menu_id
  end
  A0_2._default_sub_menu_id = L6_2
  A0_2._is_locate_avatar = A5_2
  if A4_2 ~= nil then
    L6_2 = A4_2.IsPlotTrialPlayer
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._get_show_avatar_data
      L6_2 = L6_2(L7_2)
      A0_2._avatar_data = L6_2
    else
      A0_2._avatar_data = A4_2
    end
  elseif A1_2 ~= nil and A1_2 ~= 0 then
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetTrialAvatar
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.IsPlotTrialPlayer
      if L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2._get_show_avatar_data
        L7_2 = L7_2(L8_2)
        A0_2._avatar_data = L7_2
    end
    else
      A0_2._avatar_data = L6_2
    end
  else
    L6_2 = A0_2.team_data
    L6_2 = L6_2.TeamLeader
    L6_2 = L6_2.AvatarData
    L6_2 = L6_2.IsPlotTrialPlayer
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._get_show_avatar_data
      L6_2 = L6_2(L7_2)
      A0_2._avatar_data = L6_2
    else
      L6_2 = G
      L6_2 = L6_2.AvatarUtils
      L6_2 = L6_2.get_avatar_data_by_member_data
      L7_2 = A0_2.team_data
      L7_2 = L7_2.TeamLeader
      L6_2 = L6_2(L7_2)
      A0_2._avatar_data = L6_2
    end
  end
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_preload
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.GameObjectType
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.UIAvatarModelPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_preload = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L5_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.team_data
    L6_2 = L5_2
    L5_2 = L5_2.GetMemberData
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.AvatarData
      L6_2 = L6_2.IsPlotTrialPlayer
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.AvatarUtils
        L6_2 = L6_2.get_avatar_data_by_member_data
        L7_2 = L5_2
        return L6_2(L7_2)
      end
    end
  end
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatar_data_list
  L2_2 = A0_2._team_info_provider
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsPlotTrialPlayer
    if not L7_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_show_avatar_data = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._is_hide_avatar_list = true
end
L0_1.hide_avatar_list = L7_1
function L7_1(A0_2, A1_2)
  A0_2._custom_avatar_data_list = A1_2
end
L0_1.set_avatar_data_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetHeroBasicType
  L4_2 = L0_1._on_player_set_hero_basic_type
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L2_2 = A0_2._avatar_sub_menu_panel
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._avatar_sub_menu_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_cur_tab_btn_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._avatar_sub_menu_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_object
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2._is_can_to_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_to_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_out_most_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2.is_played_fade_in
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          L1_2 = L1_2._avatar_skill_tree_tab_item
          if L1_2 then
            L1_2 = A0_2._avatar_sub_menu_panel
            L1_2 = L1_2._avatar_skill_tree_tab_item
            L2_2 = L1_2
            L1_2 = L1_2._close_point_detail
            L1_2(L2_2)
          end
        end
      else
        L1_2 = A0_2.is_eidolon_played_fade_in
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          if L1_2 then
            L1_2 = A0_2._avatar_sub_menu_panel
            L1_2 = L1_2._avatar_eidolon_tab_item
            if L1_2 then
              L1_2 = A0_2._avatar_sub_menu_panel
              L1_2 = L1_2._avatar_eidolon_tab_item
              L2_2 = L1_2
              L1_2 = L1_2.on_btn_close_skill_detail
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
end
L0_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_played_fade_in
  if L1_2 then
    L1_2 = A0_2._avatar_sub_menu_panel
    if L1_2 then
      L1_2 = A0_2._avatar_sub_menu_panel
      L1_2 = L1_2._avatar_skill_tree_tab_item
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        L1_2 = L1_2._avatar_skill_tree_tab_item
        L2_2 = L1_2
        L1_2 = L1_2._close_point_detail
        L1_2(L2_2)
      end
    end
  else
    L1_2 = A0_2.is_eidolon_played_fade_in
    if L1_2 then
      L1_2 = A0_2._avatar_sub_menu_panel
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        L1_2 = L1_2._avatar_eidolon_tab_item
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          L1_2 = L1_2._avatar_eidolon_tab_item
          L2_2 = L1_2
          L1_2 = L1_2.on_btn_close_skill_detail
          L1_2(L2_2)
        end
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_close_click
      L1_2(L2_2)
    end
  end
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_sub_menu_panel
  if L1_2 then
    L1_2 = A0_2._avatar_sub_menu_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_enter_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_sub_menu_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._show_page_node
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  A0_2.is_showing_level_up = A1_2
  if A1_2 then
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_avatar_main_page_tab
    L4_2 = G
    L4_2 = L4_2.AvatarMainPageSubType
    L4_2 = L4_2.AvatarDetailLevelUp
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_avatar_main_page_tab
    L4_2 = G
    L4_2 = L4_2.AvatarMainPageSubType
    L4_2 = L4_2.AvatarDetail
    L2_2(L3_2, L4_2)
  end
  if not A1_2 then
    L2_2 = A0_2._avatar_list_panel
    L3_2 = L2_2
    L2_2 = L2_2._refresh_scrollview
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._display_short_cut_hint_panel
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_click_levelup = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._show_page_node
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_data_bank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._display_short_cut_hint_panel
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_click_data_bank_detail = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._show_page_node
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._display_short_cut_hint_panel
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_click_avatar_skin = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._short_cut_hint_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._short_cut_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._display_short_cut_hint_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sub_menu
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_page_node = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarListPanel
  L4_2 = G
  L4_2 = L4_2.AvatarListPanelBinder
  L5_2 = A0_2._avatar_data
  L6_2 = A0_2._team_info_provider
  L7_2 = A0_2._is_locate_avatar
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._avatar_list_panel = L1_2
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_hide
  L3_2 = A0_2._is_hide_avatar_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_root_canvas_group
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group_avatar_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "AvatarListPanel AvatarMainPage _setup_view(): init_scroll_view()"
  L1_2(L2_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.on_show_avatar_main_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_list
  L1_2(L2_2)
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_scroll_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_avatar_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_out_most_zoom
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        return
      end
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_sub_menu
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._avatar_list_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_alpha
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.New
    L1_3 = "Ui.Avatar.AvatarSelect.AvatarSelectDialog"
    L0_3 = L0_3(L1_3)
    L2_3 = L0_3
    L1_3 = L0_3.init
    L3_3 = A0_2.team_data
    L4_3 = A0_2._avatar_data
    L5_3 = A0_2._team_info_provider
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = L0_3
    L1_3 = L0_3.set_all_avatar_datas
    L3_3 = A0_2._avatar_list_panel
    L4_3 = L3_3
    L3_3 = L3_3.get_avatar_data_list
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = L0_3
    L1_3 = L0_3.register_select_callback
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A0_2._avatar_list_panel
      L2_4 = L1_4
      L1_4 = L1_4._on_avatar_btn_click
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    L1_3(L2_3, L3_3)
    L2_3 = L0_3
    L1_3 = L0_3.register_close_callback
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = A0_2._binder
      L0_4 = L0_4.node_sub_menu
      L1_4 = L0_4
      L0_4 = L0_4.SafeSetActive
      L2_4 = true
      L0_4(L1_4, L2_4)
      L0_4 = A0_2._avatar_list_panel
      L1_4 = L0_4
      L0_4 = L0_4.set_alpha
      L2_4 = 1
      L0_4(L1_4, L2_4)
      L0_4 = G
      L0_4 = L0_4.NotifyManager
      L0_4 = L0_4.notify
      L1_4 = G
      L1_4 = L1_4.CS
      L1_4 = L1_4.NotifyType
      L1_4 = L1_4.UIUnLockCameraZoom
      L2_4 = true
      L0_4(L1_4, L2_4)
    end
    L1_3(L2_3, L3_3)
    L2_3 = L0_3
    L1_3 = L0_3.show
    L1_3(L2_3)
    L1_3 = G
    L1_3 = L1_3.NotifyManager
    L1_3 = L1_3.notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.UIUnLockCameraZoom
    L3_3 = false
    L1_3(L2_3, L3_3)
  end
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_filter_callback
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.is_played_fade_in
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.show_full_screen_block
      L2_3 = 0.7
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L0_3.enabled = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L1_3 = L0_3
      L0_3 = L0_3.ResetClips
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = "AvatarSkillTreeSkillDetailFadeIn"
      L0_3(L1_3, L2_3)
      A0_2.is_played_fade_in = true
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_can_to_special_zoom
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.is_eidolon_played_fade_in
    if not L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L0_3.enabled = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L1_3 = L0_3
      L0_3 = L0_3.ResetClips
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_root
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = "AvatarRankSkillDetailFadeIn"
      L0_3(L1_3, L2_3)
      A0_2.is_eidolon_played_fade_in = true
    end
  end
  function L4_2()
    local L0_3, L1_3, L2_3
    A0_2.is_played_fade_in = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_root
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_root
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "AvatarSkillTreeSkillDetailFadeOut"
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_can_to_special_zoom
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    A0_2.is_eidolon_played_fade_in = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_root
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_root
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "AvatarRankSkillDetailFadeOut"
    L0_3(L1_3, L2_3)
  end
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = G
  L8_2 = L8_2.AvatarSubMenuPanel
  L9_2 = G
  L9_2 = L9_2.AvatarSubMenuVerticalPanelBinder
  L10_2 = A0_2._avatar_data
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  A0_2._avatar_sub_menu_panel = L6_2
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_close_point_detail_callback
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_select_point_callback
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_eidolon_select_point_callback
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_eidolon_close_point_detail_callback
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.register_tab_changed_callback
  L8_2 = A0_2._on_tab_changed_callback
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_menu_id
  L8_2 = A0_2._default_sub_menu_id
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.async_bind
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_sub_menu
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_async_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_sub_menu_load
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._avatar_data
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._bind_btn_callback
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_close
  L9_2 = A0_2._on_btn_close_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._avatar_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.set_display_only
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.IsDisplayOnly
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.switch_avatar
  L8_2 = A0_2._avatar_data
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._default_sub_menu_id
  L7_2 = G
  L7_2 = L7_2.AvatarMainPageSubType
  L7_2 = L7_2.AvatarDetail
  if L6_2 == L7_2 then
    L6_2 = A0_2._avatar_ui3d
    L7_2 = L6_2
    L6_2 = L6_2.show_avatar_main_page_tab
    L8_2 = G
    L8_2 = L8_2.AvatarMainPageSubType
    L8_2 = L8_2.AvatarDetail
    L6_2(L7_2, L8_2)
  end
  A0_2.is_access_replace_page_from_avatar_tab = false
  L7_2 = A0_2
  L6_2 = A0_2._init_ui_navigation
  L6_2(L7_2)
  L6_2 = A0_2._avatar_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.enable_free_look_zoom
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_sub_menu_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_tab_item_by_default_id
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._clear_input_data
  L6_2(L7_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_hide_avatar_list
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_avatar_list
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActiveByScale
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._avatar_list_panel
    if L1_2 ~= nil then
      L1_2 = A0_2._avatar_list_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_hide
      L3_2 = A0_2._is_hide_avatar_list
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2._custom_avatar_data_list
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_avatar_data_list
    L3_2 = A0_2._custom_avatar_data_list
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_avatar_list = L7_1
function L7_1(A0_2)
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
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AdventurePhase
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L1_2.InputController
      L3_2 = L2_2
      L2_2 = L2_2.ClearInputData
      L2_2(L3_2)
    end
  end
end
L0_1._clear_input_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.is_avatar_shown
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.set_display_only
    L4_2 = A0_2._avatar_data
    L4_2 = L4_2.IsDisplayOnly
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.switch_avatar
    L4_2 = A0_2._avatar_data
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._avatar_sub_menu_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_avatar_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_avatar_shown
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.get_ui3d_avatar_data
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._avatar_data
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._avatar_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.set_display_only
      L3_2 = A0_2._avatar_data
      L3_2 = L3_2.IsDisplayOnly
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._avatar_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.switch_avatar
      L3_2 = A0_2._avatar_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_tab_changed_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._avatar_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_ui3d_status
    L2_2(L3_2)
    L2_2 = A0_2._avatar_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_data
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._avatar_list_panel
    L3_2 = L2_2
    L2_2 = L2_2._refresh_scrollview
    L2_2(L3_2)
    L2_2 = A0_2.is_access_replace_page_from_avatar_tab
    if L2_2 == true then
      A0_2.is_access_replace_page_from_avatar_tab = false
      L2_2 = A0_2._avatar_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.show_avatar_main_page_tab
      L4_2 = G
      L4_2 = L4_2.AvatarMainPageSubType
      L4_2 = L4_2.AvatarDetail
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2.is_played_fade_in
    if L2_2 == true then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.CoroutineUtils
      L2_2 = L2_2.InvokeAfterFrames
      L3_2 = 1
      function L4_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        if L0_3 == nil then
          return
        end
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.UIAnimationUtils
        L0_3 = L0_3.PlayFromEnd
        L1_3 = A0_2._binder
        L1_3 = L1_3.animation_root
        L2_3 = "AvatarMainPageFadeIn"
        L0_3(L1_3, L2_3)
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.UIAnimationUtils
        L0_3 = L0_3.PlayFromEnd
        L1_3 = A0_2._binder
        L1_3 = L1_3.animation_root
        L2_3 = "AvatarSkillTreeSkillDetailFadeIn"
        L0_3(L1_3, L2_3)
      end
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2.is_eidolon_played_fade_in
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.CoroutineUtils
      L2_2 = L2_2.InvokeAfterFrames
      L3_2 = 1
      function L4_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        if L0_3 == nil then
          return
        end
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.UIAnimationUtils
        L0_3 = L0_3.PlayFromEnd
        L1_3 = A0_2._binder
        L1_3 = L1_3.animation_root
        L2_3 = "AvatarMainPageFadeIn"
        L0_3(L1_3, L2_3)
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.UIAnimationUtils
        L0_3 = L0_3.PlayFromEnd
        L1_3 = A0_2._binder
        L1_3 = L1_3.animation_root
        L2_3 = "AvatarRankSkillDetailFadeIn"
        L0_3(L1_3, L2_3)
      end
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._avatar_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.enable_free_look_zoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_view_active_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2._refresh_scrollview
  L2_2(L3_2)
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.IsCurHero
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._avatar_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_data
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.switch_avatar
    L4_2 = A0_2._avatar_data
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_player_set_hero_basic_type = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_zoom_1
  L1_2.blocksRaycasts = true
end
L0_1._on_unload = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.is_loaded
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._avatar_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.on_leave_avatar_main_page
      L1_2(L2_2)
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.eidolon_panel
      L2_2 = L1_2
      L1_2 = L1_2.dispose_eidolon
      L1_2(L2_2)
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.dispose_lightcone
      L1_2(L2_2)
    end
  end
  A0_2.is_played_fade_in = nil
  A0_2.is_eidolon_played_fade_in = nil
  A0_2._avatar_data = nil
end
L0_1._on_dispose = L7_1
return L0_1
