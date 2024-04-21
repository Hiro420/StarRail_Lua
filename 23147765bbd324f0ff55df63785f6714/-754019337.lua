local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerExpGetDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/LevelUpgrade/PlayerExpGetDialog.prefab"
  return L1_2
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
  L4_2 = "Content/LevelPanel/LevelNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_player_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceNum/Num1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_current_level_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceNum/Num2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_current_level_full_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/ExperiencePanel/ExperienceLine/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.smooth_mask_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExperienceGet/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_add_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ExperiencePanel/ExperienceGet/TitleText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text_add_exp_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ExperiencePanel/ExpMaxTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.overflow_hint_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/ExperiencePanel/ExpMaxTip/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.overflow_hint_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ExperiencePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.exp_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/MaxPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.max_level_bg_root = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.text_player_level = nil
  A0_2.text_current_level_exp = nil
  A0_2.text_current_level_full_exp = nil
  A0_2.smooth_mask_exp = nil
  A0_2.text_add_exp = nil
end
L0_1._on_dispose = L1_1
return L0_1
