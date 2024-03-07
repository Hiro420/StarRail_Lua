local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.TreasureChallengeTargetFailHintBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeTargetFailHint"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RaidTargetConfigExcelTable
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureChallengeTargetFailHintBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._current_time = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._target_id = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = L1_1
  end
  A0_2._duration = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custome_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.GetData
  L2_2 = A0_2._target_id
  L1_2 = L1_2(L2_2)
  A0_2._row = L1_2
  A0_2._current_time = 0
end
L0_1._setup_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.TargetName
  L4_2 = A0_2._row
  L4_2 = L4_2.TargetParam1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "ChallengeTargetFaildHint"
  L1_2(L2_2, L3_2)
end
L0_1._custome_setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_time
  L2_2 = L2_2 + A1_2
  A0_2._current_time = L2_2
  L2_2 = A0_2._current_time
  L3_2 = A0_2._duration
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L3_1
return L0_1
