local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSetSkillInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Relic/Widget/RelicSetSkillInfo.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicSetSkillName/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.relic_set_name = L1_2
  L1_2 = {}
  A0_2.skill_detail_infos = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.RelicSetSkillDetailInfoPanel
    L8_2 = G
    L8_2 = L8_2.RelicSetSkillDetailInfoPanelBinder
    L9_2 = "RelicSetSkillDetailInfo0"
    L10_2 = tostring
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = A0_2.skill_detail_infos
    L7_2 = A0_2.skill_detail_infos
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L6_2[L7_2] = L5_2
  end
end
L0_1._on_bind = L1_1
return L0_1
