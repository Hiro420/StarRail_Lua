local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreePointTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_skill_tag
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A1_2.SkillTag
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_skill_tag
    L5_2 = L4_2
    L4_2 = L4_2.SetCustomizedText
    L6_2 = "["
    L7_2 = L2_2
    L8_2 = "]"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
