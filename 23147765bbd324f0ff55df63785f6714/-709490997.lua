local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicInfoDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicInfoDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSkillPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSkillPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicSetDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Relic/Widget/AvatarRelicSetDetailPanel"
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
  L4_2 = "RelicInfoPanel/FunctionPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_replace = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RelicInfoPanel/FunctionPanel/BtnAssemly"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quick_dress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RelicInfoPanel/FunctionPanel/BtnUnistall"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_uninstall = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicInfoPanel/FunctionPanel/BtnAssemly/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicInfoDetailPanel
  L4_2 = G
  L4_2 = L4_2.RelicInfoDetailPanelBinder
  L5_2 = "RelicInfoPanel/RelicInfoDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSkillPanel
  L4_2 = G
  L4_2 = L4_2.RelicSkillPanelBinder
  L5_2 = "RelicInfoPanel/RelicSkillPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_skill_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
