local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Thread.MCoroutine"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MCoroutineMgr"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._all_coroudinates = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._all_coroudinates
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.List
    L4_2 = L4_2(L5_2)
    A0_2._all_coroudinates = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.MCoroutine
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.CreateAndResume
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._all_coroudinates
  L6_2 = L5_2
  L5_2 = L5_2.Add
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1.StartCoroutine = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._all_coroudinates
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.List
    L2_2 = L2_2(L3_2)
    A0_2._all_coroudinates = L2_2
  end
  L2_2 = A0_2._all_coroudinates
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.Dispose
    L2_2(L3_2)
  end
end
L0_1.StopCoroutine = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._all_coroudinates
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.List
    L2_2 = L2_2(L3_2)
    A0_2._all_coroudinates = L2_2
  end
  L2_2 = nil
  L3_2 = A0_2._all_coroudinates
  L4_2 = L3_2
  L3_2 = L3_2.Pairs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.GetStatus
    L8_2 = L8_2(L9_2)
    L9_2 = G
    L9_2 = L9_2.MCoroutineState
    L9_2 = L9_2.dead
    if L8_2 == L9_2 then
      if L2_2 == nil then
        L9_2 = {}
        L2_2 = L9_2
      end
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = G
      L9_2 = L9_2.MCoroutineState
      L9_2 = L9_2.suspended
      if L8_2 == L9_2 then
        L10_2 = L7_2
        L9_2 = L7_2.Resume
        L9_2(L10_2)
      end
    end
  end
  if L2_2 == nil then
    return
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.StopCoroutine
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.Tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._all_coroudinates
  if L1_2 ~= nil then
    L1_2 = A0_2._all_coroudinates
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L0_1.dispose = L1_1
return L0_1
