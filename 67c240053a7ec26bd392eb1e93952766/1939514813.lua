local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ModuleLoad"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = require
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if false == L1_2 then
    L2_2 = error
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Error %s load failed"
    L5_2 = tostring
    L6_2 = A0_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  return L1_2
end
L0_1.Load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = package
  L1_2 = L1_2.loaded
  L1_2[A0_2] = nil
end
L0_1.Unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.Unload
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L0_1.Loader
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.Reload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.Load
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
L0_1.new = L1_1
return L0_1
