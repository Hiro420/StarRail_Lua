local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStageEntrance"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.EvolveBuildMainPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/EvolveBuildMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
    L3_2 = "[EvolveBuild] EvolveBuildMainPage: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L2_2 = A0_2.page1
  L3_2 = A0_2.page2
  L4_2 = A0_2.page3
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.pages = L1_2
  L1_2 = {}
  L2_2 = A0_2.page_dot1
  L3_2 = A0_2.page_dot2
  L4_2 = A0_2.page_dot3
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.page_dots = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage1_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage1_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage2_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage2_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage3_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage3_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage4_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage4_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage5_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage5_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage6_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage6_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStageEntrance
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStageEntranceBinder
  L5_2 = A0_2.stage7_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.stage7_btn = L1_2
  L1_2 = {}
  L2_2 = A0_2.stage1_btn
  L3_2 = A0_2.stage2_btn
  L4_2 = A0_2.stage3_btn
  L5_2 = A0_2.stage5_btn
  L6_2 = A0_2.stage5_btn
  L7_2 = A0_2.stage6_btn
  L8_2 = A0_2.stage7_btn
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  A0_2.stage_btns = L1_2
end
L0_1._on_bind = L2_1
return L0_1
