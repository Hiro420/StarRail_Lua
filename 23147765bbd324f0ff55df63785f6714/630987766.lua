local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaAvatarSubMenuVerticalPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaAvatarSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.DefaultTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaAvatarDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.GachaModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaAvatarDetailPageBinder
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
  L3_2 = L3_2.Gacha
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L1_2 = L1_2.config
  L1_2.is_async_load = false
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_display_only
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._pause_game = true
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
  A0_2._avatar_list_enable = true
  A0_2.is_played_fade_in = false
  A0_2.is_eidolon_played_fade_in = false
  A0_2._default_sub_menu_id = 1
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
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 ~= nil then
    A0_2._avatar_list_enable = A2_2
  end
  L3_2 = A0_2._avatar_list_enable
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_avatar_list
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._avatar_data
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.CreateGachaData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A0_2._avatar_data = L3_2
    L3_2 = A0_2._avatar_data
    if L3_2 == nil then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "avatar Config not found! avatar id: "
      L5_2 = A1_2
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      return
    end
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._avatar_sub_menu_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_object
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2._is_can_back_zoom
  if L3_2 == nil then
    L3_2 = true
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2._is_can_back_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_back_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
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
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._avatar_ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.enable_free_look_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2, A1_2)
  A0_2._show_avatar_data_list = A1_2
end
L0_1.set_show_avatar_data_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._avatar_list = L2_2
  L2_2 = A0_2._show_avatar_data_list
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetAvatarDetailList
    L2_2 = L2_2(L3_2)
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.ID
    if L7_2 == A1_2 then
      L7_2 = L2_2[L6_2]
      A0_2._avatar_data = L7_2
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._avatar_list
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1._get_avatar_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_avatar_panel
  L1_2(L2_2)
  L1_2 = A0_2._avatar_list_enable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_avatar_list_panel
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "AvatarListPanel GachaAvatarDetailPage _setup_view(): init_scroll_view()"
    L1_2(L2_2)
    L1_2 = A0_2._avatar_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.init_scroll_view
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_3d_panel
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
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
L0_1._on_sub_menu_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_sub_menu_panel
    if L1_2 == nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = 0.25
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
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = 0.25
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
  function L3_2()
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
  function L4_2()
    local L0_3, L1_3, L2_3
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
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.GachaAvatarSubMenuPanel
  L8_2 = G
  L8_2 = L8_2.GachaAvatarSubMenuVerticalPanelBinder
  L9_2 = A0_2._avatar_data
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2._avatar_sub_menu_panel = L5_2
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_close_point_detail_callback
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_select_point_callback
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_eidolon_select_point_callback
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_eidolon_close_point_detail_callback
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.async_bind
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_sub_menu
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_menu_id
  L7_2 = A0_2._default_sub_menu_id
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_async_callback
  L7_2 = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_sub_menu_load
    L0_3(L1_3)
    L0_3 = A0_2._avatar_sub_menu_panel
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L2_3 = A0_2._avatar_data
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._create_avatar_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DefaultTeamInfoProvider
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TeamModule
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentTeam
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AvatarListPanel
  L5_2 = G
  L5_2 = L5_2.AvatarListPanelBinder
  L6_2 = A0_2._avatar_data
  L7_2 = L1_2
  L8_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._avatar_list_panel = L2_2
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_avatar_data_list
  L4_2 = A0_2._avatar_list
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_team_mark_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_filter_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_red_dot_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    A0_2._avatar_data = A0_3
    L1_3 = A0_2._avatar_ui3d
    L2_3 = L1_3
    L1_3 = L1_3.switch_avatar
    L3_3 = A0_2._avatar_data
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._avatar_sub_menu_panel
    L2_3 = L1_3
    L1_3 = L1_3.setup_view
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.force_set_default_navigation_target
    L1_3(L2_3)
  end
  L3_2 = A0_2._avatar_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._avatar_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.async_bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_avatar_list
  L3_2(L4_2, L5_2)
end
L0_1._create_avatar_list_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatar_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_avatar
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_avatar_main_page_tab
  L3_2 = G
  L3_2 = L3_2.AvatarMainPageSubType
  L3_2 = L3_2.AvatarDetail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_lightcone
  L1_2(L2_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.enable_free_look_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_3d_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  L1_2 = L1_2.eidolon_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_eidolon
  L1_2(L2_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_avatar_main_page_tab
  L3_2 = G
  L3_2 = L3_2.AvatarMainPageSubType
  L3_2 = L3_2.SkillTree
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.refresh_skill_tree_sub_tab
  L1_2(L2_2)
  A0_2._avatar_list = nil
end
L0_1._on_dispose = L2_1
return L0_1
