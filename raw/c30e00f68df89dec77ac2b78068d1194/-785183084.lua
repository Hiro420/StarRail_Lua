local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/LightCone/Widget/AvatarLightConeDetailPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "LightConeInfoPanel/LightConeInfoDetail/SubStarPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanel"
  L7_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.promotion_stars_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeLockPanel
  L4_2 = G
  L4_2 = L4_2.LightConeLockPanelBinder
  L5_2 = "LightConeInfoPanel/LightConeInfoDetail/LightConeTitlePanel/BtnEquipLock"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.lock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/LightConeTitlePanel/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_bg_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/LightConeTitlePanel/BtnEquipLock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/ProfessionType/BtnProfessionType/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_base_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/ProfessionType/BtnProfessionType/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_avatar_base_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar_base_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/ProfessionType/BtnProfessionType"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_base_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/SkillNamePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/PhasePanel/Phase/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rank_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/PhasePanel/Phase/Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rank_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/PhasePanel/Tips/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rank_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/LevelDescCurrent/LevelDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Shadow
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/LevelDescCurrent/LevelDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.shadow_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tips_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TypeMatchStatus/Match"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_match = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TypeMatchStatus/Unmatch"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_unmatch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TypeMatchStatus/Match/ActiveEffect/IconProfessional"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_match = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_match = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TypeMatchStatus/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView/Viewport/Content/TipsPanel/TypeMatchStatus/Normal/ActiveEffect/IconProfessional"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_normal_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/Level/Splash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/Level/LevelMax"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/ExpPanel/ExpProgressPanel/Progress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_exp_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeSkillPanel/LightConeDetailEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/HP/StatusDetailInfo/StatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Attack/StatusDetailInfo/StatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Defence/StatusDetailInfo/StatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_defence = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/HP/StatusDetailInfo/EmptyStatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.empty_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Attack/StatusDetailInfo/EmptyStatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.empty_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Defence/StatusDetailInfo/EmptyStatusNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.empty_defence = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/HP/StatusDetailInfo/StatusTitle/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Attack/StatusDetailInfo/StatusTitle/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_atk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/StatusPanel/Defence/StatusDetailInfo/StatusTitle/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_def = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeInfoPanel/FunctionPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_replace = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeInfoPanel/FunctionPanel/BtnEquip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_equip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeInfoPanel/FunctionPanel/BtnUpdate"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_upgrade = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/FunctionPanel/BtnEquip/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_btn_euqip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/TabDrawcardTab/TabDrawcardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_statistic_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "LightConeInfoPanel/LightConeSkillPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeInfoPanel/LightConeInfoDetail/Level/BtnPromote"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_promotion_preview = L1_2
end
L0_1._on_bind = L1_1
return L0_1
