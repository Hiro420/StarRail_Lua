local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompare"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompareBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeReplaceRightPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = {}
L3_1.Active = "#18FFCBFF"
L3_1.Inactive = "#C0C0C0FF"
L4_1 = {}
L4_1.Active = "#004D1CA6"
L4_1.Inactive = "#222222A6"
L5_1 = {}
L5_1.Active = "#FFFFFFFF"
L5_1.Inactive = "#EB4D3DFF"
function L6_1(A0_2)
  local L1_2
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._equip_data_after = A2_2
  A0_2._equip_data_before = A1_2
  A0_2._avatar_id = A3_2
  L4_2 = A0_2._equip_data_after
  if L4_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._setup_unequipped_panel
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_level_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_current_before
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_max_before
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_splash_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_max_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Equioment_Unequipped"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = L1_1.MaxHP
  L1_2.PropertyType = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hp_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_unequipped_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = L1_1.Attack
  L2_2.PropertyType = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.attack_compare_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_unequipped_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L1_1.Defence
  L3_2.PropertyType = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.defence_compare_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_unequipped_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty_skill
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L0_1._setup_unequipped_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_info_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill_panel
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_level
  L3_2 = "after"
  L4_2 = A0_2._equip_data_after
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_level
  L3_2 = "before"
  L4_2 = A0_2._equip_data_before
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data_after
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._equip_data_before
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_item_name_before
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Equioment_Unequipped"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_item_name_before
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._equip_data_before
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view_info_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FixPoint
  L1_2 = L1_2.Zero
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FixPoint
  L2_2 = L2_2.Zero
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FixPoint
  L3_2 = L3_2.Zero
  L4_2 = A0_2._equip_data_before
  if L4_2 ~= nil then
    L4_2 = A0_2._equip_data_before
    L5_2 = L4_2
    L4_2 = L4_2.GetHP
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
    L4_2 = A0_2._equip_data_before
    L5_2 = L4_2
    L4_2 = L4_2.GetAttack
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
    L4_2 = A0_2._equip_data_before
    L5_2 = L4_2
    L4_2 = L4_2.GetDefence
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = A0_2._equip_data_after
  L5_2 = L4_2
  L4_2 = L4_2.GetHP
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._equip_data_after
  L6_2 = L5_2
  L5_2 = L5_2.GetAttack
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._equip_data_after
  L7_2 = L6_2
  L6_2 = L6_2.GetDefence
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L8_2 = L1_1.MaxHP
  L7_2.PropertyType = L8_2
  L7_2.NumBefore = L1_2
  L7_2.NumAfter = L4_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.hp_compare_panel
  L9_2 = L8_2
  L8_2 = L8_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L9_2 = L1_1.Attack
  L8_2.PropertyType = L9_2
  L8_2.NumBefore = L2_2
  L8_2.NumAfter = L5_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.attack_compare_panel
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = L1_1.Defence
  L9_2.PropertyType = L10_2
  L9_2.NumBefore = L3_2
  L9_2.NumAfter = L6_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.defence_compare_panel
  L11_2 = L10_2
  L10_2 = L10_2.setup_view
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = G
  L10_2 = L10_2.UIColorUtils
  L10_2 = L10_2.GetColor
  L11_2 = "#2FFFF8FF"
  L10_2 = L10_2(L11_2)
  L11_2 = G
  L11_2 = L11_2.UIColorUtils
  L11_2 = L11_2.GetColor
  L12_2 = "#C84A32FF"
  L11_2 = L11_2(L12_2)
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColor
  L13_2 = "#EAD7C6FF"
  L12_2 = L12_2(L13_2)
end
L0_1._setup_status_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_skill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._equip_data_after
  L1_2 = L1_2.EquipmentRow
  L1_2 = L1_2.AvatarBaseType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L2_2 = L2_2.ConvertBaseIDToReal
  L3_2 = A0_2._avatar_id
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.AvatarBaseType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._equip_data_after
  L5_2 = L5_2.EquipmentRow
  L5_2 = L5_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  if L1_2 == L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.go_match
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.go_unmatch
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_item_desc
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L3_1.Active
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.shadow_desc
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L4_1.Active
    L6_2 = L6_2(L7_2)
    L5_2.effectColor = L6_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarBaseTypeExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._equip_data_after
    L6_2 = L6_2.EquipmentRow
    L6_2 = L6_2.AvatarBaseType
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_match
    L8_2 = L4_2.BaseTypeIconSmall
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_match
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Equipment_Path_Equipmatch_State"
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L4_2.BaseTypeText
    L8_2, L9_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_match
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L5_1.Active
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.go_match
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.go_unmatch
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_item_desc
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L3_1.Inactive
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.shadow_desc
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L4_1.Inactive
    L6_2 = L6_2(L7_2)
    L5_2.effectColor = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_match
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Equipment_Path_EquipUnmatch_State"
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L4_2.BaseTypeText
    L8_2, L9_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_match
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L5_1.Inactive
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._equip_data_after
  L7_2 = L7_2.SkillRow
  L7_2 = L7_2.SkillDesc
  L8_2 = G
  L8_2 = L8_2.UITextUtils
  L8_2 = L8_2.GetSkillParams
  L9_2 = A0_2._equip_data_after
  L9_2 = L9_2.SkillRow
  L9_2 = L9_2.ParamList
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_skill_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._equip_data_after
  L7_2 = L7_2.SkillRow
  L7_2 = L7_2.SkillName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_rank_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = G
  L7_2 = L7_2.UITextUtils
  L7_2 = L7_2.GetLightConeRankTextID
  L8_2 = A0_2._equip_data_after
  L8_2 = L8_2.Rank
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_rank_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Equipment_RankLevel"
  L8_2 = A0_2._equip_data_after
  L8_2 = L8_2.Rank
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._equip_data_after
  L5_2 = L5_2.Rank
  L6_2 = A0_2._equip_data_after
  L6_2 = L6_2.EquipmentRow
  L6_2 = L6_2.MaxRank
  if L5_2 < L6_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_rank_level
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#DCC491"
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_rank_bg
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#282828"
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_rank_level
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#121212"
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_rank_bg
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#ffcf70"
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_bg_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._equip_data_after
  L7_2 = L7_2.BGDesc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect_desc
  L6_2 = L5_2
  L5_2 = L5_2.SetVerticalScrollPercent
  L7_2 = 1
  L5_2(L6_2, L7_2)
end
L0_1._setup_skill_panel = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_item_level_before
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_level_before
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.Level
  L5_2 = A2_2
  L4_2 = A2_2.GetCurrentMaxLv
  L4_2 = L4_2(L5_2)
  L5_2 = L2_1.SafeSetText_Num
  L6_2 = A0_2._binder
  L7_2 = "text_level_current_"
  L8_2 = A1_2
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2[L7_2]
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  if L4_2 ~= nil and 0 < L4_2 then
    L5_2 = L2_1.SafeSetText_Num
    L6_2 = A0_2._binder
    L7_2 = "text_level_max_"
    L8_2 = A1_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "text_level_splash_"
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "text_level_max_"
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L6_2 = "text_level_splash_"
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "text_level_max_"
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1.set_level = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeReplacePage"
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._btn_replace_onclick = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._btn_upgrade_onclick = L6_1
return L0_1
