local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueInitAvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._selected_avatars = L1_2
end
L0_1.ctor = L1_1
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
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1._top_avatars = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_obtained_avatars
  return L1_2()
end
L0_1._all_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_displayed_avatars
  L1_2 = L1_2(L2_2)
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.has_display_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L0_1.register_selection_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetStartRogueAvatarMaxNumber
  return L1_2()
end
L0_1.get_max_selection_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._all_avatars
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 ~= nil then
    L3_2 = #A1_2
    if L3_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  if A2_2 == nil then
    A2_2 = #A1_2
  end
  L3_2 = 1
  L4_2 = A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 ~= nil then
      L9_2 = A0_2
      L8_2 = A0_2._try_select_avatar_by_index
      L10_2 = L7_2
      L11_2 = L6_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.panel_avatar_select
      L9_2 = L8_2
      L8_2 = L8_2.refresh_displayed_avatars
      L8_2(L9_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_view
    L0_3(L1_3)
  end
  L3_2(L4_2)
end
L0_1.set_selected_avatars_from_record = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
end
L0_1.refresh_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_click_avatar
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.try_click_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L4_2 = A0_2
    L3_2 = A0_2._all_avatars
    L3_2 = L3_2(L4_2)
    L3_2 = #L3_2
    L3_2 = L3_2 == 0
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_sorted = L1_1
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
function L1_1(A0_2, A1_2, A2_2)
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
  L6_2 = A1_2
  L5_2 = A1_2.set_blood_hp
  L7_2 = 1.0
  L5_2(L6_2, L7_2)
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2.get_max_selection_count
  L3_2 = L3_2(L4_2)
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
L0_1._get_selected_index = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_trigger_avatar = A1_2
end
L0_1._on_trigger_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
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
L0_1._on_click_avatar = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._update_selected_avatars = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._selected_avatars
  L3_2[A2_2] = A1_2
end
L0_1._try_select_avatar_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
end
L0_1._try_unselect_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = nil
  L4_2 = 1
  L6_2 = A0_2
  L5_2 = A0_2.get_max_selection_count
  L5_2 = L5_2(L6_2)
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
L0_1._try_select_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
    L1_2 = pairs
    L2_2 = A0_2._selected_avatars
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      if L5_2 ~= nil then
        return L5_2
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._all_avatars
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._all_avatars
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2[1]
      if L1_2 then
        goto lbl_33
      end
    end
    L1_2 = nil
    ::lbl_33::
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
