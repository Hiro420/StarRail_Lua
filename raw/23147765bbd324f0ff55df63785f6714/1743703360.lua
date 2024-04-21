local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.AvatarSkillTreeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.AvatarSkillTreeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailDataTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailDataTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailVoiceTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailVoiceTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailStoryTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailStoryTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailSubMenuPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._avatar_data = A3_2
  A0_2._archive_entry = A4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_sub_menu_id
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_detail_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_voice_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_story_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_skill_tree_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_eidolon_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.override_click_item
  L3_2 = A0_2
  L4_2 = A0_2._on_override_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tabs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveDetailDataTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveDetailDataTabItemBinder
  L5_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._avatar_detail_tab_item = L1_2
  L1_2 = A0_2._avatar_detail_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_detail_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._avatar_detail_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_avatar_detail_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveDetailVoiceTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveDetailVoiceTabItemBinder
  L5_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._avatar_voice_tab_item = L1_2
  L1_2 = A0_2._avatar_voice_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_voice_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_voice
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._avatar_voice_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_voice
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_avatar_voice_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveDetailStoryTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveDetailStoryTabItemBinder
  L5_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._avatar_story_tab_item = L1_2
  L1_2 = A0_2._avatar_story_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_story_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._story_content_toggle_callback
  L4_2 = A0_2._story_content_toggle_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._avatar_story_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_story
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._avatar_story_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_story
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_avatar_story_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSkillTreeTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarSkillTreeTabItemBinder
  L5_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._avatar_skill_tree_tab_item = L1_2
  L1_2 = A0_2._avatar_skill_tree_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._select_point_callback
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_skill_tree_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_close_point_detail_callback
  L3_2 = A0_2._close_point_detail_callback
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_skill_tree_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.hide_page_info
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_skill_tree_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_skill_tree_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_skill_tree
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._avatar_skill_tree_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill_tree
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_avatar_skill_tree_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarEidolonTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarEidolonTabItemBinder
  L5_2 = A0_2._avatar_data
  L6_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._avatar_eidolon_tab_item = L1_2
  L1_2 = A0_2._avatar_eidolon_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._select_eidolon_point_callback
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_eidolon_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_close_point_detail_callback
  L3_2 = A0_2._close_eidolon_point_detail_callback
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_eidolon_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.hide_page_info
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_eidolon_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_eidolon_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_eidolon
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._avatar_eidolon_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_eidolon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_avatar_eidolon_tab_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._archive_entry = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_tab_item
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._default_sub_menu_id = A1_2
end
L0_1.setup_menu_id = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_point_callback = A1_2
end
L0_1.register_select_point_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._close_point_detail_callback = A1_2
end
L0_1.register_close_point_detail_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_eidolon_point_callback = A1_2
end
L0_1.register_eidolon_select_point_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._close_eidolon_point_detail_callback = A1_2
end
L0_1.register_eidolon_close_point_detail_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._story_content_toggle_callback = A1_2
  A0_2._story_content_toggle_callback_self = A2_2
end
L0_1.register_story_content_toggle_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._tab_changed_callback = A1_2
  A0_2._tab_changed_handler = A2_2
end
L0_1.register_tab_changed_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_cur_tab_btn_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  return L1_2
end
L0_1.get_cur_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = A0_2._avatar_data
      L10_2 = A0_2._archive_entry
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_tab_visible
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._archive_entry
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_voice_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._archive_entry
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._refresh_tab_visible = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._archive_entry
  L2_2 = L2_2.IsUnlock
  if not L2_2 then
    L2_2 = A0_2._avatar_story_tab_item
    if L1_2 ~= L2_2 then
      L2_2 = A0_2._avatar_voice_tab_item
      if L1_2 ~= L2_2 then
        goto lbl_18
      end
    end
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item_by_uid
    L4_2 = 1
    L2_2(L3_2, L4_2)
    return
  end
  ::lbl_18::
  L3_2 = L1_2
  L2_2 = L1_2.select
  L2_2(L3_2)
end
L0_1._refresh_tab_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_show_frame_fade_in
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._show_frame_fade_in = L2_2
  L2_2 = A0_2._show_frame_fade_in
  if not L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._avatar_ui3d
  L2_2 = L2_2.capture_frame_transfer_panel
  L3_2 = L2_2
  L2_2 = L2_2.capture_frame
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.click_item
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._avatar_ui3d
    if L0_3 then
      L0_3 = A0_2._avatar_ui3d
      L0_3 = L0_3.capture_frame_transfer_panel
      L1_3 = L0_3
      L0_3 = L0_3.reset_mesh_transform_by_camera
      L0_3(L1_3)
      L0_3 = A0_2._avatar_ui3d
      L0_3 = L0_3.capture_frame_transfer_panel
      L1_3 = L0_3
      L0_3 = L0_3.show
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
end
L0_1._on_override_tab_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._avatar_ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.is_loaded
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_11::
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.enable
  if L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    if L2_2 ~= nil and A1_2 ~= nil then
      goto lbl_23
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_23::
  L2_2 = G
  L2_2 = L2_2.IsInstanceOf
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = G
  L4_2 = L4_2.AvatarEidolonTabItem
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.IsInstanceOf
    L3_2 = A1_2
    L4_2 = G
    L4_2 = L4_2.AvatarEidolonTabItem
    L2_2 = L2_2(L3_2, L4_2)
  end
  return L2_2
end
L0_1._is_show_frame_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_frame_fade_in
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    if L1_2 then
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.capture_frame_transfer_panel
      L2_2 = L1_2
      L1_2 = L1_2.play_fade_out
      L1_2(L2_2)
    end
    A0_2._show_frame_fade_in = false
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._tab_changed_callback
  L3_2 = A0_2._tab_changed_handler
  L1_2(L2_2, L3_2)
end
L0_1._on_tab_select = L1_1
return L0_1
