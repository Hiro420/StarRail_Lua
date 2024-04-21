local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterToggleSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterToggleSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicFilterStatusTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterToggleSelectPanel
  L4_2 = G
  L4_2 = L4_2.RelicFilterToggleSelectPanelBinder
  L5_2 = "Viewport/Content/LockStatus"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.lock_status_filter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterToggleSelectPanel
  L4_2 = G
  L4_2 = L4_2.RelicFilterToggleSelectPanelBinder
  L5_2 = "Viewport/Content/LevelStatus"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.level_status_filter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterToggleSelectPanel
  L4_2 = G
  L4_2 = L4_2.RelicFilterToggleSelectPanelBinder
  L5_2 = "Viewport/Content/EquipStatus"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.equip_status_filter_panel = L1_2
  L1_2 = {}
  L2_2 = A0_2.lock_status_filter_panel
  L3_2 = A0_2.level_status_filter_panel
  L4_2 = A0_2.equip_status_filter_panel
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.all_filter_panel = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_text_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_text_2 = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
