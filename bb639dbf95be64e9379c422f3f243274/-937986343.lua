local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConePromotionPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/LightCone/Widget/LightConePromotionPanel.prefab"
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
  L5_2 = "LightConePromotionPanel/Contents/NamePanel/NamePrevPanel/SubStarPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanel"
  L7_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.promotion_stars_before_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "LightConePromotionPanel/Contents/NamePanel/NameNextPanel/SubStarPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanel"
  L7_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.promotion_stars_after_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CoinCostPanel
  L4_2 = G
  L4_2 = L4_2.CoinCostPanelBinder
  L5_2 = "LightConePromotionPanel/Contents/CoinCostPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.coin_cost_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PromotionMaterialPanel
  L4_2 = G
  L4_2 = L4_2.PromotionMaterialPanelBinder
  L5_2 = "LightConePromotionPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.promotion_material_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConePromotionPanel/Contents/StatusPanel/HP/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hp_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConePromotionPanel/Contents/StatusPanel/Attack/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.attack_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConePromotionPanel/Contents/StatusPanel/Defence/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.defence_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/NamePanel/NameNextPanel/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current_after = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/NamePanel/NameNextPanel/Level/LevelMax"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max_after = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/NamePanel/NamePrevPanel/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/NamePanel/NamePrevPanel/Level/LevelMax"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_res_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConePromotionPanel/Contents/BtnPanel/BtnPromotion"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_promotion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/BtnPanel/BtnPromotion/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_promotion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/BtnPanel/DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConePromotionPanel/Contents/BtnPanel/DisableHintPanel/Bg/Glow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/BtnPanel/DisableHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/MaxStatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_max_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/NamePanel/IconTo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_compare_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConePromotionPanel/Contents/NamePanel/NameNextPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_next_level_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/MaxStatusPanel/HP/StatusDetailInfoCompare/StatusDetail/StatusNextNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_status_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/MaxStatusPanel/Attack/StatusDetailInfoCompare/StatusDetail/StatusNextNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_status_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConePromotionPanel/Contents/MaxStatusPanel/Defence/StatusDetailInfoCompare/StatusDetail/StatusNextNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_status_defence = L1_2
end
L0_1._on_bind = L1_1
return L0_1
