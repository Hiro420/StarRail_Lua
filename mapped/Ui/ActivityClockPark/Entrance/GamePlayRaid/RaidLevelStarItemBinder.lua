local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidLevelStarItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame/PictureStarActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.active_star_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame/PictureStar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.inactive_star_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
