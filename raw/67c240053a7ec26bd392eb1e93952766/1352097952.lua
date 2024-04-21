local L0_1, L1_1
L0_1 = require
L1_1 = "Base.DataStruct.List"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TimerMgr"
L0_1 = L0_1(L1_1)
L0_1.Ins = nil
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._TimerList = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._TimerList
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L0_1.get_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._TimerList
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._TimerList
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._add_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._TimerList
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    A1_2._is_dispose = true
  end
end
L0_1._remove_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._add_object
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_timer = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._remove_object
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.remove_timer = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._TimerList
  L3_2 = L2_2
  L2_2 = L2_2.GetData
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._TimerList
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  while L3_2 >= L4_2 do
    L5_2 = L2_2[L4_2]
    if L5_2 == nil then
      L4_2 = L4_2 + 1
    else
      L6_2 = L5_2._is_dispose
      if not L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.on_timer
        L8_2 = A1_2
        L6_2(L7_2, L8_2)
      end
      L6_2 = L5_2._is_dispose
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._remove_object
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      else
        L4_2 = L4_2 + 1
      end
    end
  end
end
L0_1.advance = L1_1
return L0_1
