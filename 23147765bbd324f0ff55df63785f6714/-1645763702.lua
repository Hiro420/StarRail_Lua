local L0_1, L1_1, L2_1, L3_1
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
L1_1 = "Ui.Team.MemberEdit.DefaultTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.VirtualTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.RaidTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = 4
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TeamMemberMultiSelectPanel"
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
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._team_data = A1_2
  A0_2._selected_avatars = A2_2
  A0_2._team_data_provider = A3_2
  L4_2 = A0_2._team_data_provider
  L5_2 = L4_2
  L4_2 = L4_2.get_operation_provider
  L4_2 = L4_2(L5_2)
  A0_2._member_operation = L4_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2)
  A0_2._has_trial_avatar = true
  A0_2._trial_avatar_tb = A1_2
end
L1_1.add_trial_avatars = L2_1
function L2_1(A0_2, A1_2)
  A0_2._allow_switch_trial_avatar = A1_2
end
L1_1.allow_update_trial_avatars = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L1_1.register_selection_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._team_data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_select
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._limit_index_list = A1_2
end
L1_1.setup_limit_index_list = L2_1
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
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.AvatarUtils
  L5_2 = L5_2.get_avatar_hp_percent
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L7_2 = A1_2
  L6_2 = A1_2.set_blood_hp
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.setup_dead_view
  L8_2 = L5_2 == 0
  L6_2(L7_2, L8_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2._team_data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_top_avatars
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2._selected_avatars
    return L2_2
  else
    L2_2 = {}
    L3_2 = pairs
    L4_2 = A0_2._selected_avatars
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = ipairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = false
      L9_2 = ipairs
      L10_2 = L2_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = G
        L14_2 = L14_2.AvatarUtils
        L14_2 = L14_2.is_same_avatar
        L15_2 = L7_2
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L8_2 = true
        end
      end
      if not L8_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
    return L2_2
  end
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
    L4_2 = A0_2._limit_index_list
    if L4_2 then
      L4_2 = A0_2._limit_index_list
      L4_2 = #L4_2
      if 0 < L4_2 then
        L4_2 = G
        L4_2 = L4_2.Utils
        L4_2 = L4_2.get_table_length
        L5_2 = A0_2._selected_avatars
        L4_2 = L4_2(L5_2)
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.get_min_by_table
        L6_2 = A0_2._limit_index_list
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 - 1
        if L4_2 == L5_2 then
          L4_2 = G
          L4_2 = L4_2.TextmapStatic
          L4_2 = L4_2.GetText
          L5_2 = "UIText_TeamEdit_MaxMemberNum_Tip"
          L6_2 = L0_1
          L7_2 = A0_2._limit_index_list
          L7_2 = #L7_2
          L6_2 = L6_2 - L7_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = G
          L5_2 = L5_2.NotifyManager
          L5_2 = L5_2.notify
          L6_2 = G
          L6_2 = L6_2.CS
          L6_2 = L6_2.NotifyType
          L6_2 = L6_2.UIPileToastMessageString
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        else
          L5_2 = A0_2
          L4_2 = A0_2._try_select_avatar
          L6_2 = A1_2
          L4_2(L5_2, L6_2)
        end
    end
    else
      L5_2 = A0_2
      L4_2 = A0_2._try_select_avatar
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L1_1._update_selected_avatars = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._selected_avatars
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._member_operation
  L4_2 = L3_2
  L3_2 = L3_2.can_leave_avatar
  L5_2 = L2_2
  L6_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UITextmap_TeamEditPage_Toast_Unchange"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._selected_avatars
  L3_2[A1_2] = nil
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
