local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveVoiceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveVoiceItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailVoiceSecondTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailVoiceSecondTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailVoiceTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
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
  L3_2 = L3_2.btn_empty_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._try_end_entry
  L3_2(L4_2)
  L3_2 = A2_2.IsUnlock
  if not L3_2 then
    return
  end
  L4_2 = A2_2
  L3_2 = A2_2.GetVoiceActorName
  L3_2 = L3_2(L4_2)
  A0_2._cv_name = L3_2
  A0_2._avatar_entry = A2_2
  L3_2 = A0_2._voice_tab_control
  if L3_2 ~= nil then
    L3_2 = A0_2._avatar_entry
    L3_2 = L3_2.IsUnlock
    if L3_2 then
      L3_2 = A0_2._voice_tab_control
      L4_2 = L3_2
      L3_2 = L3_2.item_count
      L3_2 = L3_2(L4_2)
      L4_2 = 1
      L5_2 = L3_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = A0_2._voice_tab_control
        L9_2 = L8_2
        L8_2 = L8_2.find_item
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 ~= nil then
          L10_2 = L8_2
          L9_2 = L8_2.refresh
          L11_2 = A0_2._avatar_entry
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_red_dot
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AvatarVoiceTab"
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
  L1_2 = A0_2._avatar_entry
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._avatar_entry
  L1_2 = L1_2.IsUnlock
  return L1_2
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.Voice
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._voice_tab_control
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_second_tab_control
    L1_2(L2_2)
    L1_2 = A0_2._voice_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  A0_2._cur_entry = nil
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_entry
  L2_2 = L1_2
  L1_2 = L1_2.OnVoiceTabClick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._voice_tab_control = L1_2
  L1_2 = A0_2._voice_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L4_2 = A0_2
  L3_2 = A0_2._create_story_tab_item
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._voice_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L4_2 = A0_2
  L3_2 = A0_2._create_story_tab_item
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_battle_voice
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._voice_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_second_tab_control = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveDetailVoiceSecondTabItem
  L5_2 = G
  L5_2 = L5_2.AvatarArchiveDetailVoiceSecondTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A0_2._avatar_entry
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_list
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_click_callback
  L5_2 = A0_2._on_item_click
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_get_entry_func
  L5_2 = A0_2._get_playing_entry
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L0_1._create_story_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_entry
  L3_2 = A0_2._cur_entry
  L3_2 = L3_2.IsUnlock
  L3_2 = L3_2 ~= nil and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_entry
  L3_2 = A0_2._cur_entry
  L3_2 = L3_2 ~= nil and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cv_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cv_name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_entry
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_content
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = ""
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._cur_entry
  L1_2 = L1_2.IsUnlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._cur_entry
    L4_2 = L3_2
    L3_2 = L3_2.GetVoiceContent
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_unlock_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._cur_entry
    L3_2 = L3_2.Row
    L3_2 = L3_2.UnlockDesc
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_voice_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 61
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 31
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_panel = A1_2
end
L0_1._set_cur_selected_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._try_show_detail_voice_tab
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_entry
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_end_entry
    L3_2(L4_2)
    A0_2._cur_entry = nil
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_end_entry
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_entry = A1_2
  L3_2 = A0_2._avatar_entry
  L4_2 = L3_2
  L3_2 = L3_2.OnEntryClick
  L5_2 = A0_2._cur_entry
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_play_entry
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_node
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_info
  L3_2(L4_2)
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._playing_id
    if A1_2 == L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2
  L2_2 = A0_2._try_end_entry
  L2_2(L3_2)
  A0_2._cur_entry = nil
end
L0_1._on_play_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_entry
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_entry
    L1_2 = L1_2.IsUnlock
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._cur_entry
  L2_2 = L1_2
  L1_2 = L1_2.PostVoice
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_play_end
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L4_2 = A0_2._avatar_ui3d
  L5_2 = L4_2
  L4_2 = L4_2.get_cur_avatar_entity
  L4_2, L5_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._playing_id = L1_2
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_playing_statu
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._try_play_entry = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_entry
  if L1_2 ~= nil then
    L1_2 = A0_2._playing_id
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._cur_entry
  L2_2 = L1_2
  L1_2 = L1_2.StopPlayingVoice
  L3_2 = A0_2._playing_id
  L4_2 = A0_2._avatar_ui3d
  L5_2 = L4_2
  L4_2 = L4_2.get_cur_avatar_entity
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_playing_statu
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._playing_id = nil
  A0_2._cur_entry = nil
end
L0_1._try_end_entry = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_showing_detail
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.on_show_voice_tab
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_showing_detail = A1_2
  L2_2 = A0_2._avatar_ui3d
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._avatar_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.show_avatar_main_page_tab
  L4_2 = G
  L4_2 = L4_2.AvatarMainPageSubType
  L4_2 = L4_2.Voice
  L5_2 = not A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_show_detail_voice_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_entry
  return L1_2
end
L0_1._get_playing_entry = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_end_entry
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_tab_select_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_end_entry
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_detail_voice_tab
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._voice_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._voice_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L1_1
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
      L2_2 = A0_2._is_showing_detail
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
      L2_2 = A0_2._get_zone2_navigation_target
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L2_2 = NavigationZoneType
      L2_2 = L2_2.Zone3
      if A1_2 == L2_2 then
        A0_2._is_in_zone3 = true
        L3_2 = A0_2
        L2_2 = A0_2._get_zone3_navigation_target
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_zoom_navigation_target
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return L1_2
  end
  L2_2 = A0_2._voice_tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1._get_zone2_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_zoom_navigation_target
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone3
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return L1_2
  end
  L2_2 = A0_2._voice_tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1._get_zone3_navigation_target = L1_1
return L0_1
