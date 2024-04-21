local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreePointSubDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A1_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A1_2.AttackType
  L4_2 = A2_2.Row
  L4_2 = L4_2.SkillList
  L5_2 = A1_2.Level
  L6_2 = A2_2.SkillTreeData
  L7_2 = L6_2
  L6_2 = L6_2.GetSkillPointLevel
  L8_2 = A1_2.SkillID
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 - L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = L4_2.Length
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A2_2.SkillTreeData
    L12_2 = L11_2
    L11_2 = L11_2.GetSkillPointLevel
    L13_2 = L4_2[L10_2]
    L11_2 = L11_2(L12_2, L13_2)
    L11_2 = L11_2 + L5_2
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.AvatarSkillExcelTable
    L12_2 = L12_2.GetData
    L13_2 = L4_2[L10_2]
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 ~= nil then
      L13_2 = L12_2.AttackType
      if L13_2 == L3_2 then
        L13_2 = L12_2.HideInUI
        if not L13_2 then
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L6_2
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L7_2 = table
  L7_2 = L7_2.remove
  L8_2 = L6_2
  L9_2 = 1
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.safe_set_active
  L9_2 = #L6_2
  L9_2 = 0 < L9_2
  L7_2(L8_2, L9_2)
  L7_2 = #L6_2
  if 0 < L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.list_sub_desc
    L8_2 = L7_2
    L7_2 = L7_2.setup_count
    L9_2 = #L6_2
    L7_2(L8_2, L9_2)
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = A0_2._binder
      L12_2 = L12_2.list_sub_desc
      L13_2 = L12_2
      L12_2 = L12_2.get_panel_by_index
      L14_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2)
      L14_2 = L12_2
      L13_2 = L12_2.setup_view_in_skill_tree
      L15_2 = L11_2
      L16_2 = A2_2
      L13_2(L14_2, L15_2, L16_2)
    end
  end
end
L0_1.setup_view = L1_1
return L0_1
