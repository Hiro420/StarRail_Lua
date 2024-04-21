local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhaseIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhaseIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumNewPhaseDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Museum/MuseumNewAreaDialog.prefab"
  return L0_2
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
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPhaseIconPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPhaseIconPanelBinder
  L5_2 = "Root/Contents/TitlePanel/PhaseIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.phase_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/AreaPanel/AreaIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/AreaPanel/TextPanel/IndexNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_area_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/AreaPanel/TextPanel/AreaName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_area_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/AreaPanel/TextPanel/Dash"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_area_text_dash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/TitlePanel/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_unlock_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/CurrencyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fund_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/CurrencyPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_fund_num = L1_2
end
L0_1._on_bind = L1_1
return L0_1
