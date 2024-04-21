local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectMembersTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectTeamListTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_tabs
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._members_tabitem
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._team_list_tabitem
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_team
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSelectMembersTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarSelectMembersTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._members_tabitem = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSelectTeamListTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarSelectTeamListTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._team_list_tabitem = L1_2
  L1_2 = A0_2._members_tabitem
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_members_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._team_list_tabitem
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_teams_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._members_tabitem
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_members
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._team_list_tabitem
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_teams
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._init_tabs = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._members_tabitem
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.enable_async
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_async = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._enable_tabs = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_gamepad_left
    L5_2 = A0_2._on_btn_gamepad_left
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_gamepad_right
    L5_2 = A0_2._on_btn_gamepad_right
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.show_tabs = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.set_custom_get_avatar_item_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_top_avatar_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_top_avatar_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_sorted_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_sorted_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_async_shown_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_async_shown_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._team_list_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_avatar_setup_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_avatar_setup_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_avatar_setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._team_list_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_team_setup_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_team_setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_avatar_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_avatar_strategy = A1_2
  A0_2._click_team_strategy = A2_2
end
L0_1.set_select_strategy = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._members_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.set_customed_compare
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_customed_compare = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.move_to_avatar
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_to_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._members_tabitem
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.refresh_displayed_avatars
  L2_2(L3_2)
end
L0_1.refresh_displayed_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._team_list_tabitem
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._team_list_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1.refresh_team_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.refresh
    L2_2(L3_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._members_tabitem
  L2_2 = L1_2
  L1_2 = L1_2.get_displayed_avatars
  return L1_2(L2_2)
end
L0_1.get_displayed_avatars = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._click_avatar_strategy
  if L3_2 ~= nil then
    L3_2 = A0_2._click_avatar_strategy
    L4_2 = L3_2
    L3_2 = L3_2.do_select
    L5_2 = {}
    L6_2 = A1_2
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._click_team_strategy
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SDKLuaReportAdapter
    L2_2 = L2_2.ReportTeamEditSelectLineup
    L3_2 = A0_2._owner
    L3_2 = L3_2.__name
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.TeamDataUtils
    L2_2 = L2_2.get_avatar_list_from_team_data
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._click_team_strategy
    L4_2 = L3_2
    L3_2 = L3_2.do_select
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_team = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.get_avatar_selected_object
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_avatar_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._members_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_object
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
  end
end
L0_1._on_btn_gamepad_left = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
  end
end
L0_1._on_btn_gamepad_right = L1_1
return L0_1
