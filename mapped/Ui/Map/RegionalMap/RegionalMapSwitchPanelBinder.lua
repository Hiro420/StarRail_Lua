local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapSwitchPanelBinder"
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
  L3_2 = L3_2.Button
  L4_2 = "BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "NamePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NamePanel/LeftText/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BtnSwitch/IconPanel/LeftContent/LeftIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NamePanel/RightText /Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BtnSwitch/IconPanel/RightContent/RightIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_right = L1_2
end
L0_1._on_bind = L1_1
return L0_1
