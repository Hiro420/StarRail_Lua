local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_filter_data
  L1_2 = L1_2(L2_2)
  A0_2._filters = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_filter_type
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherPassiveSkillTypeExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.PassiveSkillType
    L2_3 = #L2_3
    L3_3 = A1_3.PassiveSkillType
    L3_3 = #L3_3
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L10_2 = A0_2
    L9_2 = A0_2._create_filter_data
    L11_2 = L8_2.PassiveSkillType
    L12_2 = L8_2.Name
    L13_2 = L8_2.IconPath
    L14_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L3_2[L10_2] = L9_2
  end
  return L3_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_AetherDivide_Spirit_Skill_Type"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.PassiveSkillType
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
return L0_1
