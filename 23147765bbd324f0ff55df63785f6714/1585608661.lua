local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyCheckIdlePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Monopoly_Activity_BubbleTalk_Case_Idle_TriggerSecond"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = "Monopoly_Activity_BubbleTalk_Case_Idle"
function L3_1(A0_2, A1_2, A2_2)
  A0_2._idle_callback = A1_2
  A0_2._idle_handler = A2_2
end
L0_1.register_idle_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2.reset_timer
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._last_operation_time
  L2_2 = L2_2 - L3_2
  L3_2 = L1_1
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._do_idle
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.reset_timer
    L2_2(L3_2)
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.ShowPlayerBubble
  L2_2 = L2_1
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._idle_callback
  L3_2 = A0_2._idle_handler
  L1_2(L2_2, L3_2)
end
L0_1._do_idle = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_timer
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1.start_tick = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._last_operation_time = L1_2
end
L0_1.reset_timer = L3_1
return L0_1
