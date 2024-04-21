local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterMultiSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterMultiSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSubPropertyFilterPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "IncludeSetting/TogInclude"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_include = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "IncludeSetting/TogExclude"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exclude = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "IncludeSetting/TogInclude/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_include = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "IncludeSetting/TogExclude/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_exclude = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TipPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_include_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterMultiSelectPanel
  L4_2 = G
  L4_2 = L4_2.RelicFilterMultiSelectPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.filter_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
