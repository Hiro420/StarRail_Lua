local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubAvatarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/FistClub/Widget/FistClubTeamItem.prefab"
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
  L3_2 = L3_2.Image
  L4_2 = "AvatarMask/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxInfo/BoxLevel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.level_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BoxInfo/DamageType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.avatar_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.info_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.has_avatar_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.empty_avatar_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_bg_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusPanel/TrialMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.trial_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
