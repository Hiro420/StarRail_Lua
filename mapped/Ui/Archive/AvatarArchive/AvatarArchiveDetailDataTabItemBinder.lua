local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailDataTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/Widget/DataBankAvatarPanelData.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_avatar_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/ProfessionType/BtnProfessionType/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/StoryPanel/ScrollViewMask/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/TimestampPanel/TimestampText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_first_meet = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/TimestampPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_meet_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/CampPanel/CampText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_camp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/DamageType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/DamageType/IconBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_type_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/ProfessionType/BtnProfessionType/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_professsion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/DamageType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDataPanel/ViewBtnPanel/Btn2DView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_2d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDataPanel/ViewBtnPanel/Btn3DView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDataPanel/ViewBtnPanel/BtnAvatarSkin"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_skin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "AvatarDataPanel/Root/VoiceActorInfoPanel/VoiceActorListView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.cv_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDataPanel/Root/AvatarInfoPanel/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDataPanel/Root/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDataPanel/Root/AvatarInfoPanel/TimestampPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_first_meet = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDataPanel/Root/AvatarInfoPanel/CampPanel/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_camp_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "AvatarDataPanel/Root/AvatarInfoPanel/RarityPanel"
  L6_2 = G
  L6_2 = L6_2.RarityStarInfoPanel
  L7_2 = G
  L7_2 = L7_2.RarityStarInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.star_list_panel = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.go_reddot = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1