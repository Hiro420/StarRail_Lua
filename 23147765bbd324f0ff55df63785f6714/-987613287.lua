local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueClientExcelTable
L0_1 = L0_1.GetData
L1_1 = "Player_NoInput_Timeout"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.UintValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Player_Input_Time"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Player_Input_Count"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = 5
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "TravelBrochureOperationPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2._operation_count = 0
  A0_2._has_idle = false
  A0_2._has_busy = false
  L1_2 = {}
  A0_2._text_ids_busy = L1_2
  L1_2 = {}
  A0_2._text_ids_idle = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureOperated
  L4_2 = A0_2._on_operated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_idle_time
  L4_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._idle_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_busy_time
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._busy_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._hide_hint
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._hint_timer = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  A0_2._text_ids_busy = L3_2
  L3_2 = {}
  A0_2._text_ids_idle = L3_2
  if A1_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._get_const_text_ids
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._text_ids_idle = L3_2
  end
  if A2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._get_const_text_ids
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._text_ids_busy = L3_2
  end
  L3_2 = A0_2._text_ids_busy
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  A0_2._has_idle = L3_2
  L3_2 = A0_2._text_ids_busy
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  A0_2._has_busy = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.reset_timer
  L3_2(L4_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.ArrayValue
  if L2_2 == nil then
    L3_2 = {}
    return L3_2
  end
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L2_2[L7_2]
    L10_2 = L10_2.StringValue
    L8_2(L9_2, L10_2)
  end
  return L3_2
end
L4_1._get_const_text_ids = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._restart_idle_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._restart_busy_timer
  L1_2(L2_2)
end
L4_1.reset_timer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_idle
  if L1_2 then
    L1_2 = A0_2._idle_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._idle_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L4_1._restart_idle_timer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._operation_count = 0
  L1_2 = A0_2._has_busy
  if L1_2 then
    L1_2 = A0_2._busy_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._busy_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L4_1._restart_busy_timer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_timer
  L1_2(L2_2)
end
L4_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 or L1_2
  return L1_2
end
L4_1._is_paused = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_paused
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._restart_idle_timer
  L2_2(L3_2)
  L2_2 = A1_2 == true
  if L2_2 then
    L3_2 = A0_2._operation_count
    L3_2 = L3_2 + 1
    A0_2._operation_count = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._try_do_busy
    L3_2(L4_2)
  end
end
L4_1._on_operated = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._has_busy
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._operation_count
  L2_2 = L2_1
  L1_2 = L1_2 >= L2_2
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_hint
    L4_2 = A0_2._text_ids_busy
    L2_2(L3_2, L4_2)
    A0_2._operation_count = 0
  end
  return L1_2
end
L4_1._try_do_busy = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_paused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._has_idle
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._show_hint
  L3_2 = A0_2._text_ids_idle
  L1_2(L2_2, L3_2)
end
L4_1._on_idle_time = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_paused
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_do_busy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._restart_busy_timer
    L2_2(L3_2)
  end
end
L4_1._on_busy_time = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_random_text
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_talk
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_talk
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._hint_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._hint_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
  L3_2 = A0_2._idle_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._idle_timer
  L4_2 = L3_2
  L3_2 = L3_2.stop
  L3_2(L4_2)
  L3_2 = A0_2._busy_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._busy_timer
  L4_2 = L3_2
  L3_2 = L3_2.stop
  L3_2(L4_2)
end
L4_1._show_hint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIRandomUtils
  L2_2 = L2_2.RangeInt
  L3_2 = 1
  L4_2 = #A1_2
  L4_2 = L4_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2[L2_2]
  return L3_2
end
L4_1._get_random_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_talk
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hint_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._hint_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._restart_idle_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._restart_busy_timer
  L1_2(L2_2)
end
L4_1._hide_hint = L5_1
return L4_1
