local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.AssistMemberEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.DefaultTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.StrangerAssistAvatarSelectTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.StrangerAssistAvatarSelectTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.FriendAssistAvatarSelectTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.FriendAssistAvatarSelectTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistMemberEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
L3_1 = 4
L4_1 = 1
L5_1 = 2
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AssistMemberEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._wait_quit_member = false
  L1_2 = L4_1
  A0_2._init_tab_index = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
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
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._team_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_orig_selected_assist
  L2_2(L3_2)
  L2_2 = A0_2._orig_selected_assist
  A0_2._cur_selected_assist = L2_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = L1_1.StrangerAssistList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.StrangerAssistList
    L5_2 = L5_2[L4_2]
    L6_2 = L1_1.HaveAssist
    if L6_2 then
      L6_2 = L1_1.CurAssistData
      L6_2 = L6_2.PlayerDisplayData
      L6_2 = L6_2.UID
      L7_2 = L5_2.PlayerDisplayData
      L7_2 = L7_2.UID
      if L6_2 == L7_2 then
        L6_2 = L1_1.CurAssistAvatarData
        L6_2 = L6_2.ID
        L7_2 = L5_2.AvatarData
        L7_2 = L7_2.ID
        if L6_2 == L7_2 then
          A0_2._orig_selected_assist = L5_2
          L6_2 = L5_1
          A0_2._init_tab_index = L6_2
          return
        end
      end
    end
  end
  L1_2 = L1_1.FriendAssistList
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = L1_1.HaveAssist
    if L1_2 then
      L1_2 = L1_1.CurAssistData
      L1_2 = L1_2.PlayerDisplayData
      L1_2 = L1_2.UID
      L2_2 = L1_1.FriendAssistList
      L2_2 = L2_2[0]
      L2_2 = L2_2.PlayerDisplayData
      L2_2 = L2_2.UID
      if L1_2 == L2_2 then
        L1_2 = L1_1.CurAssistAvatarData
        L1_2 = L1_2.ID
        L2_2 = L1_1.FriendAssistList
        L2_2 = L2_2[0]
        L2_2 = L2_2.AvatarData
        L2_2 = L2_2.ID
        if L1_2 == L2_2 then
          L1_2 = assistData
          A0_2._orig_selected_assist = L1_2
          L1_2 = L4_1
          A0_2._init_tab_index = L1_2
          return
        end
      end
    end
  end
  A0_2._orig_selected_assist = nil
end
L0_1._init_orig_selected_assist = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._init_tab_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar
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
  L3_2 = L3_2.btn_left_tab
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_tab
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefreshAdv
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.node_assist_list_tab
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1._init_tab = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FriendAssistAvatarSelectTabItem
  L4_2 = G
  L4_2 = L4_2.FriendAssistAvatarSelectTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._friend_tab = L1_2
  L1_2 = A0_2._friend_tab
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_assist_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._friend_tab
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_assist_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._friend_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.StrangerAssistAvatarSelectTabItem
  L4_2 = G
  L4_2 = L4_2.StrangerAssistAvatarSelectTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._stranger_tab = L1_2
  L1_2 = A0_2._stranger_tab
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_assist_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stranger_tab
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_assist_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._stranger_tab
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.remove_avatar_selected_eff
  L3_2 = L3_1
  L4_2 = A0_2._cur_selected_assist
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_assist
  L3_2 = A0_2._cur_selected_assist
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._wait_quit_member
  if L1_2 then
    L1_2 = A0_2._team_data
    L2_2 = L1_2
    L1_2 = L1_2.GetAssistMember
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._assist_member_cache
      if L1_2 ~= L2_2 then
        L2_2 = L1_2.AvatarData
        L3_2 = A0_2._team_data
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.CoroutineUtils
        L4_2 = L4_2.InvokeAfterSeconds
        L5_2 = 0.5
        function L6_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.Client
          L0_3 = L0_3.GlobalVars
          L0_3 = L0_3.s_AudioManager
          L1_3 = L0_3
          L0_3 = L0_3.TryPlayJoinTeamCharacterVO
          L2_3 = L2_2
          L3_3 = L3_2
          L0_3(L1_3, L2_3, L3_3)
        end
        L4_2(L5_2, L6_2)
        A0_2._wait_quit_member = false
        L5_2 = A0_2
        L4_2 = A0_2.exit
        L4_2(L5_2)
      end
    end
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_assist
  if L2_2 ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_cur_assist
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_assist_changed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_selected_assist = A1_2
  L2_2 = A0_2._cur_selected_assist
  if L2_2 == nil then
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_empty_show
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_avatar_show
    L4_2 = L3_1
    L5_2 = A0_2._cur_selected_assist
    L5_2 = L5_2.AvatarData
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._set_cur_assist = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_selected_assist
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L2_2.IsInFakeDisableState = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_detail_btn
  L2_2(L3_2)
  L2_2 = A0_2._orig_selected_assist
  L2_2 = L2_2 ~= nil
  if L1_2 then
    L3_2 = A0_2._cur_selected_assist
    L4_2 = A0_2._orig_selected_assist
    L3_2 = L3_2 == L4_2
    L5_2 = A0_2
    L4_2 = A0_2._refresh_avatar_info
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_confirm
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_Teamedit_Join"
    L4_2(L5_2, L6_2)
    if L2_2 and L3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_confirm
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_Teamedit_Leave"
      L4_2(L5_2, L6_2)
      return
    end
  end
end
L0_1._refresh = L6_1
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsType
  L5_2 = L1_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.BattleGamePhase
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_detail_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_assist
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_member_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_selected_assist
  L3_2 = L3_2.AvatarData
  L1_2(L2_2, L3_2)
end
L0_1._refresh_avatar_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_confirm_disable_click
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_confirm_click
    L1_2(L2_2)
  end
end
L0_1._on_btn_confirm = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._cur_selected_assist
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_selected_assist
  L2_2 = A0_2._orig_selected_assist
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.RemoveAssistAvatar
    L1_2(L2_2)
  else
    L1_2 = nil
    L2_2 = false
    L3_2 = 1
    L4_2 = L3_1
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._team_data
      L8_2 = L7_2
      L7_2 = L7_2.GetMemberData
      L9_2 = L6_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = L7_2.AvatarData
        L8_2 = L8_2.ID
        L9_2 = A0_2._cur_selected_assist
        L9_2 = L9_2.AvatarData
        L9_2 = L9_2.ID
        if L8_2 == L9_2 then
          L1_2 = L7_2
        else
          L2_2 = true
        end
      end
    end
    if L1_2 ~= nil then
      if L2_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.ConfirmDialogUtil
        L3_2 = L3_2.ShowOkCancelHint
        L4_2 = "UIText_Assist_Hint_SameChar_Confirm"
        L5_2 = ""
        function L6_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3
          if A0_3 then
            L1_3 = L2_1
            L2_3 = L1_3
            L1_3 = L1_3.QuitMemberFromTeam
            L3_3 = A0_2._team_data
            L4_3 = L1_2.AvatarData
            L4_3 = L4_3.ID
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = A0_2
            L2_3 = L1_3
            L1_3 = L1_3._add_assist_member
            L1_3(L2_3)
          end
        end
        L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.UIPileToastMessageTextID
        L5_2 = " UIText_TeamEdit_LimitHint"
        L3_2(L4_2, L5_2)
      end
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2._add_assist_member
    L3_2(L4_2)
  end
end
L0_1._on_btn_confirm_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
  end
end
L0_1._select_prev = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
  end
end
L0_1._select_next = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.AddAssistAvatar
  L3_2 = A0_2._cur_selected_assist
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._team_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistMember
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    A0_2._assist_member_cache = L1_2
  end
  A0_2._wait_quit_member = true
end
L0_1._add_assist_member = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Assist_Hint_SameChar"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_disable_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.on_show_avatar_main_page
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Avatar.AvatarMainPage"
  L3_2 = nil
  L4_2 = 1
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = G
  L6_2 = L6_2.DefaultTeamInfoProvider
  L7_2 = A0_2._team_data
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._cur_selected_assist
  L6_2 = L6_2.AvatarData
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.hide_avatar_list
  L2_2(L3_2)
end
L0_1._on_btn_detail_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_cur_assist
    L4_2 = A0_2._cur_selected_assist
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_stranger_btn_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._stranger_tab
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_friend_btn_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._friend_tab
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_select = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._team_data = nil
  A0_2._cur_selected_assist = nil
  A0_2._orig_selected_assist = nil
end
L0_1._on_dispose = L6_1
return L0_1
