local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Inventory/Widget/InventoryRightPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemName/Content/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/ImgItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/ImgLightCone"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemInfoPanel/ImgItem/ItemIcon1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemInfoPanel/ImgLightCone/LightConeContainer/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_lightcone_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/DescDetailPanel/Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/DescDetailPanel/Blank"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text_desc_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/DescDetailPanel/DescStory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_bg_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeSkillBasicInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_equipment_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeSkillBasicInfo/SkillNamePanel/SkillName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemName/Content/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rairty_line_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemInfoPanel/Bg/RarityBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rairty_bg1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/NumPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.num_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/NumPanel/AmountPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_amount_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemInfoPanel/NumPanel/AmountPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_amount = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemInfoPanel/PurposePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_purpose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/PurposePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_purpose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemInfoPanel/NumPanel/ItemTotalNum/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_item_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/LockBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/LockBtnPanel/BtnLock/UnLockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/LockBtnPanel/BtnLock/LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ItemInfoPanel/BtnFavorite"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_favorite = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/BtnFavorite"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_favorite = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel/Phase"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_phase_panel_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel/Tips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_phase_panel_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_func_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/EquippedInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_equipped_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "FunctionBtnPanel/EquippedInfo/IconProfession"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "FunctionBtnPanel/EquippedInfo/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_equipped_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPanel/BtnDetail/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tip_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeLevel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_light_cone_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/NumPanel/ItemTotalNum"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_total_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/StatusPanel/PromotionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/NumPanel/RelicPositionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic_position = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/RelicBasicInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic_basic_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/RelicSetSkillInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic_set_skill_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeLevel/NumPanel/Splash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeLevel/NumPanel/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeLevel/NumPanel/LevelMax"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_phase_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel/Phase/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rank_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel/Phase/Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rank_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/PhasePanel/Tips/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/TipsPanel/TypeIconPanel/ProfessionalType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_base_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Base"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_base = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Base/PathsImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_base = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tips_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemDetailPanel/ScrollView/Viewport/Content/TipsPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/LightConeLevel/BtnLock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.equipment_lock_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemInfoPanel/NumPanel/RelicPositionPanel/PositionText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relic_position = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ItemInfoPanel/NumPanel/RelicPositionPanel/Num/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relic_position_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemInfoPanel/NumPanel/RelicPositionPanel/Num/Plus"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic_level_plus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPanel/BtnLevelUp/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tip_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnUse"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button_use = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "FunctionBtnPanel/BtnPanel/BtnUse"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_use = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPanel/BtnUse/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tip_use = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemDetailPanel/ScrollView/Viewport/Content/DropHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_drop_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "ItemDetailPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "ItemDetailPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_transform_scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/RemainTimePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.remain_time_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FunctionBtnPanel/RemainTimePanel/TextTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_time_prefix_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "FunctionBtnPanel/RemainTimePanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_time_text = L1_2
end
L0_1._on_bind = L1_1
return L0_1
