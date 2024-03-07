local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialData"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Logic.TutorialModule.TutorialTriggerChecker"
L1_1(L2_1)
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
    L1_2 = L1_2.TutorialDataExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.id
    L1_2 = L1_2(L2_2)
    A0_2._row = L1_2
  end
  L1_2 = A0_2._row
  return L1_2
end
L0_1.get_row = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_trigger_checker
  L2_2(L3_2)
  L2_2 = A0_2._trigger_checker
  L3_2 = L2_2
  L2_2 = L2_2.do_check_unlock_triggers
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.do_check_unlock_triggers = L1_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_battle_tutorial
  if L1_2 ~= nil then
    L1_2 = A0_2._is_battle_tutorial
    return L1_2
  end
  A0_2._is_battle_tutorial = false
  L2_2 = A0_2
  L1_2 = A0_2.get_row
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.TriggerParams
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.TriggerParams
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.TriggerType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.TutorialTriggerType
    L7_2 = L7_2.EnterBattle
    if L6_2 ~= L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.TutorialTriggerType
      L7_2 = L7_2.EnterBattleByStageType
      if L6_2 ~= L7_2 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.TutorialTriggerType
        L7_2 = L7_2.EnterBattleByChallengeType
        if L6_2 ~= L7_2 then
          goto lbl_41
        end
      end
    end
    A0_2._is_battle_tutorial = true
    do break end
    ::lbl_41::
  end
  L2_2 = A0_2._is_battle_tutorial
  return L2_2
end
L0_1.has_battle_trigger = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_row
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.TriggerParams
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.TriggerType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.TutorialTriggerType
    L8_2 = L8_2.ShowUIContext
    if L7_2 == L8_2 then
      L7_2 = A1_2 == nil
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1.has_uicontext_trigger = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FinishedTutorials
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2.status
    L3_2 = G
    L3_2 = L3_2.TutorialModule
    L3_2 = L3_2.Instance
    L3_2 = L3_2.TutorialStatus
    L3_2 = L3_2.TutorialFinish
    if L2_2 ~= L3_2 then
      L2_2 = true
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L2_2 = L2_2.FinishedTutorials
      L3_2 = L2_2
      L2_2 = L2_2.Remove
      L4_2 = A0_2.id
      L2_2(L3_2, L4_2)
      L2_2 = false
      return L2_2
    end
  end
  if not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.status
  L3_2 = G
  L3_2 = L3_2.TutorialModule
  L3_2 = L3_2.Instance
  L3_2 = L3_2.TutorialStatus
  L3_2 = L3_2.TutorialUnlock
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_row
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.RestoreType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TutorialRestoreType
    L3_2 = L3_2.AutoFinish
    if L2_2 == L3_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.should_auto_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.status
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.TutorialStatus
  L2_2 = L2_2.TutorialFinish
  if L1_2 == L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.TutorialStatus
  L1_2 = L1_2.TutorialFinish
  A0_2.status = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FinishedTutorials
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
  L1_2 = L1_2.CINAHGMIENO
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
end
L0_1.do_save_tutorial = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.status
  L3_2 = G
  L3_2 = L3_2.TutorialModule
  L3_2 = L3_2.TutorialStatus
  L3_2 = L3_2.TutorialFinish
  if L2_2 ~= L3_2 then
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
      L2_2 = A0_2.do_save_tutorial
      L2_2(L3_2)
    else
      L2_2 = A0_2.status
      L3_2 = G
      L3_2 = L3_2.TutorialModule
      L3_2 = L3_2.TutorialStatus
      L3_2 = L3_2.TutorialNone
      if L2_2 == L3_2 then
        L2_2 = A0_2._trigger_checker
        L3_2 = L2_2
        L2_2 = L2_2.do_check_unlock_triggers
        L4_2 = A1_2
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = G
          L2_2 = L2_2.TutorialModule
          L2_2 = L2_2.TutorialStatus
          L2_2 = L2_2.TutorialUnlock
          A0_2.status = L2_2
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.GlobalVars
          L2_2 = L2_2.s_NetworkManager
          L3_2 = L2_2
          L2_2 = L2_2.GOFECGGJIMH
          L4_2 = A0_2.id
          L2_2(L3_2, L4_2)
          L2_2 = G
          L2_2 = L2_2.TutorialModule
          L2_2 = L2_2.Instance
          L3_2 = L2_2
          L2_2 = L2_2.on_refresh_tutorial
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1.try_unlock = L1_1
return L0_1
