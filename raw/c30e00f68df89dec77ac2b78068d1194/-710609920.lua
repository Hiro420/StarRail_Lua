local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicEquipmentStatusFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Equipped = 0
L1_1.NotEquipped = 1
L0_1.EquipmentStatusFilterType = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2._create_filter_data
  L6_2 = L0_1.EquipmentStatusFilterType
  L6_2 = L6_2.Equipped
  L7_2 = "UIText_Relic_Filter_Status_3_Option_1"
  L8_2 = nil
  L9_2 = false
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2._create_filter_data
  L6_2 = L0_1.EquipmentStatusFilterType
  L6_2 = L6_2.NotEquipped
  L7_2 = "UIText_Relic_Filter_Status_3_Option_2"
  L8_2 = nil
  L9_2 = false
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_Relic_Filter_Status_3_Title"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1.EquipmentStatusFilterType
  L3_2 = L3_2.Equipped
  L3_2 = A2_2[L3_2]
  L4_2 = L0_1.EquipmentStatusFilterType
  L4_2 = L4_2.NotEquipped
  L4_2 = A2_2[L4_2]
  if not L3_2 and not L4_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = A1_2.BelongAvatarID
  L5_2 = L5_2 ~= 0
  if L3_2 then
    return L5_2
  end
  L6_2 = not L5_2
  return L6_2
end
L0_1._filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._filter_state_cache
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._filter_state_cache
  L2_2 = L0_1.EquipmentStatusFilterType
  L2_2 = L2_2.Equipped
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._filter_state_cache
  L3_2 = L0_1.EquipmentStatusFilterType
  L3_2 = L3_2.NotEquipped
  L2_2 = L2_2[L3_2]
  if not L1_2 and not L2_2 then
    L3_2 = 0
    return L3_2
  end
  if L1_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_26
    end
  end
  L3_2 = 2
  ::lbl_26::
  return L3_2
end
L0_1.get_report_filter_type = L1_1
return L0_1
