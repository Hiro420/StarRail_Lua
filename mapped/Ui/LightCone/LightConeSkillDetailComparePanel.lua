local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSkillDetailComparePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_LightConeBreak_NextTitle"
L2_1 = "UIText_LightBreakPanel_NextLevel"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._equip_data = A1_2
  A0_2._next_rank = A2_2
  A0_2._is_material_empty = A3_2
  L6_2 = A0_2
  L5_2 = A0_2.set_view_state
  L7_2 = A4_2 or L7_2
  if not A4_2 or not A4_2 then
    L7_2 = false
  end
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._change_title_text
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_name_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_level_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetLightConeRankTextID
  L4_2 = A0_2._next_rank
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._next_rank
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxRank
  if L1_2 < L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_skill_level_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#DCC491"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_skill_level_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#282828"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_skill_level_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#121212"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_skill_level_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#ffcf70"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentSkillExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.SkillID
  L3_2 = A0_2._next_rank
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_skill_desc_after
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.SkillDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_desc
  L2_2(L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.EquipmentRow
  L1_2 = L1_2.MaxRank
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.Rank
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_view_state
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_skill_title_after
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_LightConeBreak_CurrentTitle"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_cur_desc = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._is_material_empty
  if L2_2 then
    L2_2 = A0_2._next_rank
    L3_2 = A0_2._equip_data
    L3_2 = L3_2.EquipmentRow
    L3_2 = L3_2.MaxRank
    if L2_2 < L3_2 then
      L1_2 = L2_1
      L2_2 = A0_2._next_rank
      L2_2 = L2_2 + 1
      A0_2._next_rank = L2_2
  end
  else
    L1_2 = L1_1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_skill_title_after
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._change_title_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.EquipmentRow
    L2_2 = L2_2.MaxRank
    L3_2 = A0_2._equip_data
    L3_2 = L3_2.Rank
    A1_2 = L2_2 == L3_2
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.phase_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.phase_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_skill_level_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.GetLightConeRankTextID
    L5_2 = A0_2._equip_data
    L5_2 = L5_2.Rank
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_view_state = L3_1
return L0_1
