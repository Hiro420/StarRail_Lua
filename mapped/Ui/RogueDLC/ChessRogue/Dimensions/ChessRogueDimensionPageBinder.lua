local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionDisplayEffectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueCabinetPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DiceSkillPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Animator_Root/Root/PanelContent/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Animator_Root/Root/PanelContent/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_parent_root = L1_2
  L1_2 = A0_2.tab_parent_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Animator_Root/Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Animator_Root/Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.return_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Animator_Root/Bg/BtnClicker"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.empty_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Animator_Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Animator_Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rpg_animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Animator_Root/Root/PanelContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.prefab_load_root = L1_2
  A0_2.main_panel = nil
  A0_2.eff_detail_panel = nil
  A0_2.cabinet_panel = nil
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDimensionMainPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDimensionMainPanelBinder
  L5_2 = "Animator_Root/Root/PanelContent/OverviewPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_panel = L1_2
end
L0_1.create_dimension_main_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDimensionDisplayEffectPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDimensionDisplayEffectPanelBinder
  L5_2 = "Animator_Root/Root/PanelContent/OverviewPanel/Root/InfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.eff_detail_panel = L1_2
end
L0_1.create_dimension_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueCabinetPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueCabinetPanelBinder
  L5_2 = "Animator_Root/Root/PanelContent/MissionTreePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.cabinet_panel = L1_2
end
L0_1.create_cabinet_panel = L1_1
return L0_1
