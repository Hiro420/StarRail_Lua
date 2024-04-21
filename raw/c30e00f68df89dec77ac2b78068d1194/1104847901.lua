local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberMultiListMultiSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberMultiListMultiSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UITextmap_TeamEditPage_Toast_MaxCount"
L2_1 = "UITextmap_TeamEditPage_Toast_SameAvatar"
function L3_1(A0_2)
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
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = {}
  end
  A0_2._selected_avatars = L4_2
  A0_2._selection_count = 4
  A0_2._all_avatar_table_list = A1_2
  A0_2._title_list = A2_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._title_list
  L4_2 = A0_2._all_avatar_table_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1.get_selected_avatars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._selection_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_avatars
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_selection_full = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._selection_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_avatars
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_selection_empty = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_avatars
  return L1_2
end
L0_1.get_all_avatars = L3_1
function L3_1(A0_2, A1_2)
  A0_2.show_damage_type = A1_2
end
L0_1.set_show_damage_type = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L0_1.register_selection_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
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
    L8_2 = false
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
L0_1._on_get_avatar_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.get_top_callback
  if L1_2 ~= nil then
    L1_2 = A0_2.get_top_callback
    L2_2 = A0_2.get_top_callback_listener
    return L1_2(L2_2)
  end
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1._on_get_top_avatars = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2.get_top_callback = A1_2
  A0_2.get_top_callback_listener = A2_2
end
L0_1.overrider_get_top_avatars = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_click_avatar
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._try_select_avatar
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_unselect_avatar
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._selection_callback
  L5_2 = A0_2._selection_handler
  L6_2 = A0_2._selected_avatars
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_click_avatar = L3_1
function L3_1(A0_2, A1_2)
  A0_2._cur_trigger_avatar = A1_2
end
L0_1._on_trigger_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._selection_count
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._selected_avatars
    L7_2 = L7_2[L6_2]
    if L7_2 == nil then
      if not L2_2 then
        L2_2 = L6_2
      end
    else
      L8_2 = L7_2.ID
      L9_2 = A1_2.ID
      if L8_2 == L9_2 then
        L8_2 = G
        L8_2 = L8_2.NotifyManager
        L8_2 = L8_2.notify
        L9_2 = G
        L9_2 = L9_2.CS
        L9_2 = L9_2.NotifyType
        L9_2 = L9_2.UIPileToastMessageTextID
        L10_2 = L2_1
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L1_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._selected_avatars
  L3_2[L2_2] = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._try_select_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._try_unselect_avatar = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
  L5_2 = A0_2.show_damage_type
  if L5_2 ~= nil then
    L6_2 = A1_2
    L5_2 = A1_2.set_show_damage_type
    L7_2 = A0_2.show_damage_type
    L5_2(L6_2, L7_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = A2_2
  L8_2 = false
  L9_2 = L4_2
  L10_2 = nil
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_order
  L7_2 = L4_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A1_2
  L5_2 = A1_2.set_show_hp
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1._setup_icon_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._selection_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_selected_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
    L1_2 = 1
    L2_2 = A0_2._selection_count
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._selected_avatars
      L5_2 = L5_2[L4_2]
      if L5_2 ~= nil then
        return L5_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_show_first_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
return L0_1
