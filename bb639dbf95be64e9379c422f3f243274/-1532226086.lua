local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDetailSingleInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ProfessionIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_dimension_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ProfessionInfoPanel/ProfessionNamePanel/ProfessionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ProfessionInfoPanel/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ProfessionInfoPanel/RatePanel/RateName/NameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_appraise = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ProfessionInfoPanel/RatePanel/RateExpPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ProfessionInfoPanel/RatePanel/RateExpPanel/ExpDetail/CurrentExp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_current_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ProfessionInfoPanel/RatePanel/RateExpPanel/ExpDetail/TotalExp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "ProfessionInfoPanel/RatePanel/RateExpPanel/ExpProgressPanel/Progress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_progress_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DescPanel/Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_desc = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
