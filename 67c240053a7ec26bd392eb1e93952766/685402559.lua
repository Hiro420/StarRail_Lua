local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.LogTag"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "SuperDebug"
L0_1 = L0_1(L1_1)
L1_1 = NG_HSOD_DEBUG
if true == L1_1 then
  L0_1.EnableLog = true
else
  L0_1.EnableLog = false
end
L1_1 = NG_HSOD_DEBUG
if true == L1_1 then
  L0_1.EnableWarn = true
else
  L0_1.EnableWarn = false
end
L0_1.EnableError = true
L1_1 = {}
L2_1 = pairs
L3_1 = G
L3_1 = L3_1.LogTag
L2_1, L3_1, L4_1 = L2_1(L3_1)
for L5_1, L6_1 in L2_1, L3_1, L4_1 do
  L1_1[L6_1] = L5_1
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "[%s] %s"
  L4_2 = L1_1[A0_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1._format_tag = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.EnableLog
  if L2_2 then
    if nil == A0_2 then
      L2_2 = G
      L2_2 = L2_2.LogTag
      A0_2 = L2_2.Default
    end
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = A1_2
    L4_2, L5_2 = ...
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L0_1._format_tag
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Debug
    L3_2 = L3_2.Log
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1.LogFormatWithTag = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.EnableWarn
  if L2_2 then
    if nil == A0_2 then
      L2_2 = G
      L2_2 = L2_2.LogTag
      A0_2 = L2_2.Default
    end
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = A1_2
    L4_2, L5_2 = ...
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L0_1._format_tag
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Debug
    L3_2 = L3_2.LogWarning
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1.LogWarningFormatWithTag = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.EnableError
  if L2_2 then
    if nil == A0_2 then
      L2_2 = G
      L2_2 = L2_2.LogTag
      A0_2 = L2_2.Default
    end
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = A1_2
    L4_2, L5_2 = ...
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L0_1._format_tag
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Debug
    L3_2 = L3_2.LogError
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1.LogErrorFormatWithTag = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.EnableLog
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Debug
    L1_2 = L1_2.Log
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1.Log = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.EnableLog
  if L1_2 then
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = A0_2
    L3_2 = ...
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Debug
    L2_2 = L2_2.Log
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1.LogFormat = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.EnableWarn
  if L1_2 then
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = A0_2
    L3_2 = ...
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Debug
    L2_2 = L2_2.LogWarning
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1.LogWarningFormat = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.EnableError
  if L1_2 then
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = A0_2
    L3_2 = ...
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Debug
    L2_2 = L2_2.LogError
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1.LogErrorFormat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogVeryImportant
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.LogVeryImportant = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = A0_2
  L3_2 = ...
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogVeryImportant
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1.LogVeryImportantFormat = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = assert
  L3_2 = A0_2
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = A1_2
  L6_2 = ...
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.Assert = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = assert
  L3_2 = A0_2
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = A1_2
  L6_2 = ...
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.AssertFormat = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = error
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2
  L4_2 = ...
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.Exception = L2_1
return L0_1
