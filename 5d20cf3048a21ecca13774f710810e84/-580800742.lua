local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RedDotDispatcher"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._RedDot2Components = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._RedDot2Components = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2._RedDot2Components
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = G
      L7_2 = L7_2.SuperDebug
      L7_2 = L7_2.LogWarningFormatWithTag
      L8_2 = G
      L8_2 = L8_2.LogTag
      L8_2 = L8_2.UI
      L9_2 = "The same UI try to register red dot twice, name: %s"
      L10_2 = name
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._RedDot2Components
  L4_2 = A0_2._RedDot2Components
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.register_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._RedDot2Components
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._RedDot2Components
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.unregister_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._RedDot2Components
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.update
    L6_2(L7_2)
  end
end
L0_1.update = L1_1
return L0_1
