local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalkLeftGraphPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalkBgPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalkBgPanelBinder
  L5_2 = "Root/Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bg_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalkBgPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalkBgPanelBinder
  L5_2 = "Root/Contents/LeftPanel_1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bg_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalkBgPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalkBgPanelBinder
  L5_2 = "Root/Contents/LeftPanel_2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bg_aeon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rpg_animation_event = L1_2
end
L0_1._on_bind = L1_1
return L0_1
