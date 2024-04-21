local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPropertyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPropertyBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTurnResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Museum/MuseumExhibitionResultPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
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
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/CountListPanel/Root/BtnNext"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPropertyBarPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPropertyBarPanelBinder
  L5_2 = "Contents/CountListPanel/Root/ProgressInfoRow"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.renew_point_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIFillAnimation
  L4_2 = "Contents/CountListPanel/Root/ProgressInfoRow/ProgressBar/CurrentFill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fill_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPhaseIconPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPhaseIconPanelBinder
  L5_2 = "Contents/LeftTitlePanel/PhaseIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.phase_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/LeftTitlePanel/TextPanel/PhaseText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_phase_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/CountListPanel/Root/CurrentTurnCount/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_renew_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "Contents/CountListPanel/Root/IncomeList/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_result_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
