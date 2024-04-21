local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentTreeRow"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._talent_data_items = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._talent_data_items
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_data_item = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._talent_data_items
  return L1_2
end
L0_1.get_data_items = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._talent_data_items
  if L2_2 ~= nil then
    L2_2 = A0_2._talent_data_items
    L3_2 = L2_2
    L2_2 = L2_2.Count
    L2_2 = L2_2(L3_2)
    if L2_2 ~= 0 then
      goto lbl_11
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_11::
  L2_2 = A0_2._talent_data_items
  L3_2 = L2_2
  L2_2 = L2_2.Get
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_data_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talent_data_items
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L0_1.get_item_count = L1_1
return L0_1
