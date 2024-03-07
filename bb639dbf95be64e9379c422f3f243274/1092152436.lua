local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonPickDialogBinder"
L0_1(L1_1)
L0_1 = "CommonTrailEff"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TreasureDungeonPickDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonPickDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._start_position = A1_2
  A0_2._target_position = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._close
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._anim_timer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._arrive_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._arrive_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._arrive_callback
    L2_3 = A0_2._arrive_handler
    L0_3(L1_3, L2_3)
  end
  L5_2 = 0.35
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._arrive_timer = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._arrive_callback = A1_2
  A0_2._arrive_handler = A2_2
end
L1_1.register_arrive_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_line
  L2_2 = A0_2._start_position
  L1_2.OverrideStartPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_line
  L2_2 = A0_2._target_position
  L1_2.OverrideTargetPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_line
  L2_2 = A0_2._target_position
  L1_2.OverrideControlPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._arrive_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._arrive_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._close = L2_1
return L1_1
