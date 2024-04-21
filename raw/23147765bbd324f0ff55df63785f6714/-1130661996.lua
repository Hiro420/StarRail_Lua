local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UITextUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L2_2
    L7_2 = L7_2 + 1
    L8_2 = A1_2[L6_2]
    L2_2[L7_2] = L8_2
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A0_2
  L5_2 = unpack
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.GetSkillDesc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = A0_2[L5_2]
    L1_2[L6_2] = L7_2
  end
  L2_2 = unpack
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.GetSkillParams = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "UIText_Equipment_Rank_0"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.GetLightConeRank = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = "UIText_Equipment_Rank_0"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1.GetLightConeRankTextID = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = "UIText_Roman_Number_Text_"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1.GetRomanNumberTextID = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 ~= nil then
    L1_2 = A0_2.StatusAddList
    if L1_2 ~= nil then
      L1_2 = A0_2.StatusAddList
      L1_2 = L1_2.Length
      if L1_2 ~= 0 then
        goto lbl_12
      end
    end
  end
  L1_2 = ""
  do return L1_2 end
  ::lbl_12::
  L1_2 = ""
  L2_2 = 0
  L3_2 = A0_2.StatusAddList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.StatusAddList
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.PropertyType
    L7_2 = A0_2.StatusAddList
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.Value
    L8_2 = L7_2
    L7_2 = L7_2.ToFloat
    L7_2 = L7_2(L8_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AvatarPropertyExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if 0 < L5_2 then
      L9_2 = L1_2
      L10_2 = "/n"
      L1_2 = L9_2 .. L10_2
    end
    L9_2 = L1_2
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.TextmapStatic
    L10_2 = L10_2.GetText
    L11_2 = L8_2.PropertyNameSkillTree
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L1_2 = L9_2 .. L10_2
  end
  return L1_2
end
L0_1.get_skill_property_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = "UIText_Roman_Number_En_Text_"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1.GetEnRomanNumberTextID = L1_1
return L0_1
