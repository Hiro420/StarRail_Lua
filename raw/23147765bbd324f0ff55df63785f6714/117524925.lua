local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailModifierPanel"
  L6_2 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailModifierPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._modifier_node_list = L1_2
  L1_2 = A0_2._modifier_node_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_desc
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._avatar_data = A1_2
  A0_2._skill_id = A2_2
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.SkillTreeData
  L4_2 = L3_2
  L3_2 = L3_2.GetSkillPointLevel
  L5_2 = A0_2._skill_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarSkillExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._skill_id
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_skill_icon
  L8_2 = L4_2.SkillIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_skill_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.SkillName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_skill_type
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.SkillTag
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_icon_skill_type
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.SkillTypeDesc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_skill_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_desc_param
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._modifier_node_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = G
  L7_2 = L7_2.AvatarUtils
  L7_2 = L7_2.get_skill_extra_desc_table
  L8_2 = A1_2
  L9_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect
  L6_2 = L5_2
  L5_2 = L5_2.SetVerticalScrollPercent
  L7_2 = 1
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.ParamList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = A1_2.ParamList
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.SkillDesc
  L6_2 = unpack
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._set_desc_param = L1_1
return L0_1
