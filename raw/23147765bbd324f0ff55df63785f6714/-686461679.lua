local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassRewardLightconePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeContainerPanelBinder
  L5_2 = "LightConeContainer_A"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeContainerPanelBinder
  L5_2 = "LightConeContainer_B"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_container_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "LightConeContainer_A"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_container1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "LightConeContainer_B"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_container2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "DotNumList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_dot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
