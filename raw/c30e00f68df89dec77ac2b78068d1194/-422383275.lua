local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultGachaUpAvatarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.img_avatar = L1_2
  L1_2 = {}
  A0_2.img_avatar_pc = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "SubAvatarPanel/AvatarItem%s/Root/Mask/Avatar/AvatarImg"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_get_cmpt
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Image
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.img_avatar
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "SubAvatarPanelPC/AvatarItem%s/Root/Mask/Avatar/AvatarImg"
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L7_2
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Image
    L10_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.img_avatar_pc
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
