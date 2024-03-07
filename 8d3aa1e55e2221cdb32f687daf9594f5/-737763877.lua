local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideData"
L0_1 = L0_1(L1_1)
L1_1 = {}
L0_1._guide_type_to_reddot_key = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.id = A1_2
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L2_2 = L2_2.TutorialStatus
  L2_2 = L2_2.TutorialNone
  A0_2.status = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._row
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.TutorialGuideGroupExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.id
    L1_2 = L1_2(L2_2)
    A0_2._row = L1_2
  end
  L1_2 = A0_2._row
  return L1_2
end
L0_1.get_row = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._trigger_checker
  if L1_2 ~= nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TutorialTriggerChecker
  L1_2 = L1_2(L2_2)
  A0_2._trigger_checker = L1_2
  L1_2 = A0_2._trigger_checker
  L2_2 = L1_2
  L1_2 = L1_2.init_tutorail
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._init_trigger_checker = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reddot_key
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.TutorialGuideGroupExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.id
    L1_2 = L1_2(L2_2)
    L2_2 = L0_1._get_reddot_key_by_type
    L3_2 = L1_2.TutorialType
    L2_2 = L2_2(L3_2)
    A0_2._reddot_key = L2_2
  end
  L1_2 = A0_2._reddot_key
  return L1_2
end
L0_1.get_reddot_key = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._guide_type_to_reddot_key
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L2_2 = "TutorialGuide_"
    L3_2 = tostring
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L1_2 = L2_2 .. L3_2
    L2_2 = L0_1._guide_type_to_reddot_key
    L2_2[A0_2] = L1_2
  end
  return L1_2
end
L0_1._get_reddot_key_by_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.UnlockedTutorialGuides
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2.status
    L2_2 = G
    L2_2 = L2_2.TutorialModule
    L2_2 = L2_2.Instance
    L2_2 = L2_2.TutorialStatus
    L2_2 = L2_2.TutorialNone
    if L1_2 == L2_2 then
      L1_2 = true
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.Prefs
      L1_2 = L1_2.User
      L1_2 = L1_2.UnlockedTutorialGuides
      L2_2 = L1_2
      L1_2 = L1_2.Remove
      L3_2 = A0_2.id
      L1_2(L2_2, L3_2)
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.should_auto_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.status
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.TutorialStatus
  L2_2 = L2_2.TutorialUnlock
  if L1_2 == L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.TutorialStatus
  L1_2 = L1_2.TutorialUnlock
  A0_2.status = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.UnlockedTutorialGuides
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.FBMCOJFCIJG
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.show_guide
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.do_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.status
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.TutorialStatus
  L2_2 = L2_2.TutorialUnlock
  if L1_2 == L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.TutorialStatus
  L1_2 = L1_2.TutorialUnlock
  A0_2.status = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.FBMCOJFCIJG
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_row
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.CanReview
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.TutorialModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.finish_guide
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.do_skip = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.status
  L3_2 = G
  L3_2 = L3_2.TutorialModule
  L3_2 = L3_2.TutorialStatus
  L3_2 = L3_2.TutorialNone
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_trigger_checker
    L2_2(L3_2)
    L2_2 = A0_2._trigger_checker
    L3_2 = L2_2
    L2_2 = L2_2.do_check_finish_triggers
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.do_skip
      L2_2(L3_2)
    else
      L2_2 = A0_2._trigger_checker
      L3_2 = L2_2
      L2_2 = L2_2.do_check_unlock_triggers
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.do_unlock
        L2_2(L3_2)
      end
    end
  end
end
L0_1.try_unlock = L1_1
return L0_1
