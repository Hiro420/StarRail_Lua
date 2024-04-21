local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeBreakComparePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._equip_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_level_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetLightConeRankTextID
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.Rank
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_desc_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.SkillRow
  L5_2 = L5_2.ParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh = L1_1
return L0_1
