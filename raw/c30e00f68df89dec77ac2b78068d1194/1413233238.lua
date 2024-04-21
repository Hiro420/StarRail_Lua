local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordPowerAttackToastDialogBinder"
L0_1(L1_1)
L0_1 = 2
L1_1 = 1
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PunkLordPowerAttackToastDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PunkLordPowerAttackToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._count_down_timer = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  A0_2._disappear_time = L2_2
  if A1_2 ~= nil then
    A0_2._disappear_time = A1_2
  end
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "HintInfoDialogFadeIn"
  L1_2(L2_2, L3_2)
  A0_2._is_waiting_disappear = true
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_count_down_callback
  L4_2 = A0_2._disappear_time
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_waiting_disappear
  if L1_2 then
    A0_2._is_waiting_disappear = false
    A0_2._is_waiting_fade_out = true
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "HintInfoDialogFadeOut"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.set_total_time
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_waiting_fade_out
  if L1_2 then
    A0_2._is_waiting_fade_out = false
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L2_1._on_count_down_callback = L3_1
return L2_1
