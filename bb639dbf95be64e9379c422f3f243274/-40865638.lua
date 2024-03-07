local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveFilterItemListDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveDetailSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveFilterItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveFilterItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveUnlockFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarClassFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarElementFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.InventorySortType
L2_1 = L2_1.Default
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.InventorySortType
L3_1 = L3_1.Rarity
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1._sort_type_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_detail_page_type
  L3_2 = G
  L3_2 = L3_2.AvatarDetailPageType
  L3_2 = L3_2.Archive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_display_only
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
  A0_2.is_played_fade_in = false
  A0_2.is_eidolon_played_fade_in = false
  A0_2._cur_sub_menu_id = 1
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.InventorySortType
  L1_2 = L1_2.Default
  A0_2._cur_sort_type = L1_2
  A0_2._is_descend = true
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.update
  L4_2 = "IsDisplayOnly"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ArchiveUnlockFilter
  L2_2 = L2_2(L3_2)
  A0_2._unlock_filter = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.AvatarClassFilter
  L2_2 = L2_2(L3_2)
  A0_2._class_filter = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.AvatarElementFilter
  L2_2 = L2_2(L3_2)
  A0_2._element_filter = L2_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L2_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L2_2
  L2_2 = {}
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone2
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone3
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  A0_2.listen_zooms = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entry = A1_2
  L2_2 = A0_2._entry
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatarData
  L2_2 = L2_2(L3_2)
  A0_2._avatar_data = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.is_in_3d_mode
  L3_2 = not A1_2
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_bg
  L3_2 = not A1_2
  L2_2.blocksRaycasts = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_bg
  L3_2 = not A1_2
  L2_2.interactable = L3_2
  L2_2 = not A1_2
  A0_2.is_in_3d_mode = L2_2
end
L0_1.show_content = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_skin = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L2_2.enabled = true
  if A1_2 then
    L2_2 = "AvatarVoicePanelFadeIn"
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = "AvatarVoicePanelFadeOut"
  ::lbl_10::
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.ResetClips
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._is_showing_voice_detail = A1_2
end
L0_1.on_show_voice_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._unlock_filter
  L2_2 = L1_2
  L1_2 = L1_2.dtor
  L1_2(L2_2)
  L1_2 = A0_2._class_filter
  L2_2 = L1_2
  L1_2 = L1_2.dtor
  L1_2(L2_2)
  L1_2 = A0_2._element_filter
  L2_2 = L1_2
  L1_2 = L1_2.dtor
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_avatar_main_page_tab
  L3_2 = G
  L3_2 = L3_2.AvatarMainPageSubType
  L3_2 = L3_2.AvatarDetail
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_menu
  L1_2(L2_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_sub_menu_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_sub_menu_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2._avatar_sub_menu_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._entry
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_sub_menu = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = 0.25
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.is_played_fade_in
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.show_full_screen_block
      L2_3 = 0.7
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L0_3.enabled = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L1_3 = L0_3
      L0_3 = L0_3.ResetClips
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = "AvatarSkillTreeSkillDetailFadeIn"
      L0_3(L1_3, L2_3)
      A0_2.is_played_fade_in = true
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_can_to_special_zoom
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.show_full_screen_block
    L2_3 = 0.25
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.is_eidolon_played_fade_in
    if not L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L0_3.enabled = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L1_3 = L0_3
      L0_3 = L0_3.ResetClips
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_root
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = "AvatarRankSkillDetailFadeIn"
      L0_3(L1_3, L2_3)
      A0_2.is_eidolon_played_fade_in = true
    end
  end
  function L3_2()
    local L0_3, L1_3, L2_3
    A0_2.is_played_fade_in = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_root
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_root
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "AvatarSkillTreeSkillDetailFadeOut"
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_can_to_special_zoom
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  function L4_2()
    local L0_3, L1_3, L2_3
    A0_2.is_eidolon_played_fade_in = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_root
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_root
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "AvatarRankSkillDetailFadeOut"
    L0_3(L1_3, L2_3)
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.AvatarArchiveDetailSubMenuPanel
  L8_2 = G
  L8_2 = L8_2.AvatarArchiveDetailSubMenuPanelBinder
  L9_2 = A0_2._avatar_data
  L10_2 = A0_2._entry
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._avatar_sub_menu_panel = L5_2
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_menu_id
  L7_2 = A0_2._cur_sub_menu_id
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_close_point_detail_callback
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_select_point_callback
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_eidolon_select_point_callback
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_eidolon_close_point_detail_callback
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_story_content_toggle_callback
  L7_2 = A0_2._on_show_avatar_story_content
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.register_tab_changed_callback
  L7_2 = A0_2._on_tab_select_changed
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.async_bind
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_sub_menu
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_sub_menu_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_async_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_sub_menu_load
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._init_sub_menu_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L2_2.enabled = true
  if A1_2 then
    L2_2 = "AvatarStoryPanelFadeIn"
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = "AvatarStoryPanelFadeOut"
  ::lbl_10::
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.ResetClips
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._is_showing_story_detail = A1_2
end
L0_1._on_show_avatar_story_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_sub_menu_panel
  if L1_2 then
    L1_2 = A0_2._avatar_sub_menu_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_enter_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_sub_menu_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_3d
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.BaseTypeIconSmall
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2.BaseTypeText
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_TitleType_Slash"
  L8_2 = G
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.AvatarName
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._refresh_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_avatar
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_3d = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.init
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1._on_entry_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_content
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ArchiveFilterItemListDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveFilterItemPanel
  L5_2 = G
  L5_2 = L5_2.AvatarArchiveFilterItemPanelBinder
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ArchiveType
  L6_2 = L6_2.Avatar
  L7_2 = A0_2._entry
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_click_callback
  L4_2 = A0_2._on_entry_click
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_prefab_index
  L4_2 = 2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_can_interact_when_entry_lock
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_filter_dialog_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_filter
  L4_2 = A0_2._unlock_filter
  L5_2 = A0_2._class_filter
  L6_2 = A0_2._element_filter
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_sort
  L4_2 = L0_1._sort_type_list
  L5_2 = A0_2._cur_sort_type
  L6_2 = A0_2._is_descend
  L7_2 = A0_2._sort
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_filter_dialog_show
  L2_2(L3_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_exit = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_sort_type = A2_2
  A0_2._is_descend = A3_2
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A1_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 == A1_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = A0_2._cur_sort_type
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.GameCore
    L3_3 = L3_3.InventorySortType
    L3_3 = L3_3.Default
    if L2_3 == L3_3 then
      L3_3 = A0_3
      L2_3 = A0_3.CompareTo
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2._is_descend
      if L3_3 then
        L3_3 = L2_3 == -1
        return L3_3
      else
        L3_3 = L2_3 == 1
        return L3_3
      end
    else
      L2_3 = A0_2._cur_sort_type
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.GameCore
      L3_3 = L3_3.InventorySortType
      L3_3 = L3_3.Rarity
      if L2_3 == L3_3 then
        L2_3 = A0_3.Row
        L2_3 = L2_3.Rarity
        L2_3 = #L2_3
        L3_3 = A1_3.Row
        L3_3 = L3_3.Rarity
        L3_3 = #L3_3
        if L2_3 == L3_3 then
          L5_3 = A0_3
          L4_3 = A0_3.CompareTo
          L6_3 = A1_3
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = L4_3 == -1
          return L5_3
        end
        L4_3 = L2_3 > L3_3
        L5_3 = A0_2._is_descend
        if L5_3 then
          return L4_3
        else
          L5_3 = not L4_3
          return L5_3
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  L4_2(L5_2, L6_2)
end
L0_1._sort = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L0_1._on_tab_select_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_played_fade_in
  if L1_2 then
    L1_2 = A0_2._avatar_sub_menu_panel
    if L1_2 then
      L1_2 = A0_2._avatar_sub_menu_panel
      L1_2 = L1_2._avatar_skill_tree_tab_item
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        L1_2 = L1_2._avatar_skill_tree_tab_item
        L2_2 = L1_2
        L1_2 = L1_2._close_point_detail
        L1_2(L2_2)
      end
    end
  else
    L1_2 = A0_2.is_eidolon_played_fade_in
    if L1_2 then
      L1_2 = A0_2._avatar_sub_menu_panel
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        L1_2 = L1_2._avatar_eidolon_tab_item
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          L1_2 = L1_2._avatar_eidolon_tab_item
          L2_2 = L1_2
          L1_2 = L1_2.on_btn_close_skill_detail
          L1_2(L2_2)
        end
      end
    else
      L1_2 = A0_2._is_showing_voice_detail
      if L1_2 then
        L1_2 = A0_2._avatar_sub_menu_panel
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          L1_2 = L1_2._avatar_voice_tab_item
          if L1_2 then
            L1_2 = A0_2._avatar_sub_menu_panel
            L1_2 = L1_2._avatar_voice_tab_item
            L2_2 = L1_2
            L1_2 = L1_2._on_btn_back
            L1_2(L2_2)
          end
        end
      else
        L1_2 = A0_2._is_showing_story_detail
        if L1_2 then
          L1_2 = A0_2._avatar_sub_menu_panel
          if L1_2 then
            L1_2 = A0_2._avatar_sub_menu_panel
            L1_2 = L1_2._avatar_story_tab_item
            if L1_2 then
              L1_2 = A0_2._avatar_sub_menu_panel
              L1_2 = L1_2._avatar_story_tab_item
              L2_2 = L1_2
              L1_2 = L1_2._on_btn_back
              L1_2(L2_2)
            end
          end
        else
          L1_2 = A0_2.is_in_3d_mode
          if L1_2 then
            L2_2 = A0_2
            L1_2 = A0_2._on_btn_root
            L1_2(L2_2)
          else
            L2_2 = A0_2
            L1_2 = A0_2._on_btn_exit
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_object
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.get_action_name_list
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = L1_2
      L4_2 = L1_2.get_action_name_list
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 31
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L2_2 = A0_2._avatar_sub_menu_panel
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._avatar_sub_menu_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_cur_tab_btn_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._refresh_short_cut_hint
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_action_enable
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._avatar_sub_menu_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_object
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2._is_can_to_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_filter
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_filter
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_action_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
