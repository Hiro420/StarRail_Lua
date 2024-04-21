local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityStateSwitchComposite"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._item_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._item_panels
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._item_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.setup_view
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.setup_view
        L9_2 = A1_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._item_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = G
      L7_2 = L7_2.IsInstanceOf
      L8_2 = L6_2
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return L6_2
      end
    end
  end
end
L0_1.get_item_by_type = L1_1
return L0_1
