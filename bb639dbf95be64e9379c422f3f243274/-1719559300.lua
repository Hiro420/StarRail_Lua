local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
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
  L5_2 = G
  L5_2 = L5_2.TextExtensions
  L5_2 = L5_2.SafeSetTextID
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_skill_name
  L7_2 = L4_2.SkillName
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.TextExtensions
  L5_2 = L5_2.SafeSetTextID
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_skill_type
  L7_2 = L4_2.SkillTypeDesc
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.TextExtensions
  L5_2 = L5_2.SafeSetText
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_skill_lv
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.TextExtensions
  L5_2 = L5_2.SafeSetTextID
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_skill_desc
  L7_2 = L4_2.SkillDesc
  L8_2 = G
  L8_2 = L8_2.UITextUtils
  L8_2 = L8_2.GetSkillParams
  L9_2 = L4_2.ParamList
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
return L0_1
