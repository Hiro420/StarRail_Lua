local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CameraLensPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphAimContainer
  L4_2 = "FinderFrameArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.aim_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FinderFrameArea/FinderFrame/CameraTipsHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Mask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Mask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_event_mask = L1_2
end
L0_1._on_bind = L1_1
return L0_1
