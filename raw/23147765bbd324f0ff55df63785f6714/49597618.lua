local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingJoyStickPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingJoyStickPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_joystick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.AddInputSource
      L4_2 = A0_2._binder
      L4_2 = L4_2.mono_joy_stick_provider
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_joystick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.RemoveInputSource
      L4_2 = A0_2._binder
      L4_2 = L4_2.mono_joy_stick_provider
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_dispose = L1_1
return L0_1
