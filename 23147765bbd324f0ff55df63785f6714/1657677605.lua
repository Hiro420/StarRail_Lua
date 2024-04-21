local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicMainStatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicMainStatusDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicStatusPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusAddHint/AddHint"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_statu_add_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusAddHint/UpgradeHint"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_statu_upgrade_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusAddHint"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_status_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicMainStatusDetailInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicMainStatusDetailInfoPanelBinder
  L5_2 = "MainStatus/RelicMainStatusDetailInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_statu_detail_panel = L1_2
  L1_2 = {}
  A0_2.sub_status_panel = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "SubStatus0"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = "/StatusDetailInfo"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.StatusDetailInfoPanel
    L9_2 = G
    L9_2 = L9_2.StatusDetailInfoPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.sub_status_panel
    L9_2 = A0_2.sub_status_panel
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
