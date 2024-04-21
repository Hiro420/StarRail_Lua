local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveVoiceActorInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveVoiceActorInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailDataTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4600
L2_1 = {}
L3_1 = {}
L4_1 = 1
L5_1 = 1
L6_1 = 1
L7_1 = 1
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L2_1[4] = L3_1
L3_1 = {}
L4_1 = 1
L5_1 = 1
L6_1 = 1
L7_1 = 1
L8_1 = 1
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L2_1[5] = L3_1
L0_1._rarity_data_map = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_2d
  L4_2 = A0_2._on_btn_2d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_3d
  L4_2 = A0_2._on_btn_3d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skin
  L4_2 = A0_2._on_btn_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_professsion
  L4_2 = A0_2._on_btn_profession
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_damage_type
  L4_2 = A0_2._on_btn_damage_type
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cv_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_cv_info_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entry
  if L1_2 ~= nil then
    L1_2 = A0_2._entry
    L1_2 = L1_2.BasicInfo
    L2_2 = L1_2
    L1_2 = L1_2.RecordSeen
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarAtlasExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2.ID
  L3_2 = L3_2(L4_2)
  A0_2._atlas_row = L3_2
  A0_2._entry = A2_2
  A0_2._is_lock = true
  if A2_2 then
    L3_2 = A2_2.IsUnlock
    L3_2 = not L3_2
    A0_2._is_lock = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_cv_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_red_dot
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._entry
  if L1_2 == nil then
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
    L4_2 = A0_2._entry
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
    L4_2 = A0_2._entry
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_camp_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._try_bind_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._atlas_row
  L2_2 = {}
  A0_2._cv_datas = L2_2
  L2_2 = A0_2._cv_datas
  L3_2 = A0_2._cv_datas
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._create_cv_data
  L6_2 = "UIText_CVRegion_CN"
  L7_2 = L1_2.CV_CN
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cv_datas
  L3_2 = A0_2._cv_datas
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._create_cv_data
  L6_2 = "UIText_CVRegion_JP"
  L7_2 = L1_2.CV_JP
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cv_datas
  L3_2 = A0_2._cv_datas
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._create_cv_data
  L6_2 = "UIText_CVRegion_KR"
  L7_2 = L1_2.CV_KR
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cv_datas
  L3_2 = A0_2._cv_datas
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._create_cv_data
  L6_2 = "UIText_CVRegion_EN"
  L7_2 = L1_2.CV_EN
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
end
L0_1._init_cv_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  L3_2.NationName = A1_2
  L3_2.CVName = A2_2
  return L3_2
end
L0_1._create_cv_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_red_dot
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.AvatarDetail
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_in_control_input_switch
  L1_2(L2_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entry
  if L1_2 ~= nil then
    L1_2 = A0_2._entry
    L1_2 = L1_2.BasicInfo
    L2_2 = L1_2
    L1_2 = L1_2.RecordSeen
    L1_2(L2_2)
  end
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cv
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rarity
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_2d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_3d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_lock
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_first_meet
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_lock
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.DamageType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CharacterCampConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._entry
  L4_2 = L4_2.BasicInfo
  L4_2 = L4_2.CampID
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.AvatarID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.IsHero
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_meet_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Player_FirstAwaken"
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_meet_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Character_FirstObtained"
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_avatar_name
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.AvatarName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_profession
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_2.BaseTypeText
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_camp
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_story
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.ItemBGDesc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._is_lock
  if not L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_first_meet
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = A0_2._entry
    L8_2 = L7_2
    L7_2 = L7_2.GetFirstMetTime
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_damage_type
  L8_2 = L2_2.DamageTypeIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_damage_type_bg
  L8_2 = L2_2.DamageTypeIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_profession
  L8_2 = L1_2.BaseTypeIconSmall
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._refresh_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cv_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cv_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_cv = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._rarity_data_map
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.star_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_rarity = L2_1
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
    L7_2 = L7_2.AvatarArchiveVoiceActorInfoPanel
    L8_2 = G
    L8_2 = L8_2.AvatarArchiveVoiceActorInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._cv_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.NationName
  L9_2 = L5_2.CVName
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_get_cv_info_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Archive.AvatarArchive.AvatarPicDisplayDialog"
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_2d = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_content
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_3d = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_skin
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarSkin.AvatarSkinMainPage"
  L3_2 = SkinPageMode
  L3_2 = L3_2.Archive
  L4_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_skin_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_skin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_skin
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_skin_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialog"
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.DamageType
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_profession = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialog"
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.DamageType
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_damage_type = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_damage_type
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = "ActionGroup_Scroll"
  L3_2 = "ActionGroup_Return"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  return L1_2
end
L0_1.get_action_name_list = L2_1
return L0_1
