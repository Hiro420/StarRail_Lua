local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailStoryTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_unlock = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_empty
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_entry = A2_2
  L3_2 = A2_2.IsUnlock
  A0_2._is_unlock = L3_2
  L3_2 = A0_2._is_unlock
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_all_entries
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_red_dot
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._avatar_entry
  L1_2 = L1_2.StoryEntryList
  L2_2 = {}
  A0_2._all_entries = L2_2
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L7_2 = L6_2.IsHide
      if not L7_2 then
        L7_2 = A0_2._all_entries
        L8_2 = A0_2._all_entries
        L8_2 = #L8_2
        L8_2 = L8_2 + 1
        L7_2[L8_2] = L6_2
      end
    end
    L2_2 = table
    L2_2 = L2_2.sort
    L3_2 = A0_2._all_entries
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.SortID
      L3_3 = A1_3.SortID
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1._init_all_entries = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AvatarStoryTab"
  L4_2 = A0_2._avatar_entry
  L4_2 = L4_2.RedDotKey
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._try_bind_red_dot = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_unlock
  return L1_2
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_show = true
  L1_2 = A0_2._avatar_entry
  L2_2 = L1_2
  L1_2 = L1_2.OnStoryTabClick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_content_panel
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_story_list
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._all_entries
  L1_2 = #L1_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.story_panel_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 > L1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.safe_set_active
      L9_2 = false
      L7_2(L8_2, L9_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.safe_set_active
      L9_2 = true
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = A0_2._all_entries
      L9_2 = L9_2[L5_2]
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.register_click_callback
      L9_2 = A0_2._on_item_click
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_story_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._avatar_entry
  L3_2 = L2_2
  L2_2 = L2_2.OnEntryClick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_content_panel
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._all_entries
  L5_2 = A1_2
  L6_2 = A0_2._avatar_entry
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_show
  if L3_2 == A1_2 then
    return
  end
  A0_2._is_show = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_story_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._callback
    L5_2 = A0_2._callback_self
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._avatar_ui3d
  if L3_2 then
    L3_2 = A0_2._avatar_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.show_avatar_main_page_tab
    L5_2 = G
    L5_2 = L5_2.AvatarMainPageSubType
    L5_2 = L5_2.Story
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._show_content_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_content_panel
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_content_panel
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_empty = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_in_zone3
    if not L2_2 then
      L2_2 = A0_2._is_show
    end
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_btn_back
      L2_2(L3_2)
      A0_2._is_in_zone3 = false
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._is_in_zone3
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._on_btn_back
        L2_2(L3_2)
        A0_2._is_in_zone3 = false
      end
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 31
      L2_2(L3_2, L4_2)
    else
      L2_2 = NavigationZoneType
      L2_2 = L2_2.Zone3
      if A1_2 == L2_2 then
        A0_2._is_in_zone3 = true
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._binder
        L4_2 = L4_2.content_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_first_selected_object
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = 33
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.story_panel_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
