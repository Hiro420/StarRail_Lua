local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueUnlockTrailblazeBuffToastBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueUnlockTrailblazeBuffToast"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueUnlockTrailblazeBuffToastBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._row = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 3
  end
  A0_2._time = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.BonusToast
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_time
  if not L2_2 then
    L2_2 = 0
  end
  A0_2._current_time = L2_2
  L2_2 = A0_2._current_time
  L2_2 = L2_2 + A1_2
  A0_2._current_time = L2_2
  L2_2 = A0_2._current_time
  L3_2 = A0_2._time
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L1_1
return L0_1
