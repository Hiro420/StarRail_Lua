local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getfenv
L2_1 = L0_1.setfenv
L3_1 = L0_1.setmetatable
L4_1 = L0_1.type
L5_1 = module
L6_1 = "loop.static"
L5_1(L6_1)
L5_1 = L3_1
L6_1 = {}
L7_1 = {}
L7_1.__mode = "k"
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  function L1_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = {}
    L1_3 = L2_1
    L2_3 = A0_2
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3, L3_3, L4_3 = ...
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 ~= nil then
      L2_3 = L2_1
      L3_3 = A0_2
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L2_3 = L1_1
    L3_3 = A0_2
    return L2_3(L3_3)
  end
  L5_1[L1_2] = A0_2
  return L1_2
end
class = L6_1
function L6_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1[A0_2]
  L2_2 = L2_1
  L3_2 = L1_2
  L4_2 = L1_1
  L5_2 = 2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2
  L3_2, L4_2, L5_2 = ...
  return L2_2(L3_2, L4_2, L5_2)
end
inherit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = L2_1
    L2_2 = 2
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
become = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = 1
  end
  L2_2 = L2_2 + 1
  return L1_2(L2_2)
end
self = L6_1
function L6_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = A0_2
  L2_2 = ...
  return L1_2(L2_2)
end
new = L6_1
