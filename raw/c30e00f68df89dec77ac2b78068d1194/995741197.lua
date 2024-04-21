local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = 4
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FightActivitySelectPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
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
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._trial_avatar_data = A2_2
  A0_2._selected_avatars = A1_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L1_1.register_selection_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars
  L1_2 = L1_2()
  L2_2 = A0_2._trial_avatar_data
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2._trial_avatar_data
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_select
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
end
L1_1.refresh_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
L1_1._on_get_avatar_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
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
L1_1._setup_icon_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = L0_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.AvatarUtils
    L7_2 = L7_2.is_same_avatar
    L8_2 = A1_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L1_1._get_selected_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.shallow_copy
  L2_2 = A0_2._selected_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._trial_avatar_data
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = L1_2
    L4_2 = A0_2._trial_avatar_data
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = A0_2._trial_avatar_data
      L2_2(L3_2, L4_2)
    end
  end
  return L1_2
end
L1_1._top_avatars = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._update_selected_avatars
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
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
  L7_2 = A0_2._selected_avatars
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._on_click_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_unselect_avatar
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_select
  L4_2 = L3_2
  L3_2 = L3_2.refresh_displayed_avatars
  L3_2(L4_2)
end
L1_1.unselect_avatar_by_out = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_unselect_avatar
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._try_select_avatar
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._update_selected_avatars = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
end
L1_1._try_unselect_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = nil
  L4_2 = 1
  L5_2 = L0_1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._selected_avatars
    L8_2 = L8_2[L7_2]
    if L8_2 == nil and L3_2 == nil then
      L3_2 = L7_2
    end
    if L8_2 ~= nil then
      L9_2 = L8_2.ID
      L10_2 = A1_2.ID
      if L9_2 == L10_2 then
        L2_2 = true
      end
    end
  end
  L4_2 = L3_2 ~= nil
  if not L4_2 then
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UIPileToastMessageTextID
    L7_2 = "UITextmap_TeamEditPage_Toast_MaxCount"
    L5_2(L6_2, L7_2)
    return
  end
  if L2_2 then
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UIPileToastMessageTextID
    L7_2 = "UITextmap_TeamEditPage_Toast_SameAvatar"
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = A0_2._selected_avatars
  L5_2[L3_2] = A1_2
end
L1_1._try_select_avatar = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L1_1.get_selected_avatars = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = L0_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_avatars
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L1_1.is_selection_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
