local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDetailTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/Widget/AvatarDetailPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_levelup = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/AvatarInfoPanel/AvatarDetail/NamePanel/BtnFavorite"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_favorite = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnPromotion"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_promotion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnPromotion/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_promotion_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/AvatarInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.avatar_bulletin_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.avatar_info_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/AvatarSkillPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/LightConeSmallPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/TabDrawcardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_draw_card_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/LightConeSmallPanel/BtnLightCone"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_avatar_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_avatar_type_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "PageInfo/TitleType/ExtraContent/ProfessionalIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_professsion_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/Level/BtnPromote"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_promotion_preview = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/Level/BtnPromote"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_promotion_preview_in_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/Level/BtnPromote/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_preview_key_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/Level/BtnPromote/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_preview_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.levelup_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnPromotion"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.promotion_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/StatusPanel/BtnPanel/BtnStatusDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.status_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnLevelUp/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_levelup_btn_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnPromotion/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_btn_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/StatusPanel/BtnPanel/BtnStatusDetail/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_btn_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/SwitchTabPanel/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/SwitchTabPanel/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_in_control_tip_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/SwitchTabPanel/KeyMapInfo_Right"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_in_control_tip_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/SwitchTabPanel/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/SwitchTabPanel/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/DetailInfoPanel/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_property_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/AvatarInfoPanel/AvatarDetail/DamageType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/AvatarInfoPanel/AvatarDetail/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_profession_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/StatusPanel/BtnPanel/BtnStatusDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/LightConeSmallPanel/BtnLightCone"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_light_cone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/AvatarSkillPanel/Content/SkillIcon1/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_avatar_skill_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/AvatarSkillPanel/Content/SkillIcon4/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_avatar_skill_4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/DetailInfoPanel/AvatarSkillPanel/Content/SkillIcon5/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_avatar_skill_5 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnAvatarSkin"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar_skin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnAvatarSkin/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_skin_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/Btn3DView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_hide_ui = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnGuideBook"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_trial = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarDetailInfoPanel/FunctionPanel/BtnGuideBook/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trial_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "AvatarDetailInfoPanel/AvatarInfoPanel/AvatarDetail/NamePanel/BtnFavorite/Root/IconPanel/Fill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_favorite = L1_2
end
L0_1._on_bind = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Normal/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_normal = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Normal/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_normal = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_selected = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_tab_reddot = L1_2
end
L0_1._on_tab_btn_bind = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2.btn_levelup = nil
  A0_2.btn_promotion = nil
  A0_2.avatar_bulletin_panel_root = nil
  A0_2.avatar_info_panel_root = nil
  A0_2.node_skill_panel_root = nil
end
L0_1._on_dispose = L3_1
return L0_1
