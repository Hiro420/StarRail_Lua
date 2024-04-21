local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarLightConeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AvatarDialogV2_LightCone"
L2_1 = "UIText_Equipment_RankLevel"
L3_1 = {}
L3_1.Active = "#18FFCB"
L3_1.Inactive = "#FFFFFF7F"
L4_1 = {}
L5_1 = {}
L6_1 = 1
L7_1 = 1
L8_1 = 1
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L4_1[3] = L5_1
L5_1 = {}
L6_1 = 1
L7_1 = 1
L8_1 = 1
L9_1 = 1
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L4_1[4] = L5_1
L5_1 = {}
L6_1 = 1
L7_1 = 1
L8_1 = 1
L9_1 = 1
L10_1 = 1
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L4_1[5] = L5_1
L0_1._rarity_data_map = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.AvatarData
  L3_2 = L2_2
  L2_2 = L2_2.GetEquipment
  L2_2 = L2_2(L3_2)
  A0_2._equipment = L2_2
  L2_2 = A0_2._equipment
  L2_2 = L2_2 == nil
  L4_2 = A0_2
  L3_2 = A0_2._set_empty_tip
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    return
  end
  A0_2._avatar_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_lightcone_property_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lightcone_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lightcone_image
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_match_status
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.property_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cone_property
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_left_border = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_right_border = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_empty_tip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equipment
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_story
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
  L1_2 = L1_2.txt_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L4_2 = A0_2._equipment
  L4_2 = L4_2.Rank
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.star_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1._rarity_data_map
  L4_2 = A0_2._equipment
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.Rarity
  L4_2 = #L4_2
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L0_1._setup_lightcone_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_light_cone
  L4_2 = A0_2._equipment
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_light_cone
  L2_2 = A0_2._equipment
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.ItemRightPanelOffset
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if L3_2 == 3 then
      L3_2 = L2_2[0]
      L4_2 = L2_2[1]
      L5_2 = L2_2[2]
      L6_2 = A0_2.origin_pos
      if L6_2 == nil then
        L6_2 = L1_2.transform
        L6_2 = L6_2.localPosition
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        A0_2.origin_pos = L7_2
      end
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L5_2
      L9_2 = L5_2
      L10_2 = 1
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localScale = L7_2
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = A0_2.origin_pos
      L8_2 = L8_2.x
      L8_2 = L8_2 + L3_2
      L9_2 = A0_2.origin_pos
      L9_2 = L9_2.y
      L9_2 = L9_2 + L4_2
      L10_2 = A0_2.origin_pos
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localPosition = L7_2
    end
  end
end
L0_1._setup_lightcone_image = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._equipment
  L1_2 = L1_2.EquipmentRow
  L1_2 = L1_2.AvatarBaseType
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession_unmatch
  L7_2 = L3_2.BaseTypeIcon
  L4_2(L5_2, L6_2, L7_2)
  if L1_2 == L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_match
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_unmatch
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_profession_match
    L7_2 = L3_2.BaseTypeIconSmall
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_cone_skill_details
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_1.Active
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_match
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_unmatch
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_cone_skill_details
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_1.Inactive
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
  end
end
L0_1._setup_match_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "UIText_Equipment_Rank_0"
  L2_2 = tostring
  L3_2 = A0_2._equipment
  L3_2 = L3_2.BattleRank
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_lightcone_level_textid = L4_1
function L4_1(A0_2)
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
L0_1._refresh_lightcone_property_data = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._entity = nil
end
L0_1._on_dispose = L4_1
return L0_1
