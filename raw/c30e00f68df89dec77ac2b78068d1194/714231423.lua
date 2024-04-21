local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeDisplayPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeDetailPanel
  L4_2 = G
  L4_2 = L4_2.LightConeDetailPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.light_cone_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/TabDrawcardTab/TabDrawcardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_statistic_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/LightConeTitlePanel/BtnEquipLock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/Level"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/LightConeInfoDetail/ExpPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/SwitchPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_switch_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeInfoPanel/SwitchPanel/BtnSwitchLevel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_switch_level = L1_2
end
L0_1._on_bind = L1_1
return L0_1
