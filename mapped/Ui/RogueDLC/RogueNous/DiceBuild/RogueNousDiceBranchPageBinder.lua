local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceBranchPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceBranchPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.RogueNousDiceBranchPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/RogueNous/RogueNousDiceCustomSelectPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_common_components
  L1_2(L2_2)
  L1_2 = A0_2.mobile_tab_root
  A0_2.tab_control_root = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_common_components
  L1_2(L2_2)
  L1_2 = A0_2.pc_tab_root
  A0_2.tab_control_root = L1_2
end
L0_1._on_pc_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceBranchPanel
  L5_2 = G
  L5_2 = L5_2.RogueNousDiceBranchPanelBinder
  L6_2 = A0_2.branch_root_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceBranchPanel
  L5_2 = G
  L5_2 = L5_2.RogueNousDiceBranchPanelBinder
  L6_2 = A0_2.branch_root_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceBranchPanel
  L5_2 = G
  L5_2 = L5_2.RogueNousDiceBranchPanelBinder
  L6_2 = A0_2.branch_root_3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.branch_panels = L1_2
end
L0_1._bind_common_components = L2_1
return L0_1
