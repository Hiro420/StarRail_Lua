local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueTalentActive"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._try_get_talent_data
  L1_2(L2_2)
  L1_2 = A0_2._talent_data_items
  if L1_2 == nil then
    return
  end
  L1_2 = 0
  L2_2 = A0_2._talent_data_items
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._talent_data_items
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.CanActive
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "RogueTalentActive"
      L9_2 = L5_2.TalentID
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._talent_data_items
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueTalentData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetTalentDataItemList
  L2_2 = L2_2(L3_2)
  A0_2._talent_data_items = L2_2
end
L0_1._try_get_talent_data = L1_1
return L0_1
