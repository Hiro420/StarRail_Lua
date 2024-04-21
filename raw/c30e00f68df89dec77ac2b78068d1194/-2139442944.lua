local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarSelectTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarSelectTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonJoinAvatarSelectPanel"
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
  L3_2 = A0_2._on_get_top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._all_avatars = A1_2
  A0_2._cur_avatars = A2_2
  A0_2._selected_avatar = nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_select
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._all_avatars
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view_by_avatars = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatar
  return L1_2
end
L0_1.get_selection = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_avatars
  return L1_2
end
L0_1.get_all_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._all_avatars
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_btn_list
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_avatar_select
    L3_2 = L2_2
    L2_2 = L2_2.refresh_displayed_avatars
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_select_view
  L4_2 = 1
  L5_2 = {}
  L6_2 = A0_2._selected_avatar
  L5_2[1] = L6_2
  L6_2 = A0_2._on_click_avatar
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_team_view
  L4_2 = A0_2._cur_avatars
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarItemIconLitePanel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.setup_auto_click
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar
    L8_2 = A0_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_select_trigger_callback
    L7_2 = A0_2._on_trigger_avatar
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_avatar_select
  L6_2 = L5_2
  L5_2 = L5_2.get_displayed_avatars
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_icon_view
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_get_avatar_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = A0_2._selected_avatar
  L1_2[1] = L2_2
  return L1_2
end
L0_1._on_get_top_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._selected_avatar
  if L2_2 == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_unselect_avatar
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_select_avatar
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_avatar = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_trigger_avatar = A1_2
end
L0_1._on_trigger_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_avatar = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._try_select_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._selected_avatar = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._try_unselect_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._selected_avatar
  L3_2 = A2_2 == L3_2
  L5_2 = A1_2
  L4_2 = A1_2.setup_view
  L6_2 = A2_2
  L7_2 = false
  L8_2 = L3_2
  L9_2 = nil
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A1_2
  L4_2 = A1_2.setup_checked
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_show_hp
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2)
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
      L1_2 = A0_2._cur_trigger_avatar
      return L1_2
  end
  else
    L1_2 = A0_2._selected_avatar
    return L1_2
  end
end
L0_1.get_show_first_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
