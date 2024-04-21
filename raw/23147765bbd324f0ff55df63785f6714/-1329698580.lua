local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalObtainSkinPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarSkinCutInContainer/AvatarImg/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_skin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarSkinDetailInfoPanel/AvatarSkinInfo/NamePanel/SkinTitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.skin_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarSkinDetailInfoPanel/AvatarSkinInfo/NamePanel/CharacterName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "AvatarSkinDetailInfoPanel/AvatarSkinInfo/NamePanel/MainStarPanel"
  L6_2 = "Ui.Avatar.RarityStarPanel"
  L7_2 = "Ui.Avatar.RarityStarPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.rarity_stars_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
