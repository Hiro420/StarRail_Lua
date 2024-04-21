local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberMultiListSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberMultiListSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._on_get_avatar_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.register_top_avatar_callback
  L3_2 = A0_2._top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.register_sorted_callback
  L3_2 = A0_2._on_sorted
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._team_data = A4_2
  A0_2._selected_avatar = A3_2
  A0_2._all_avatar_table_list = A1_2
  A0_2._title_list = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L0_1.register_selection_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_select
  L4_2 = L3_2
  L3_2 = L3_2.register_async_shown_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_async_shown_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._title_list
  L4_2 = A0_2._all_avatar_table_list
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
end
L0_1.refresh_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconLitePanel
    L9_2 = G
    L9_2 = L9_2.AvatarItemIconLitePanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
    L7_2 = L5_2
    L6_2 = L5_2.setup_auto_click
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_click_avatar
    L9_2 = A0_2
    L10_2 = A2_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_select_trigger_callback
    L8_2 = A0_2._on_trigger_avatar
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2._setup_icon_view
  L8_2 = L5_2
  L9_2 = A3_2
  L6_2(L7_2, L8_2, L9_2)
  return L4_2
end
L0_1._on_get_avatar_item = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_trigger_avatar = A1_2
end
L0_1._on_trigger_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.is_avatar_in_team
  L4_2 = A2_2
  L5_2 = A0_2._team_data
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.is_same_avatar
  L5_2 = A2_2
  L6_2 = A0_2._selected_avatar
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = A2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = nil
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A1_2
  L5_2 = A1_2.set_show_hp
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatars_in_team
  L2_2 = A0_2._team_data
  return L1_2(L2_2)
end
L0_1._top_avatars = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._selected_avatar
  if L4_2 ~= A1_2 then
    A0_2._selected_avatar = A1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_avatar_select
    L5_2 = L4_2
    L4_2 = L4_2.refresh_displayed_avatars
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._selection_callback
    L6_2 = A0_2._selection_handler
    L7_2 = A0_2._selected_avatar
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._on_click_avatar = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatar
  return L1_2
end
L0_1.get_selected_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_avatar_selected_object
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target_by_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone1
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_sorted = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_avatar_selected_object
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.is_active
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_select
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  do return L2_2(L3_2) end
  goto lbl_19
  ::lbl_18::
  do return L1_2 end
  ::lbl_19::
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_avatar_selected_object
  L3_2 = A0_2._selected_avatar
  return L1_2(L2_2, L3_2)
end
L0_1.get_avatar_selected_object = L1_1
return L0_1
