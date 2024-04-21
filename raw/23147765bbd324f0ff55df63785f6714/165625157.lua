local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OnHeroPathExpUpDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/HeroPath/HeroPathLevelUpgradeDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ExperiencePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exp_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/ExperiencePanel/DecoImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_dimension = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceNum/1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_current_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceNum/3"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_require_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "Content/ExperiencePanel/ExperienceLine/2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_progress_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceGet/1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_acquire_exp_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceGet/2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_acquire_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
