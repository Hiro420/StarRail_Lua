local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarElementFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._create_filter_data
    L10_2 = L7_2.ID
    L10_2 = #L10_2
    L11_2 = L7_2.DamageTypeName
    L12_2 = L7_2.IconNatureColor
    L13_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_TeamMemberSelectOptionDialog_Label_Element"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_use_color_img = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsType
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AssistData
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A1_2.AvatarData
    L3_2 = L3_2.Row
    L3_2 = L3_2.DamageType
    L3_2 = #L3_2
    L3_2 = A2_2[L3_2]
    return L3_2
  end
  L3_2 = A1_2.Row
  L3_2 = L3_2.DamageType
  L3_2 = #L3_2
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
return L0_1
