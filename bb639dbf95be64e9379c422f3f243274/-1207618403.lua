local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionGraphItemPanelBinder"
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
  L3_2 = L3_2.UIQuad
  L4_2 = "Dimension"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.default_quad = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIQuad
  L4_2 = "Dimension/Dimension_Light"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.default_quad2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIQuad
  L4_2 = "Increasement"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.increase_quad = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoQuadEffect
  L4_2 = "Increasement"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_quad_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoQuadEffect
  L4_2 = "Increasement/Increasement_Light_01"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_quad_effect2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoQuadEffect
  L4_2 = "Increasement/Increasement_Light_02"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_quad_effect3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoQuadEffect
  L4_2 = "Dimension"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_quad_effect4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoQuadEffect
  L4_2 = "Dimension/Dimension_Light"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_quad_effect5 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_cmpt = L1_2
end
L0_1._on_bind = L1_1
return L0_1
