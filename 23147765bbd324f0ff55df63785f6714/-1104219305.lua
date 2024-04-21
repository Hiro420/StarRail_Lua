local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.ChallengeCompleteDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeCompleteDialog"
L2_1 = G
L2_1 = L2_1.BaseDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 999
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeCompleteDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = L1_1
  A0_2._value = L1_2
  L1_2 = L1_1
  A0_2._current = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  if A1_2 == nil or A1_2 == 0 then
    return
  end
  A0_2._value = A1_2
  A0_2._current = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._current
  L2_2 = L2_2 - A1_2
  A0_2._current = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.countdown_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Raid_CountDown_Hint"
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = A0_2._current
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_leave_raid_condition
  L2_2(L3_2)
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current
  if L1_2 <= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RaidModule
    L2_2 = L1_2
    L1_2 = L1_2.LeaveRaid
    L1_2(L2_2)
  end
end
L0_1._check_leave_raid_condition = L2_1
return L0_1
