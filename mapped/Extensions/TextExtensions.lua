local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TextExtensions"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2 ~= nil
  if A2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.Assert
    L5_2 = L3_2
    L6_2 = "SafeSetText(str): text component null error!!"
    L4_2(L5_2, L6_2)
  end
  if L3_2 then
    if not A2_2 then
      A2_2 = false
    end
    L5_2 = A0_2
    L4_2 = A0_2.SafeSetText
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.SafeSetText = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2 ~= nil
  if A2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.Assert
    L5_2 = L3_2
    L6_2 = "SafeSetText(num): text component null error!!"
    L4_2(L5_2, L6_2)
  end
  if L3_2 then
    if not A2_2 then
      A2_2 = false
    end
    L5_2 = A0_2
    L4_2 = A0_2.SafeSetText
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.SafeSetText_Num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2 ~= nil
  if L3_2 then
    if A2_2 == nil then
      L5_2 = A0_2
      L4_2 = A0_2.SafeSetTextID
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2.SafeSetTextID
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1.SafeSetTextID = L1_1
return L0_1
