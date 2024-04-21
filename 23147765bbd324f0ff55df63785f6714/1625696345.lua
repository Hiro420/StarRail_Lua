local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitSingleDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicSuitSingleDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSuitDetailPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/DataBankRelicSuitsDetailPage.prefab"
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
  A0_2.btn_close = L1_2
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
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/AvatarRelicPanel/Root/BtnPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PanelContent/SuitContainer/NamePanel/SuitNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_suit_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSuitContainerPanel
  L4_2 = G
  L4_2 = L4_2.RelicSuitContainerPanelBinder
  L5_2 = "Root/PanelContent/SuitContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.suit_containter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSuitSingleDetailPanel
  L4_2 = G
  L4_2 = L4_2.RelicSuitSingleDetailPanelBinder
  L5_2 = "Root/PanelContent/AvatarRelicPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.suit_single_detail_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
