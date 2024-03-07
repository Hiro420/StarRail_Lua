local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialTriggerChecker"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.get_row
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L5_2 = A0_2
  L4_2 = A0_2._init_trigger_checkers
  L6_2 = L2_2.TriggerParams
  L7_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._unlock_trigger_count = L5_2
  A0_2._unlock_trigger_checkers = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_trigger_checkers
  L6_2 = L2_2.FinishTriggerParams
  L7_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._finish_trigger_count = L5_2
  A0_2._finish_trigger_checkers = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_related_notify_types
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.init_tutorail = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._unlock_trigger_count
  if L1_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  L2_2 = ipairs
  L3_2 = A0_2._unlock_trigger_checkers
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L1_2 then
      L7_2 = L6_2.func
      L8_2 = L6_2.param
      L9_2 = ...
      L7_2 = L7_2(L8_2, L9_2)
      L1_2 = L7_2
    end
    if not L1_2 then
      break
    end
  end
  return L1_2
end
L0_1.do_check_unlock_triggers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._finish_trigger_count
  if L1_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = false
  L2_2 = ipairs
  L3_2 = A0_2._finish_trigger_checkers
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.func
    L8_2 = L6_2.param
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = true
      break
    end
  end
  return L1_2
end
L0_1.do_check_finish_triggers = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = 0
  L4_2 = nil
  L5_2 = 0
  L6_2 = A1_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = {}
    L10_2 = A1_2[L8_2]
    L11_2 = G
    L11_2 = L11_2.TutorialTriggerCheckerHelper
    L11_2 = L11_2.get_checker_function_by_trigger_type
    L12_2 = L10_2.TriggerType
    L11_2 = L11_2(L12_2)
    L12_2 = G
    L12_2 = L12_2.TutorialTriggerCheckerHelper
    L12_2 = L12_2.get_related_notify_type_by_trigger_type
    L13_2 = L10_2.TriggerType
    L12_2 = L12_2(L13_2)
    A2_2[L12_2] = true
    if L11_2 ~= nil then
      L13_2 = L11_2[1]
      L9_2.func = L13_2
      L13_2 = L11_2[2]
      if L13_2 ~= nil then
        L13_2 = L11_2[2]
        L14_2 = L10_2.TriggerParam
        L13_2 = L13_2(L14_2)
        L9_2.param = L13_2
      else
        L13_2 = L10_2.TriggerParam
        L9_2.param = L13_2
      end
    else
      L13_2 = L0_1._check_trigger_default
      L9_2.func = L13_2
    end
    if L4_2 == nil then
      L13_2 = {}
      L4_2 = L13_2
    end
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L4_2
    L15_2 = L9_2
    L13_2(L14_2, L15_2)
    L3_2 = L3_2 + 1
  end
  L5_2 = L4_2
  L6_2 = L3_2
  return L5_2, L6_2
end
L0_1._init_trigger_checkers = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = false
  return L0_2
end
L0_1._check_trigger_default = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = G
    L8_2 = L8_2.TutorialModule
    L8_2 = L8_2.Instance
    L9_2 = L8_2
    L8_2 = L8_2.add_data_by_notify_type
    L10_2 = L6_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._init_related_notify_types = L1_1
return L0_1
