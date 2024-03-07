local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MemoryTracker"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2
  L0_1._EnableRecord = false
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.Dictionary
  L0_2 = L0_2(L1_2)
  L0_1._AllocationDic = L0_2
end
L0_1.Init = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1._AllocationDic
  L1_2 = L0_2
  L0_2 = L0_2.Dispose
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.delete
  L1_2 = L0_1._AllocationDic
  L0_2(L1_2)
  L0_1._AllocationDic = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L0_1._EnableRecord = A0_2
end
L0_1.SetRecordEnable = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1._EnableRecord
  return L0_2
end
L0_1.IsRecordEnable = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.Clear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._EnableRecord
  if L1_2 then
    L1_2 = debug
    L1_2 = L1_2.traceback
    L1_2 = L1_2()
    L2_2 = L0_1._AllocationDic
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.RecordAlloc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._EnableRecord
  if L1_2 then
    L1_2 = L0_1._AllocationDic
    L2_2 = L1_2
    L1_2 = L1_2.Remove
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.RecordDealloc = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.SuperDebug
  L0_2 = L0_2.LogFormatWithTag
  L1_2 = G
  L1_2 = L1_2.LogTag
  L1_2 = L1_2.MemoryLeak
  L2_2 = "Start Report Leak"
  L0_2(L1_2, L2_2)
  L0_2 = L0_1._AllocationDic
  L1_2 = L0_2
  L0_2 = L0_2.ForEach
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = G
    L3_3 = L3_3.SuperDebug
    L3_3 = L3_3.LogFormatWithTag
    L4_3 = G
    L4_3 = L4_3.LogTag
    L4_3 = L4_3.MemoryLeak
    L5_3 = A1_3
    L3_3(L4_3, L5_3)
    L3_3 = true
    return L3_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = G
  L0_2 = L0_2.SuperDebug
  L0_2 = L0_2.LogFormatWithTag
  L1_2 = G
  L1_2 = L1_2.LogTag
  L1_2 = L1_2.MemoryLeak
  L2_2 = "End Report Leak"
  L0_2(L1_2, L2_2)
end
L0_1.ReportLeak = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.SetRecordEnable
  L1_2 = false
  L0_2(L1_2)
  L0_2 = L0_1.ReportLeak
  L0_2()
end
L0_1.DisableAndReportLeak = L1_1
return L0_1
