local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyHistoryItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if A2_2 ~= nil then
    if A4_2 ~= nil then
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A4_2
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = A2_2
      L8_2, L9_2 = L8_2(L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.setup_title_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_value
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_value
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_content_view = L1_1
return L0_1
