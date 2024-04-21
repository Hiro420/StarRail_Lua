local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPageSkillInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_core_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.PassiveSkillName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherPassiveSkillTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._skill_core_data
  L2_2 = L2_2.PassiveSkillType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_skill_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.ParamArray
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = A0_2._skill_core_data
    L9_2 = L9_2.ParamArray
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_core_data
  L5_2 = L5_2.PassiveSkillDesc
  L6_2 = unpack
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._skill_core_data
  L1_2 = L1_2.SkillItemRow
  L2_2 = L1_2.ExtraEffectIDList
  L2_2 = L2_2.Length
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.AetherSpiritUtils
    L2_2 = L2_2.get_proper_noun_table_by_spirit_skill_row
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_btn_root = L1_1
return L0_1
