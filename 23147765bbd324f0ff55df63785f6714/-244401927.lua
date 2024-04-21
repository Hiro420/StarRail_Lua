local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonGhostSpineBgPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.Spine
  L3_2 = L3_2.Unity
  L3_2 = L3_2.SkeletonGraphic
  L4_2 = "Front/Spine_Left"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.skeleton_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.Spine
  L3_2 = L3_2.Unity
  L3_2 = L3_2.SkeletonGraphic
  L4_2 = "Front/Spine_Right"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.skeleton_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Front/Spine_Left/BtnEgg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_left_ghost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Front/Spine_Right/BtnEgg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_right_ghost = L1_2
end
L0_1._on_bind = L1_1
return L0_1
