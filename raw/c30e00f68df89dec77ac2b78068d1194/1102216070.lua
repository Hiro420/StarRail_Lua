local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompare"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompareBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSkillComparePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSkillPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplaceComparePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfo/RelicInfoDetail/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relic_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfo/RelicInfoDetail/PositionPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_position = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfo/RelicInfoDetail/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relil_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/SwitchTabPanel/BtnList/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_compare = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/SwitchTabPanel/BtnList/BtnCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_result = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/RelicStatusPanel/RelicStatusEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_empty2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/RelicInfoDetail"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/RelicSkillPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/EquippedInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_equip_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/RelicInfo/RelicStatusPanel/RelicStatusInfoCompare"
  L6_2 = G
  L6_2 = L6_2.StatusDetailInfoCompare
  L7_2 = G
  L7_2 = L7_2.StatusDetailInfoCompareBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.relic_status_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSkillComparePanel
  L4_2 = G
  L4_2 = L4_2.RelicSkillPanelBinder
  L5_2 = "Contents/RelicInfo/RelicSkillComparePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_set_skill_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSetSkillInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicSetSkillInfoPanelBinder
  L5_2 = "Contents/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView/Viewport/Content/RelicSetSkillInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.set_skill_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicStatusPanel
  L4_2 = G
  L4_2 = L4_2.RelicStatusPanelBinder
  L5_2 = "Contents/RelicInfo/RelicStatusPanel/RelicStatusInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_status_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1