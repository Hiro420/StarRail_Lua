local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDividePassiveSkillPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._skill_slot_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._skill_slot_data
  L2_2 = L2_2.SkillCoreData
  if not L2_2 then
    return
  end
  L3_2 = L2_2.SkillItemRow
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.PassiveSkillName
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = 0
  L6_2 = L3_2.ParamList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L4_2
    L11_2 = L3_2.ParamList
    L11_2 = L11_2[L8_2]
    L9_2(L10_2, L11_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_2.PassiveSkillDescription
  L8_2 = unpack
  L9_2 = L4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
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
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
