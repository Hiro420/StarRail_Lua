local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceEditOverviewPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceEditPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceEditPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.RogueNousDiceEditorPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/RogueNous/RogueNousDiceEditorPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "RogueNousDiceBranchPageBinder: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceEditOverviewPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceEditOverviewPanelBinder
  L5_2 = A0_2.genre_panel_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.genre_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceSurfaceEditPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceSurfaceEditPanelBinder
  L5_2 = A0_2.surface_edit_panel_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.surface_edit_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/BuffPanel/Content/Root/ShortCutHintPanelDark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.gamepad_hint_root = L1_2
end
L0_1._on_bind = L2_1
return L0_1
