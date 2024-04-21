local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveDetailPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/DataBankMonsterDetailPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/MonsterDetailPanel/ViewBtnPanel/Btn3DView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/LeftBtnPanel/BtnFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterArchiveDetailPanel
  L4_2 = G
  L4_2 = L4_2.MonsterArchiveDetailPanelBinder
  L5_2 = "Root/PanelContent/MonsterDetailPanel/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.monster_detail_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
