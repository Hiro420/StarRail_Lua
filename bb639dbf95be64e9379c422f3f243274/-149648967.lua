local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogSwitchDotBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Light"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_light = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Dark"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_dark = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.img_light = nil
  A0_2.img_dark = nil
end
L0_1._on_dispose = L2_1
return L0_1
