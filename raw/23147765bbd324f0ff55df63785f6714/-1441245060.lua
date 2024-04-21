local L0_1, L1_1, L2_1, L3_1, L4_1
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
L1_1 = "TreasureDungeonAvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TreasureDungeon_Stage_AvatarDead"
L2_1 = "UITextmap_TeamEditPage_Toast_MaxCount"
L3_1 = "UITextmap_TeamEditPage_Toast_SameAvatar"
function L4_1(A0_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.set_customed_compare
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._check_hp_is_zero
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    L1_3 = not L1_3
    return L1_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = {}
  A0_2._all_avatars = L4_2
  A0_2._is_show_hp = true
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.AvatarData
    L10_2 = A0_2._all_avatars
    L11_2 = A0_2._all_avatars
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L10_2[L11_2] = L9_2
  end
  L4_2 = {}
  A0_2._selected_avatars = L4_2
  if A2_2 ~= nil then
    L4_2 = ipairs
    L5_2 = A2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = A0_2._selected_avatars
      L10_2 = A0_2._selected_avatars
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L11_2 = L8_2.AvatarData
      L9_2[L10_2] = L11_2
    end
  end
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = 4
  end
  A0_2._selection_count = L4_2
  L4_2 = A0_2._all_avatars
  A0_2._display_avatars = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_all_member_hp
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_avatar_select
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._display_avatars
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view_by_members = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._member_hp_map = L2_2
  L2_2 = {}
  A0_2._member_hp_map_trial = L2_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.LeftHPRatio
    L8_2 = L7_2
    L7_2 = L7_2.ToFloat
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.IsTrialPlayer
    if L8_2 then
      L8_2 = A0_2._member_hp_map_trial
      L9_2 = L6_2.AvatarID
      L8_2[L9_2] = L7_2
    else
      L8_2 = A0_2._member_hp_map
      L9_2 = L6_2.AvatarID
      L8_2[L9_2] = L7_2
    end
  end
end
L0_1._init_all_member_hp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IsTrialPlayer
  if L2_2 then
    L2_2 = A0_2._member_hp_map_trial
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    return L2_2
  else
    L2_2 = A0_2._member_hp_map
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    return L2_2
  end
end
L0_1._get_avatar_hp = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1.get_selection = L4_1
function L4_1(A0_2)
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
L0_1.is_selection_full = L4_1
function L4_1(A0_2)
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
L0_1.is_selection_empty = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_avatars
  return L1_2
end
L0_1.get_all_avatars = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_select_view
  L3_2 = A0_2._selection_count
  L4_2 = A0_2._selected_avatars
  L5_2 = A0_2._on_click_avatar
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
L0_1._on_get_avatar_item = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1._on_get_top_avatars = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
end
L0_1._on_click_avatar = L4_1
function L4_1(A0_2, A1_2)
  A0_2._cur_trigger_avatar = A1_2
end
L0_1._on_trigger_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = A0_2._is_show_hp
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._check_hp_is_zero
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
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
  end
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
        L10_2 = L3_1
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
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._selected_avatars
  L3_2[L2_2] = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._try_select_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_hp
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L2_2 == 0
  return L3_2
end
L0_1._check_hp_is_zero = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._try_unselect_avatar = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  L7_2 = A0_2._is_show_hp
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._is_show_hp
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._get_avatar_hp
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A1_2
    L6_2 = A1_2.set_blood_hp
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A1_2
    L6_2 = A1_2.setup_dead_view
    L8_2 = L5_2 == 0
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_icon_view = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._get_selected_index = L4_1
function L4_1(A0_2)
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
L0_1.get_show_first_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
return L0_1
