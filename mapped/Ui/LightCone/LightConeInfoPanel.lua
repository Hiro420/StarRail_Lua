local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Active = "#94FFD9"
L1_1.Inactive = "#FFFFFF7F"
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetEquipment
  L2_2 = L2_2(L3_2)
  A0_2._equipment = L2_2
  L2_2 = A0_2._equipment
  if L2_2 == nil then
    return
  end
  A0_2._avatar_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_lightcone_property_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lightcone_info
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cone_property
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_lv
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cone_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cone_skill_title_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cone_skill_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L4_2 = A0_2
  L3_2 = A0_2._get_lightcone_level_textid
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cone_skill_details
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._equipment
  L5_2 = L5_2.BattleRankSkillRow
  L5_2 = L5_2.ParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._equipment
  L1_2 = L1_2.EquipmentRow
  L1_2 = L1_2.AvatarBaseType
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  if L1_2 == L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_match
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_unmatch
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cone_skill_details
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = L1_1.Active
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_match
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_unmatch
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cone_skill_details
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = L1_1.Inactive
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1._setup_lightcone_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "UIText_Equipment_Rank_0"
  L2_2 = tostring
  L3_2 = A0_2._equipment
  L3_2 = L3_2.BattleRank
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_lightcone_level_textid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._cone_property = L1_2
  L1_2 = A0_2._equipment
  L2_2 = L1_2
  L1_2 = L1_2.GetAllPropertyUIData
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._cone_property
    L8_2 = A0_2._cone_property
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_lightcone_property_data = L2_1
return L0_1
