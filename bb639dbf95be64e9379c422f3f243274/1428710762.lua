local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarExtraDescListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._skill_row = A1_2
  A0_2._modifier_table = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_desc
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._modifier_table
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Avatar_SkillInfo_ExtraSkill"
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._modifier_table = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_row
  L1_2 = L1_2.ExtraEffectIDList
  L1_2 = L1_2.Length
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.BattleUIUtils
    L1_2 = L1_2.get_proper_noun_table_from_avatar_skill
    L2_2 = A0_2._skill_row
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root_click = L1_1
return L0_1
