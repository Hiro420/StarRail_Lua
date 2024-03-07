local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PopupQueue"
L0_1 = L0_1(L1_1)
L1_1 = "Default"
function L2_1(A0_2, A1_2)
  local L2_2
  A0_2._tag = A1_2
  L2_2 = {}
  A0_2._queue_item_list = L2_2
  A0_2._size = 0
  L2_2 = {}
  A0_2._filter = L2_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2.data
  L5_2 = A0_2
  L4_2 = A0_2._check_should_filter
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_merge_data
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    return
  end
  L4_2 = 1
  L5_2 = A0_2._queue_item_list
  L5_2 = #L5_2
  L6_2 = 1
  L7_2 = -1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._queue_item_list
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.Priority
    if A2_2 < L10_2 then
      L4_2 = L8_2 + 1
      break
    end
  end
  A1_2.Priority = A2_2
  L6_2 = A0_2
  L5_2 = A0_2._insert
  L7_2 = L4_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.Enqueue = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._queue_item_list
  L2_2 = A0_2._queue_item_list
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._remove
    L4_2 = A0_2._queue_item_list
    L4_2 = #L4_2
    L2_2(L3_2, L4_2)
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.Dequeue = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._queue_item_list
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._queue_item_list
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L6_2 = L5_2.canSkip
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._remove
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1.RemoveCanSkip = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._queue_item_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._queue_item_list
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.UI
      if L7_2 == A1_2 then
        L7_2 = L6_2.data
        if L7_2 then
          L7_2 = L6_2.data
          L7_2 = L7_2.CanInterrupt
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2._remove
            L9_2 = L5_2
            L7_2(L8_2, L9_2)
          end
        end
      end
    end
  end
end
L0_1.RemoveCanInterrupt = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._queue_item_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._queue_item_list
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.UI
      if L7_2 == A1_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.CheckUIInQueue = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._size
  return L1_2
end
L0_1.GetQueueNum = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._queue_item_list
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._size
  L3_2 = L3_2 + 1
  A0_2._size = L3_2
  L3_2 = ipairs
  L4_2 = A2_2.data
  L5_2 = L4_2
  L4_2 = L4_2.get_filter_list
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._add_filter
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._do_filter
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._insert = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._queue_item_list
  L2_2 = L2_2[A1_2]
  L3_2 = table
  L3_2 = L3_2.remove
  L4_2 = A0_2._queue_item_list
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._size
  L3_2 = L3_2 - 1
  A0_2._size = L3_2
  L3_2 = ipairs
  L4_2 = L2_2.data
  L5_2 = L4_2
  L4_2 = L4_2.get_filter_list
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._remove_filter
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._remove = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2
  L2_2 = A1_2.get_type
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = A0_2._queue_item_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    if L2_2 ~= L8_2 then
      L8_2 = L7_2.data
      L9_2 = L8_2
      L8_2 = L8_2.get_type
      L8_2 = L8_2(L9_2)
      if L2_2 == L8_2 then
        L8_2 = L7_2.data
        L9_2 = L8_2
        L8_2 = L8_2.merge
        L10_2 = A1_2
        L8_2(L9_2, L10_2)
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._try_merge_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2._filter
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A1_2
    L7_2 = A1_2.get_type
    L7_2 = L7_2(L8_2)
    if L5_2 == L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_should_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._queue_item_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._queue_item_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.data
    L8_2 = L7_2
    L7_2 = L7_2.get_type
    L7_2 = L7_2(L8_2)
    if A1_2 == L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._remove
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._do_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._filter
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._filter
    L3_2 = A0_2._filter
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2 + 1
    L2_2[A1_2] = L3_2
  else
    L2_2 = A0_2._filter
    L2_2[A1_2] = 1
  end
end
L0_1._add_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._filter
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._filter
  L3_2 = A0_2._filter
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 - 1
  L2_2[A1_2] = L3_2
  L2_2 = A0_2._filter
  L2_2 = L2_2[A1_2]
  if L2_2 == 0 then
    L2_2 = A0_2._filter
    L2_2[A1_2] = nil
  end
end
L0_1._remove_filter = L2_1
return L0_1
