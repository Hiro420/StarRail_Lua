local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyDice3DPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolyRandomEventDice3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EventRoll"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_random_event_dice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyRandomEventDiceController
  L4_2 = "EventRoll/Controller"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._dice_controller = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyRandomEventVCController
  L4_2 = "EventRoll/EventRollVC"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._vc_controller = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._rotate_finish_callback = A1_2
  A0_2._rotate_finish_handler = A2_2
  L3_2 = A0_2._dice_controller
  L4_2 = L3_2
  L3_2 = L3_2.Init
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._rotate_finish_callback
    L2_3 = A0_2._rotate_finish_handler
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1.register_dice_rotate_finish_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._dice_controller
  L2_2 = L1_2
  L1_2 = L1_2.ClearEvent
  L1_2(L2_2)
end
L0_1.clear_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._dice_controller
  L3_2 = L2_2
  L2_2 = L2_2.StartRotate
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.rotate = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_random_event_dice
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_node_random_event_dice_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._vc_controller
  L2_2 = L1_2
  L1_2 = L1_2.CalculateOrthographicSize
  L1_2(L2_2)
end
L0_1.calculate_vc_orthographic_size = L1_1
return L0_1
