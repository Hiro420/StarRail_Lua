local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrongList"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._data = L1_2
  L1_2 = {}
  A0_2._on_change = L1_2
  L1_2 = {}
  A0_2._on_insert = L1_2
  L1_2 = {}
  A0_2._on_remove = L1_2
  L1_2 = {}
  A0_2._on_assign = L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.__len
  A0_2.__len = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = G
    L3_3 = L3_3.SuperDebug
    L3_3 = L3_3.Log
    L4_3 = "__newindex: key="
    L5_3 = A1_3
    L4_3 = L4_3 .. L5_3
    L3_3(L4_3)
    L4_3 = A0_3
    L3_3 = A0_3._calcu_index
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = assert
    L5_3 = L3_3 ~= nil
    L6_3 = "Invalid key: "
    L7_3 = A1_3
    L6_3 = L6_3 .. L7_3
    L4_3(L5_3, L6_3)
    L4_3 = A0_3._data
    L4_3 = L4_3[L3_3]
    L5_3 = A0_3._data
    L5_3[L3_3] = A2_3
    L6_3 = A0_3
    L5_3 = A0_3._invoke_actions
    L7_3 = A0_3._on_assign
    L8_3 = L3_3
    L9_3 = L4_3
    L10_3 = A2_3
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L6_3 = A0_3
    L5_3 = A0_3._invoke_actions
    L7_3 = A0_3._on_change
    L5_3(L6_3, L7_3)
  end
  A0_2.__newindex = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = G
    L2_3 = L2_3.SuperDebug
    L2_3 = L2_3.Log
    L3_3 = "__index: key="
    L4_3 = A1_3
    L3_3 = L3_3 .. L4_3
    L2_3(L3_3)
    L3_3 = A0_3
    L2_3 = A0_3._calcu_index
    L4_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = assert
    L4_3 = L2_3 ~= nil
    L5_3 = "Invalid key: "
    L6_3 = A1_3
    L5_3 = L5_3 .. L6_3
    L3_3(L4_3, L5_3)
    L3_3 = A0_3._data
    L3_3 = L3_3[L2_3]
    return L3_3
  end
  A0_2.__index = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_actions
  L4_2 = A0_2._on_insert
  L5_2 = A0_2._data
  L5_2 = #L5_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_actions
  L4_2 = A0_2._on_change
  L2_2(L3_2, L4_2)
end
L0_1.append = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._data
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2._invoke_actions
    L9_2 = A0_2._on_insert
    L10_2 = A0_2._data
    L10_2 = #L10_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._invoke_actions
  L4_2 = A0_2._on_change
  L2_2(L3_2, L4_2)
end
L0_1.extend = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A0_2._data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._data
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._invoke_actions
      L9_2 = A0_2._on_remove
      L10_2 = L5_2
      L11_2 = L6_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2
      L7_2 = A0_2._invoke_actions
      L9_2 = A0_2._on_change
      L7_2(L8_2, L9_2)
      return
    end
  end
end
L0_1.remove = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._invoke_actions
    L7_2 = A0_2._on_remove
    L8_2 = L4_2
    L9_2 = A0_2._data
    L9_2 = L9_2[L4_2]
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L1_2 = {}
  A0_2._data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_actions
  L3_2 = A0_2._on_change
  L1_2(L2_2, L3_2)
end
L0_1.clear = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  function L2_2(...)
    local L0_3, L1_3, L2_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.func
    L2_3 = ...
    L0_3(L1_3, L2_3)
  end
  return L2_2
end
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = "_on_"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L5_2 = A0_2[L5_2]
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.on = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._on_change
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.on_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._on_insert
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.on_insert = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._on_remove
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.on_remove = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._on_assign
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.on_assign = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2
    L8_2 = ...
    L7_2(L8_2)
  end
end
L0_1._invoke_actions = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    function L3_2(A0_3, A1_3)
      local L2_3
      L2_3 = A0_3 - A1_3
      return L2_3
    end
    A1_2 = L3_2
  end
  L3_2 = nil
  if A2_2 then
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      L2_3 = 0 < L2_3
      return L2_3
    end
    L3_2 = L4_2
  else
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      L2_3 = L2_3 < 0
      return L2_3
    end
    L3_2 = L4_2
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._data
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._invoke_actions
  L6_2 = A0_2._on_change
  L4_2(L5_2, L6_2)
end
L0_1.sort = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  if A1_2 < 0 then
    L2_2 = A0_2._data
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    A1_2 = L2_2 - A1_2
  end
  if 1 <= A1_2 then
    L2_2 = A0_2._data
    L2_2 = #L2_2
    if A1_2 <= L2_2 then
      return A1_2
  end
  else
    L2_2 = nil
    return L2_2
  end
end
L0_1._calcu_index = L2_1
return L0_1
