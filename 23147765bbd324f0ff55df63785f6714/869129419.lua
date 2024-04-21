local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDimensionInfoPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "HeroPathProfessionContents/HeroPathProfession/Content/Info/ProfessionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "HeroPathProfessionContents/HeroPathProfession/Content/Info/LevelPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "HeroPathProfessionContents/HeroPathProfession/Content/ AppraisePanel/ AppraiseText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_dimension_appraise = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "HeroPathProfessionContents/HeroPathProfession/ProfessionType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_dimension_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "HeroPathProfessionContents"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_dimension = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
