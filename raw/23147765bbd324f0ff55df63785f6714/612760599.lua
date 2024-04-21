local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildLevelRewardPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.EvolveLvRewardPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/EvolveLvRewardPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L3_2 = "[EvolveBuild] EvolveBuildLevelRewardPageBinder: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/PanelContent/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.left_panel_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.right_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
