local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConePromotionResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/LightCone/LightConePromotionResultDialog.prefab"
  return L0_2
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
  L5_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Pre/SubStarPre"
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
  L5_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Next/SubStarNext"
  L6_2 = "Ui.Avatar.SubStarInfoPanel"
  L7_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.promotion_stars_after_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPromotionPanel/StatusHint/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Next/LevelNext/CurrentLevel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current_after = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Next/LevelNext/TotalLevel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max_after = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Pre/LevelPre/CurrentLevel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_current_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPromotionPanel/StatusDetail/Pre/LevelPre/TotalLevel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_max_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/HP/SkillTreeStatusDetailInfoResult/StatusDetail/StatusPreNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hp_pre_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/HP/SkillTreeStatusDetailInfoResult/StatusDetail/StatusCurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hp_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/Attack/SkillTreeStatusDetailInfoResult/StatusDetail/StatusPreNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_atk_pre_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/Attack/SkillTreeStatusDetailInfoResult/StatusDetail/StatusCurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_atk_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/Defence/SkillTreeStatusDetailInfoResult/StatusDetail/StatusPreNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_def_pre_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/StatusPanel/Defence/SkillTreeStatusDetailInfoResult/StatusDetail/StatusCurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_def_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group = L1_2
end
L0_1._on_bind = L1_1
return L0_1
