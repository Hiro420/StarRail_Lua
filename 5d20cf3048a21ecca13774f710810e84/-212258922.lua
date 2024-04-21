local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.PopupQueue.PopupQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BaseToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.DefaultToastData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PopupQueueManager"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.none = 1
L1_1.wait = 2
L1_1.show = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._Queues = L1_2
  L1_2 = {}
  A0_2._QueueStatus = L1_2
  A0_2._Dialog = nil
  L1_2 = {}
  A0_2._current_panel_data = L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._Queues = nil
  A0_2._QueueStatus = nil
  A0_2._Dialog = nil
  L1_2 = {}
  A0_2._current_panel_data = L1_2
end
L0_1.dispose = L2_1
function L2_1(A0_2, A1_2)
end
L0_1.tick = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    A1_2 = "default"
  end
  if A2_2 == nil then
    A2_2 = 1
  end
  L5_2 = A0_2._Queues
  L5_2 = L5_2[A1_2]
  if L5_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2._init_queue
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = {}
  L5_2.UI = A3_2
  L5_2.binder = A4_2
  L7_2 = A0_2
  L6_2 = A0_2._create_toast_data
  L8_2, L9_2, L10_2 = ...
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2.data = L6_2
  L5_2.canSkip = true
  L7_2 = A0_2
  L6_2 = A0_2._insert_queue
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_queue_status
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L1_1.none
  if L6_2 == L7_2 then
    L7_2 = A0_2
    L6_2 = A0_2._try_to_move_next
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  else
  end
  return L5_2
end
L0_1.inqueue = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A0_2
  L5_2 = A0_2.inqueue
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L11_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 ~= nil then
    L5_2.canSkip = false
  end
end
L0_1.inqueue_no_skip = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2, L3_2, L4_2, L5_2 = ...
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L2_2 = nil
  L3_2 = L1_2[1]
  if L3_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.IsSubClassOf
    L4_2 = G
    L4_2 = L4_2.GetClass
    L5_2 = L1_2[1]
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.BaseToastData
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L2_2 = L1_2[1]
  end
  else
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.DefaultToastData
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.init
    L5_2 = ...
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1._create_toast_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._QueueStatus
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1.wait
    if L5_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._try_to_move_next
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.try_show_wait_main_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._Dialog = A1_2
  L2_2 = A0_2._QueueStatus
  L2_2 = L2_2.FullScreenToast
  L3_2 = L1_1.wait
  if L2_2 == L3_2 then
    L2_2 = A0_2._QueueStatus
    L3_2 = L1_1.show
    L2_2.FullScreenToast = L3_2
    L3_2 = A0_2
    L2_2 = A0_2._move_next
    L4_2 = "FullScreenToast"
    L2_2(L3_2, L4_2)
  end
  L2_2 = pairs
  L3_2 = A0_2._QueueStatus
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1.wait
    if L6_2 == L7_2 then
      L7_2 = A0_2._QueueStatus
      L8_2 = L1_1.show
      L7_2[L5_2] = L8_2
      L8_2 = A0_2
      L7_2 = A0_2._move_next
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.set_parent_panel = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._Dialog = nil
  L1_2 = {}
  A0_2._Queues = L1_2
  L1_2 = {}
  A0_2._QueueStatus = L1_2
  L1_2 = {}
  A0_2._current_panel_data = L1_2
end
L0_1.dispose_parent_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_panel_data
  if L2_2 ~= nil then
    L2_2 = A0_2._current_panel_data
    L2_2[A1_2] = nil
  end
  L2_2 = A0_2._QueueStatus
  if L2_2 ~= nil then
    L2_2 = A0_2._QueueStatus
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._QueueStatus
      L2_2 = L2_2[A1_2]
      L3_2 = L1_1.show
      if L2_2 == L3_2 then
        L2_2 = A0_2._QueueStatus
        L3_2 = L1_1.none
        L2_2[A1_2] = L3_2
      end
    end
  end
end
L0_1.reset_queue_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._Queues
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.CheckUIInQueue
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = pairs
  L3_2 = A0_2._current_panel_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = L6_2.UI
      if L7_2 == A1_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.check_ui_in_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._current_panel_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = L6_2.UI
      if L7_2 == A1_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.check_ui_in_current_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = "default"
  end
  L2_2 = A0_2._Queues
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._Queues
    L2_2 = L2_2[A1_2]
    L3_2 = L2_2
    L2_2 = L2_2.GetQueueNum
    L2_2 = L2_2(L3_2)
    if not (L2_2 <= 0) then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L3_2 = A0_2
  L2_2 = A0_2._init_queue
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.clear_queue = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._Queues
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._Queues
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.GetQueueNum
      L6_2 = L6_2(L7_2)
      if 0 < L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._init_queue
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1.clear_all_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = "default"
  end
  L2_2 = A0_2._Queues
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._remove_queue_can_skip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  return
end
L0_1.skip_queue = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._Queues
  if L3_2 == nil then
    return
  end
  if A1_2 == nil then
    A1_2 = "default"
  end
  L3_2 = A0_2._Queues
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._remove_queue_can_interrupt
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.interrupt_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._Queues
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.PopupQueue
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A1_2] = L3_2
end
L0_1._init_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._Queues
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.Dequeue
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_dequeue_item = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._Queues
  L4_2 = L4_2[A1_2]
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.Enqueue
    L7_2 = A3_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._insert_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._Queues
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.RemoveCanSkip
    L3_2(L4_2)
  end
end
L0_1._remove_queue_can_skip = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._Queues
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.RemoveCanInterrupt
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._remove_queue_can_interrupt = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._QueueStatus
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = L1_1.none
    return L3_2
  else
    return L2_2
  end
end
L0_1._get_queue_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = "default"
  end
  L3_2 = A0_2
  L2_2 = A0_2._need_wait_queue
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._Dialog
  if L2_2 == nil then
    L2_2 = A0_2._QueueStatus
    L3_2 = L1_1.wait
    L2_2[A1_2] = L3_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._move_next
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_to_move_next = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    A1_2 = "default"
  end
  L3_2 = A0_2
  L2_2 = A0_2._need_wait_queue
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._QueueStatus
  L3_2 = L1_1.show
  L2_2[A1_2] = L3_2
  L2_2 = A0_2._Queues
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2._QueueStatus
    L3_2 = L1_1.none
    L2_2[A1_2] = L3_2
    L3_2 = A0_2
    L2_2 = A0_2._on_queue_move_empty
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_dequeue_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._current_panel_data
  L3_2[A1_2] = L2_2
  if L2_2 == nil then
    L3_2 = A0_2._QueueStatus
    L4_2 = L1_1.none
    L3_2[A1_2] = L4_2
    L4_2 = A0_2
    L3_2 = A0_2._on_queue_move_empty
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L2_2.UI
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == "string" then
    L4_2 = require
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.IsSubClassOf
    L6_2 = L4_2
    L7_2 = G
    L7_2 = L7_2.BasePanel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = L3_2
      L6_2 = "Binder"
      L5_2 = L5_2 .. L6_2
      L6_2 = L2_2.binder
      if L6_2 ~= nil then
        L5_2 = L2_2.binder
      end
      L6_2 = A0_2._Dialog
      L7_2 = L6_2
      L6_2 = L6_2.create_panel
      L8_2 = L3_2
      L9_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.async_bind
      L9_2 = A0_2._Dialog
      L9_2 = L9_2._binder
      L9_2 = L9_2.root
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_exit_callback
      function L9_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._QueueStatus
        L1_3 = A1_2
        L2_3 = L1_1.none
        L0_3[L1_3] = L2_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._try_to_move_next
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
      end
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_async_callback
      L9_2 = nil
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L6_2
        L1_3 = L0_3
        L0_3 = L0_3.refresh
        L2_3 = L2_2.data
        L3_3 = L2_3
        L2_3 = L2_3.get_param
        L2_3, L3_3 = L2_3(L3_3)
        L0_3(L1_3, L2_3, L3_3)
      end
      L7_2(L8_2, L9_2, L10_2)
    else
      L5_2 = G
      L5_2 = L5_2.IsSubClassOf
      L6_2 = L4_2
      L7_2 = G
      L7_2 = L7_2.UIController
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = G
        L5_2 = L5_2.UIManager
        L5_2 = L5_2.load_and_async_show
        L6_2 = L3_2
        L7_2 = L2_2.data
        L8_2 = L7_2
        L7_2 = L7_2.get_param
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.LuaTable
          L7_2 = L6_2
          L6_2 = L6_2.set_exit_callback
          function L8_2()
            local L0_3, L1_3, L2_3
            L0_3 = A0_2._QueueStatus
            L1_3 = A1_2
            L2_3 = L1_1.none
            L0_3[L1_3] = L2_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3._try_to_move_next
            L2_3 = A1_2
            L0_3(L1_3, L2_3)
          end
          L6_2(L7_2, L8_2)
        else
          L6_2 = A0_2._QueueStatus
          L7_2 = L1_1.none
          L6_2[A1_2] = L7_2
          L7_2 = A0_2
          L6_2 = A0_2._try_to_move_next
          L8_2 = A1_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  else
    L5_2 = L3_2
    L4_2 = L3_2.is_async
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.is_loaded
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = L3_2
        L4_2 = L3_2.async_bind
        L6_2 = L3_2._binder
        L6_2 = L6_2.root_parent
        L4_2(L5_2, L6_2)
        L5_2 = L3_2
        L4_2 = L3_2.set_exit_callback
        function L6_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2._QueueStatus
          L1_3 = A1_2
          L2_3 = L1_1.none
          L0_3[L1_3] = L2_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._try_to_move_next
          L2_3 = A1_2
          L0_3(L1_3, L2_3)
        end
        L4_2(L5_2, L6_2)
    end
    else
      L4_2 = A0_2._QueueStatus
      L5_2 = L1_1.none
      L4_2[A1_2] = L5_2
      L5_2 = A0_2
      L4_2 = A0_2._try_to_move_next
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._move_next = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._need_wait_full_screen_toast
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._need_wait_maze_main_page
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
  end
  return L2_2
end
L0_1._need_wait_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "TutorialList" or A1_2 == "DefaultToast" or A1_2 == "BottomToast" or A1_2 == "RewardList" or A1_2 == "MissionLeftHint" or A1_2 == "RogueToast" then
    L3_2 = A0_2
    L2_2 = A0_2._get_queue_status
    L4_2 = "FullScreenToast"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_1.none
    if L2_2 ~= L3_2 then
      L3_2 = A0_2._QueueStatus
      L4_2 = L1_1.wait
      L3_2[A1_2] = L4_2
      L3_2 = true
      return L3_2
    end
    L3_2 = A0_2._Queues
    L3_2 = L3_2.FullScreenToast
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.GetQueueNum
      L4_2 = L4_2(L5_2)
      if 0 < L4_2 then
        L4_2 = A0_2._QueueStatus
        L5_2 = L1_1.wait
        L4_2[A1_2] = L5_2
        L4_2 = true
        return L4_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._need_wait_full_screen_toast = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "DefaultToast" or A1_2 == "RewardList" or A1_2 == "MissionLeftHint" or A1_2 == "RogueToast" then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L2_2 = L2_2.PageStackCount
    if 2 < L2_2 then
      L2_2 = A0_2._QueueStatus
      L3_2 = L1_1.wait
      L2_2[A1_2] = L3_2
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._need_wait_maze_main_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_queue_status
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1.none
  if L2_2 ~= L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = A0_2._Queues
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetQueueNum
    L4_2 = L4_2(L5_2)
    if 0 < L4_2 then
      L4_2 = true
      return L4_2
    end
  end
  L4_2 = false
  return L4_2
end
L0_1.has_toast_in_queue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == "FullScreenToast" or A1_2 == "RogueToast" or A1_2 == "BottomToast" then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIToastQueueEmpty
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 == "FullScreenToast" then
    L2_2 = pairs
    L3_2 = A0_2._QueueStatus
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L1_1.wait
      if L6_2 == L7_2 and L5_2 ~= "FullScreenToast" then
        L8_2 = A0_2
        L7_2 = A0_2._try_to_move_next
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._on_queue_move_empty = L2_1
function L2_1(A0_2, A1_2)
  A0_2._panel_maze_toast = A1_2
end
L0_1.set_maze_main_page_panel = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._panel_maze_toast = nil
end
L0_1.dispose_maze_main_page_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._panel_maze_toast
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1.is_panel_maze_toast_nil = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._panel_maze_toast
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._panel_maze_toast
  L4_2 = L3_2
  L3_2 = L3_2.get_toast_root_transform
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L4_2 = A1_2._binder
    if L4_2 ~= nil then
      L4_2 = A1_2._binder
      L4_2 = L4_2.root
      if L4_2 ~= nil then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = A1_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SetParent
  L6_2 = L3_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.add_notify_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyGroup
  L5_2 = L5_2.UI
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.UIToastDisposeMainPage
  L7_2 = A2_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_maze_main_page_toast = L2_1
return L0_1
