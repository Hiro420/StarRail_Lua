local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDataBankTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
L2_1 = 1
L3_1 = 4600
L4_1 = 0.4
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_data = A3_2
  A0_2._node_data_bank = A4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.NetworkManager
  L5_2 = L5_2.FFOMLPONIFB
  L5_2 = L5_2.NBDECGBNLKN
  A0_2._is_login = L5_2
  L5_2 = A0_2._is_login
  if L5_2 then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetAvatarArchiveEntryByID
    L7_2 = A0_2._avatar_data
    L7_2 = L7_2.ID
    L5_2 = L5_2(L6_2, L7_2)
    A0_2._archive_entry = L5_2
    L5_2 = A0_2._node_data_bank
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L8_2 = A0_2
    L7_2 = A0_2._check_is_data_tab_available
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.RefreshAvatarArchiveData
    L5_2(L6_2)
  else
    L5_2 = A0_2._node_data_bank
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.fetch_ui3d
  L5_2 = L5_2(L6_2)
  A0_2._ui3d = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._add_notify_handler
  L7_2 = G
  L7_2 = L7_2.CS
  L7_2 = L7_2.NotifyType
  L7_2 = L7_2.ArchiveDataUpdated
  L8_2 = A0_2._update_archive_info
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._change_tab_call_back = A1_2
  A0_2._change_tab_call_back_self = A2_2
end
L0_1.register_force_change_tab_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_damage_type
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._is_login
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._record_archive_seen
    L3_2(L4_2)
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatarArchiveEntryByID
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._archive_entry = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._check_is_data_tab_available
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._node_data_bank
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_bind_red_dot
  L4_2(L5_2)
  if not L2_2 then
    return
  end
  if not L3_2 then
    L4_2 = A0_2._change_tab_call_back
    L5_2 = A0_2._change_tab_call_back_self
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._binder
  if L4_2 then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.is_bound
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._custom_refresh
      L4_2(L5_2)
  end
  else
    L5_2 = A0_2
    L4_2 = A0_2.set_async_callback
    L6_2 = A0_2
    L7_2 = A0_2._custom_refresh
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_data_tab_available
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_reddot
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AvatarInfoTab"
    L4_2 = A0_2._archive_entry
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.go_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_camp_reddot
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AvatarCampNew"
    L4_2 = A0_2._archive_entry
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_camp_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._try_bind_red_dot = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = not A1_2
  A0_2._is_show_page_info = L2_2
end
L0_1.hide_page_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._archive_entry
  L1_2 = L1_2 == nil
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetArchiveDataByType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Avatar
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetEntryByAvatarID
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._archive_entry = L3_2
  L3_2 = A0_2._node_data_bank
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L6_2 = A0_2
  L5_2 = A0_2._check_is_data_tab_available
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  if L1_2 then
    L3_2 = A0_2._archive_entry
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._on_refresh
      L3_2(L4_2)
    end
  end
end
L0_1._update_archive_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._custom_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_damage_type
  L4_2 = A0_2._on_btn_damage_type
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_path
  L4_2 = A0_2._on_btn_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_voice
  L4_2 = A0_2._on_btn_voice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story
  L4_2 = A0_2._on_btn_story
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_skin
  L4_2 = A0_2.btn_avatar_skin_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_damage_type
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_damage_type
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_path
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_path
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_3d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_2d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_avatar_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.IsDisplayOnly
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialog"
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ProfessionType
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.DamageType
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_damage_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialog"
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ProfessionType
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.DamageType
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_path = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 0
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDataBank.AvatarDataBankVoiceDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._archive_entry
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_close_callback
  L4_2 = A0_2._on_detail_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.on_click_data_bank_detail
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_voice = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 0
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDataBank.AvatarDataBankStoryDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._archive_entry
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_close_callback
  L4_2 = A0_2._on_detail_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.on_click_data_bank_detail
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_avatar_skin
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_refresh_statistic = false
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarSkin.AvatarSkinMainPage"
  L3_2 = SkinPageMode
  L3_2 = L3_2.Avatar
  L4_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_skin_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshTakePromotionRewardRedDot
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1.btn_avatar_skin_onclick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_avatar_skin
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_skin_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_data_bank_detail
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_detail_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    return
  end
  L1_2 = A0_2._archive_entry
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_story_btn_txt
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_info
    L1_2(L2_2)
  end
end
L0_1._on_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsHero
  if L1_2 == true then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_btn_story
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AvatarAtlas_PlayerStory"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_btn_story
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AvatarAtlas_Story"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_story_btn_txt = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_archive_info
  L1_2(L2_2)
end
L0_1._setup_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ProfessionType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_path_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TitleType_Slash"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2.BaseTypeText
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.AvatarName
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ProfessionType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L4_2 = L3_2.GetData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.BaseTypeIconSmall
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_info_path_type
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_sub_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_damage_type
  L5_2 = L1_2.DamageTypeIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ProfessionType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_path_type
  L6_2 = L2_2.BaseTypeIconSmall
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_path_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BaseTypeText
  L3_2(L4_2, L5_2)
end
L0_1._setup_base_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.CampRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_camp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.IsHero
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_first_met_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Player_FirstAwaken"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_first_met_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Character_FirstObtained"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_first_met
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._archive_entry
  L5_2 = L4_2
  L4_2 = L4_2.GetFirstMetTime
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.ItemBGDesc
  L3_2(L4_2, L5_2)
end
L0_1._setup_archive_info = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._archive_entry
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1._check_is_data_tab_available = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_red_dot
  L1_2(L2_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAvatarArchiveData
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_red_dot
  L1_2(L2_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d
  if L1_2 then
    L1_2 = A0_2._ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.DataBank
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._record_archive_seen
  L1_2(L2_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._archive_entry
  if L1_2 ~= nil then
    L1_2 = A0_2._archive_entry
    L1_2 = L1_2.BasicInfo
    L2_2 = L1_2
    L1_2 = L1_2.RecordSeen
    L1_2(L2_2)
  end
end
L0_1._record_archive_seen = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._record_archive_seen
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
return L0_1
