local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneMessageChatPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistoryItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistorySystemItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistorySystemItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageMissionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageMissionItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "PhoneMessage_Item_Interval"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.FloatValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "PhoneMessage_Item_Interval_AfterPlayer"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
L3_1 = 80
L4_1 = 0.3
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "PhoneMessage_Item_Scroll_Time_Max"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.FloatValue
L6_1 = L3_1 / L4_1
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "PhoneMessageChatPanel"
L9_1 = G
L9_1 = L9_1.BasePanel
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2
  A0_2._group_id = nil
  L1_2 = {}
  A0_2._history_item_datas = L1_2
  L1_2 = {}
  A0_2._waiting_item_ids = L1_2
  A0_2._latest_item_id = nil
  L1_2 = {}
  A0_2._selectable_indexs = L1_2
  L1_2 = {}
  A0_2._selectable_type_indexs = L1_2
  A0_2._show_count = 0
  A0_2._written_count = 0
  A0_2._is_writing = false
  A0_2._move_block_count = 0
  A0_2._waiting_write_refresh = false
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshSection
  L4_2 = A0_2._on_message_section_refreshed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageItemFinished
  L4_2 = A0_2._on_history_item_finished
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.register_fade_begin_callback
  L3_2 = A0_2._on_reply_fade_begin
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.register_fade_end_callback
  L3_2 = A0_2._on_reply_fade_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_history_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_history_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_history_item
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2._on_snap_nearest_changed
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._try_start_message_writing
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_special_zoom
  L4_2 = A0_2._on_btn_special_zoom
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.MissionDataPrepared
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageHistoryReset
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._group_id
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L2_3 = A0_2._group_id
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._move_block_count = 0
end
L7_1._on_dispose = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._writing_finish_callback = A1_2
  A0_2._writing_finish_handler = A2_2
end
L7_1.register_writing_finish_callback = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._special_selected_callback = A1_2
  A0_2._special_selected_handler = A2_2
end
L7_1.register_special_selected_callback = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_message_writing
  L2_2(L3_2)
  L2_2 = A0_2._group_id
  L2_2 = L2_2 ~= A1_2
  A0_2._group_id = A1_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMessageGroup
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._group_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_history_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_waiting_message_view
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._history_item_datas
  L3_2 = #L3_2
  A0_2._show_count = L3_2
  L3_2 = A0_2._history_item_datas
  L3_2 = #L3_2
  A0_2._written_count = L3_2
  L3_2 = A0_2._should_show_latest
  if L3_2 then
    L3_2 = A0_2._show_count
    if L3_2 then
      goto lbl_32
    end
  end
  L3_2 = 1
  ::lbl_32::
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view_history_item
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._show_count
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view_history_item
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.CoroutineUtils
  L4_2 = L4_2.InvokeNextFrame
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        L0_3 = A0_2._binder
        L0_3 = L0_3.list_view_history_item
        if L0_3 ~= nil then
          goto lbl_12
        end
      end
    end
    do return end
    ::lbl_12::
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view_history_item
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToByItemIndexAndOffsetPercent
    L2_3 = L3_2
    L3_3 = 1.0
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.PhoneMessageGroupChecked
  L6_2 = A0_2._group_id
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.PhoneMessageTryFinishGroup
  L6_2 = A0_2._group_id
  L4_2(L5_2, L6_2)
end
L7_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._group_id
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_history_message_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageGroupChecked
  L3_2 = A0_2._group_id
  L1_2(L2_2, L3_2)
end
L7_1.refresh_view = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2._add_move_block
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L3_2.ForceReverseAlign = A1_2
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.force_set_default_navigation_target
    L3_2(L4_2)
  elseif A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.ScrollRect
    L4_2 = L4_2.MovementType
    L4_2 = L4_2.Unrestricted
    L3_2.movementType = L4_2
  end
end
L7_1._on_reply_fade_begin = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A0_2._waiting_write_refresh = true
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2.ForceReverseAlign = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.StopMovement
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._minus_move_block
  L2_2(L3_2)
end
L7_1._on_reply_fade_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_manual_move
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._add_move_block = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_manual_move
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L7_1._minus_move_block = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_move
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.graphic_cast
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_bar
  L2_2.interactable = A1_2
end
L7_1._enable_manual_move = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_history_data
  L1_2(L2_2)
  L1_2 = A0_2._is_writing
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_start_message_writing
    L1_2(L2_2)
  end
end
L7_1._refresh_history_message_view = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2._binder
  if L4_2 == nil then
    return
  end
  L4_2 = A0_2._is_writing
  if L4_2 then
    L4_2 = A0_2._group_id
    if L4_2 == A1_2 then
      L4_2 = A0_2._show_count
      L5_2 = A0_2._history_item_datas
      L5_2 = #L5_2
      if not (L4_2 > L5_2) then
        goto lbl_26
      end
    end
  end
  L4_2 = A0_2._count_down_timer
  if L4_2 ~= nil then
    L4_2 = A0_2._count_down_timer
    L5_2 = L4_2
    L4_2 = L4_2.reset
    L4_2(L5_2)
    L4_2 = A0_2._count_down_timer
    L5_2 = L4_2
    L4_2 = L4_2.stop
    L4_2(L5_2)
  end
  do return end
  ::lbl_26::
  A0_2._written_count = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._get_write_interval
  L6_2 = A2_2 + 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A2_2 - 1
  L6_2 = A0_2._binder
  L6_2 = L6_2.list_view_history_item
  L7_2 = L6_2
  L6_2 = L6_2.OnItemSizeChanged
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L4_2 == 0 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.CoroutineUtils
    L6_2 = L6_2.InvokeAfterFrames
    L7_2 = 3
    function L8_2()
      local L0_3, L1_3
      L0_3 = A0_2
      if L0_3 ~= nil then
        L0_3 = A0_2._binder
        if L0_3 ~= nil then
          L0_3 = A0_2._binder
          L0_3 = L0_3.list_view_history_item
          if L0_3 ~= nil then
            goto lbl_12
          end
        end
      end
      do return end
      ::lbl_12::
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_start_message_writing
      L0_3(L1_3)
    end
    L6_2(L7_2, L8_2)
  else
    L6_2 = 0
    if A3_2 ~= true then
      L7_2 = A0_2._binder
      L7_2 = L7_2.list_view_history_item
      L8_2 = L7_2
      L7_2 = L7_2.GetShownItemByItemIndex
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2.CachedRectTransform
      L8_2 = L8_2.rect
      L8_2 = L8_2.height
      L9_2 = math
      L9_2 = L9_2.min
      L10_2 = L6_1
      L10_2 = L8_2 / L10_2
      L11_2 = L5_1
      L9_2 = L9_2(L10_2, L11_2)
      L6_2 = L9_2
      L9_2 = A0_2._binder
      L9_2 = L9_2.list_view_history_item
      L10_2 = L9_2
      L9_2 = L9_2.MovePanelToItemIndex
      L11_2 = L5_2
      L12_2 = 0
      L13_2 = L6_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L7_2 = A0_2._count_down_timer
    L8_2 = L7_2
    L7_2 = L7_2.set_interval
    L9_2 = L6_2 + L4_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._count_down_timer
    L8_2 = L7_2
    L7_2 = L7_2.reset
    L7_2(L8_2)
    L7_2 = A0_2._count_down_timer
    L8_2 = L7_2
    L7_2 = L7_2.start
    L7_2(L8_2)
  end
end
L7_1._on_message_written = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._history_item_datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = L1_1
    return L3_2
  end
  L3_2 = L2_2.is_fake
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_mission_item
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = 0
      return L3_2
    end
  end
  L3_2 = A0_2._history_item_datas
  L4_2 = A1_2 - 1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.Row
  L4_2 = L4_2 ~= nil
  if L4_2 then
    L5_2 = L2_1
    if L5_2 then
      goto lbl_49
    end
  end
  L5_2 = L1_1
  ::lbl_49::
  return L5_2
end
L7_1._get_write_interval = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._show_count
  L2_2 = A0_2._history_item_datas
  L2_2 = #L2_2
  L1_2 = L1_2 < L2_2
  if not L1_2 then
    L2_2 = A0_2._is_writing
    L4_2 = A0_2
    L3_2 = A0_2._stop_message_writing
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_waiting_message_view
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._start_message_writing
    L2_2(L3_2)
  end
end
L7_1._try_start_message_writing = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_writing
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._add_move_block
    L1_2(L2_2)
    L1_2 = A0_2._waiting_write_refresh
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.list_view_history_item
      L2_2 = L1_2
      L1_2 = L1_2.MovePanelToItemIndex
      L3_2 = A0_2._show_count
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
    end
  end
  A0_2._is_writing = true
  L1_2 = A0_2._show_count
  L1_2 = L1_2 + 1
  A0_2._show_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_history_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._show_count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 3
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        L0_3 = A0_2._binder
        L0_3 = L0_3.list_view_history_item
        if L0_3 ~= nil then
          goto lbl_12
        end
      end
    end
    do return end
    ::lbl_12::
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view_history_item
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToItemIndex
    L2_3 = A0_2._show_count
    L2_3 = L2_3 - 1
    L3_3 = 0
    L4_3 = L4_1
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L7_1._start_message_writing = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_writing
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._minus_move_block
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._enable_manual_move
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rect
    L1_2.ForceReverseAlign = false
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.ScrollRect
  L2_2 = L2_2.MovementType
  L2_2 = L2_2.Elastic
  L1_2.movementType = L2_2
  L1_2 = A0_2._waiting_write_refresh
  if L1_2 then
    A0_2._waiting_write_refresh = false
  end
  L1_2 = A0_2._history_item_datas
  L1_2 = #L1_2
  A0_2._written_count = L1_2
  L1_2 = A0_2._history_item_datas
  L1_2 = #L1_2
  A0_2._show_count = L1_2
  A0_2._is_writing = false
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageWritingEnd
  L3_2 = A0_2._group_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._writing_finish_callback
  L3_2 = A0_2._writing_finish_handler
  L1_2(L2_2, L3_2)
end
L7_1._stop_message_writing = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  A0_2._selectable_indexs = L1_2
  L1_2 = {}
  A0_2._selectable_type_indexs = L1_2
  L1_2 = {}
  A0_2._history_item_datas = L1_2
  L1_2 = A0_2._group_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._group_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAllSections
  L1_2 = L1_2(L2_2)
  A0_2._should_show_latest = false
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = 0
    L8_2 = L6_2.HistoryItems
    L8_2 = L8_2.Count
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2.HistoryItems
      L11_2 = L11_2[L10_2]
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._history_item_datas
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      L13_2 = A0_2
      L12_2 = A0_2._try_add_selectable_item
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      L12_2 = L11_2.Row
      L12_2 = L12_2.Sender
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.GameCore
      L13_2 = L13_2.SenderType
      L13_2 = L13_2.Player
      if L12_2 == L13_2 then
        A0_2._should_show_latest = true
      end
    end
    L8_2 = A0_2
    L7_2 = A0_2._get_section_end_data
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._history_item_datas
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L7_1._refresh_history_data = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._history_item_datas
  L2_2 = #L2_2
  L3_2 = A1_2.Row
  L3_2 = L3_2.ItemType
  L5_2 = A0_2
  L4_2 = A0_2._is_item_selectable
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._selectable_type_indexs
    L4_2 = L4_2[L3_2]
    if L4_2 == nil then
      L4_2 = A0_2._selectable_type_indexs
      L5_2 = {}
      L4_2[L3_2] = L5_2
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._selectable_type_indexs
    L5_2 = L5_2[L3_2]
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._selectable_indexs
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L7_1._try_add_selectable_item = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.ItemType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MessageItemType
  L3_2 = L3_2.Image
  L3_2 = L2_2 == L3_2
  return L3_2
end
L7_1._is_item_selectable = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.IsEnd
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A1_2.IsFrozen
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MessageItemData
    L2_2 = L2_2.MessageLost
    return L2_2
  else
    L2_2 = {}
    L2_2.is_fake = true
    L3_2 = A1_2.Row
    L3_2 = L3_2.MainMissionLink
    L2_2.mission_id = L3_2
    L3_2 = L2_2.mission_id
    if L3_2 ~= 0 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.MissionModule
      L4_2 = L3_2
      L3_2 = L3_2.MainMissionDataPromised
      L5_2 = L2_2.mission_id
      L3_2(L4_2, L5_2)
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._history_item_datas
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L7_1._get_section_end_data = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._history_item_datas
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.is_fake
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.PhoneMessageTryFinishGroup
    L6_2 = A0_2._group_id
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._on_history_divider_changed
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._on_history_item_changed
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  end
end
L7_1._on_history_changed = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A2_2 + 1
  L4_2 = A0_2._history_item_datas
  L4_2 = L4_2[L3_2]
  L5_2 = A0_2._is_writing
  if L5_2 then
    L5_2 = A0_2._written_count
    L5_2 = L3_2 > L5_2
  end
  L6_2 = true
  L7_2 = nil
  L8_2 = nil
  L9_2 = L4_2.Row
  L9_2 = L9_2.Sender
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.SenderType
  L10_2 = L10_2.System
  if L9_2 == L10_2 then
    L10_2 = A1_2
    L9_2 = A1_2.NewListViewItem
    L11_2 = 2
    L9_2 = L9_2(L10_2, L11_2)
    L7_2 = L9_2
    L8_2 = L7_2.UserObjectData
    if L8_2 == nil then
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.MessageHistorySystemItemPanel
      L12_2 = G
      L12_2 = L12_2.MessageHistorySystemItemPanelBinder
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L9_2
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2.transform
      L9_2(L10_2, L11_2)
      L7_2.UserObjectData = L8_2
    end
    L9_2 = A1_2.ViewPortWidth
    if 0 < L9_2 then
      L10_2 = L7_2
      L9_2 = L7_2.SetWidth
      L11_2 = A1_2.ViewPortWidth
      L9_2(L10_2, L11_2)
    end
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L4_2
    L12_2 = L5_2
    L9_2(L10_2, L11_2, L12_2)
    L6_2 = true
  else
    L9_2 = L4_2.Row
    L9_2 = L9_2.Sender
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.SenderType
    L10_2 = L10_2.NPC
    if L9_2 == L10_2 then
      L10_2 = A1_2
      L9_2 = A1_2.NewListViewItem
      L11_2 = 0
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
    else
      L10_2 = A1_2
      L9_2 = A1_2.NewListViewItem
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
    end
    L8_2 = L7_2.UserObjectData
    if L8_2 == nil then
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.MessageHistoryItemPanel
      L12_2 = G
      L12_2 = L12_2.MessageHistoryItemPanelBinder
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L9_2
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2.transform
      L9_2(L10_2, L11_2)
      L7_2.UserObjectData = L8_2
      L10_2 = L8_2
      L9_2 = L8_2.register_written_callback
      L11_2 = A0_2._on_message_written
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_moving_getter
      L11_2 = A0_2.is_writing
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_visible_function
      L11_2 = A0_2._is_list_item_visible
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = L4_2.Row
    L9_2 = L9_2.Sender
    L10_2 = A0_2._group_data
    L10_2 = L10_2.Row
    L10_2 = L10_2.IsChatGroup
    L6_2 = L10_2 or L6_2
    if not L10_2 then
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.SenderType
      L10_2 = L10_2.PlayerAuto
      L6_2 = L9_2 == L10_2
    end
    L10_2 = A1_2.ViewPortWidth
    if 0 < L10_2 then
      L11_2 = L7_2
      L10_2 = L7_2.SetWidth
      L12_2 = A1_2.ViewPortWidth
      L10_2(L11_2, L12_2)
    end
    L11_2 = L8_2
    L10_2 = L8_2.setup_view
    L12_2 = L4_2
    L13_2 = L3_2
    L14_2 = L5_2 or L14_2
    if L5_2 then
      L14_2 = not L6_2
    end
    L15_2 = A0_2._group_id
    L16_2 = L5_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  if L5_2 and L6_2 then
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.invoke_callback
    L10_2 = A0_2._on_message_written
    L11_2 = A0_2
    L12_2 = A0_2._group_id
    L13_2 = L3_2
    L14_2 = L6_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  return L7_2
end
L7_1._on_history_item_changed = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2 + 1
  L4_2 = A0_2._history_item_datas
  L4_2 = L4_2[L3_2]
  L5_2 = nil
  L6_2 = A0_2._is_writing
  if L6_2 then
    L6_2 = A0_2._written_count
    L6_2 = L3_2 > L6_2
  end
  L8_2 = A0_2
  L7_2 = A0_2._is_mission_item
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = A1_2
    L7_2 = A1_2.NewListViewItem
    L9_2 = 3
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L7_2
    L7_2 = L5_2.UserObjectData
    if L7_2 == nil then
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.MessageMissionItemPanel
      L11_2 = G
      L11_2 = L11_2.MessageMissionItemPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L5_2.transform
      L8_2(L9_2, L10_2)
      L5_2.UserObjectData = L7_2
      L9_2 = L7_2
      L8_2 = L7_2.set_visible_function
      L10_2 = A0_2._is_list_item_visible
      L11_2 = A0_2
      L8_2(L9_2, L10_2, L11_2)
    end
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L4_2.mission_id
    L11_2 = L3_2
    L12_2 = L6_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L8_2 = A1_2
    L7_2 = A1_2.NewListViewItem
    L9_2 = 2
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L7_2
    L7_2 = L5_2.UserObjectData
    if L7_2 == nil then
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.MessageHistorySystemItemPanel
      L11_2 = G
      L11_2 = L11_2.MessageHistorySystemItemPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L5_2.transform
      L8_2(L9_2, L10_2)
      L5_2.UserObjectData = L7_2
    end
    L9_2 = L7_2
    L8_2 = L7_2.setup_divider_view
    L8_2(L9_2)
  end
  if L6_2 then
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.invoke_callback
    L8_2 = A0_2._on_message_written
    L9_2 = A0_2
    L10_2 = A0_2._group_id
    L11_2 = L3_2
    L12_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  return L5_2
end
L7_1._on_history_divider_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.is_fake
  if L2_2 then
    L2_2 = A1_2.mission_id
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_9::
  L2_2 = A1_2.mission_id
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MessageUtils
  L3_2 = L3_2.IsMessageMissionValid
  L4_2 = L2_2
  return L3_2(L4_2)
end
L7_1._is_mission_item = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._move_callback = A1_2
  A0_2._move_handler = A2_2
end
L7_1.register_move_callback = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A2_2.ItemIndex
  L3_2 = L3_2 + 2
  L4_2 = A0_2._show_count
  L3_2 = L3_2 < L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_has_covered
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._move_callback
  L6_2 = A0_2._move_handler
  L4_2(L5_2, L6_2)
end
L7_1._on_snap_nearest_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reply
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._group_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1._setup_waiting_message_view = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_writing
  return L1_2
end
L7_1.is_writing = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_zoom_target
  L1_2(L2_2)
end
L7_1._on_message_section_refreshed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_zoom_target
  L1_2(L2_2)
end
L7_1._on_history_item_finished = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_writing
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._owner
      L2_2 = L1_2
      L1_2 = L1_2.to_prev_zoom
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._select_special_history_item
      L3_2 = A0_2._selected_index_order
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L7_1._refresh_special_zoom_target = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_empty_navi
  L1_2 = L1_2.gameObject
  return L1_2
end
L7_1.get_empty_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A1_2 - 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_history_item
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_18
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_18::
  L4_2 = L3_2.UserObjectData
  L5_2 = L4_2
  L4_2 = L4_2.get_first_selected_object
  return L4_2(L5_2)
end
L7_1.get_history_item_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._special_selected_callback
  L3_2 = A0_2._special_selected_handler
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.clear_cur_selected_object
    L1_2(L2_2)
  end
end
L7_1._on_leave_special_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.DPadUp
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_23
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_select_last_item
  L2_2(L3_2)
  goto lbl_39
  ::lbl_23::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickDown
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.DPadDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_39
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_select_next_item
  L2_2(L3_2)
  ::lbl_39::
end
L7_1._on_in_control_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_history_item
  L2_2 = L1_2
  L1_2 = L1_2.IsContainerTransCanMove
  return L1_2(L2_2)
end
L7_1.can_move = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_writing
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2._try_enter_special_zoom
  L1_2(L2_2)
end
L7_1._on_btn_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._get_shown_first_selectable_order
      L1_2 = L1_2(L2_2)
      L3_2 = A0_2
      L2_2 = A0_2._select_special_history_item
      L4_2 = L1_2
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L7_1._try_enter_special_zoom = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._selectable_indexs
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    return
  end
  A0_2._selected_index_order = A1_2
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view_history_item
    L5_2 = L4_2
    L4_2 = L4_2.MovePanelToItemIndex
    L6_2 = L3_2 - 1
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.get_history_item_object
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2.is_in_special_zoom
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.save_navigation_target
    L7_2 = G
    L7_2 = L7_2.CS
    L7_2 = L7_2.EventSystem
    L7_2 = L7_2.current
    L7_2 = L7_2.currentSelectedGameObject
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.set_special_zoom_navigation_target
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.invoke_callback
  L6_2 = A0_2._special_selected_callback
  L7_2 = A0_2._special_selected_handler
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
end
L7_1._select_special_history_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._selected_index_order
  if L1_2 <= 1 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._select_special_history_item
  L3_2 = A0_2._selected_index_order
  L3_2 = L3_2 - 1
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._try_select_last_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._selected_index_order
  L2_2 = A0_2._selectable_indexs
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._select_special_history_item
  L3_2 = A0_2._selected_index_order
  L3_2 = L3_2 + 1
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._try_select_next_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._selected_index_order
  L2_2 = A0_2._selectable_indexs
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    return
  end
  L1_2 = A0_2._selectable_indexs
  L2_2 = A0_2._selected_index_order
  L1_2 = L1_2[L2_2]
  L2_2 = pairs
  L3_2 = A0_2._selectable_type_indexs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.index_of_item
    L8_2 = L6_2
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      return L5_2
    end
  end
end
L7_1._get_current_selected_item_type = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._selectable_indexs
  if L1_2 ~= nil then
    L1_2 = A0_2._selectable_indexs
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_history_item
  L1_2 = L1_2.ItemList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.ItemIndex
    L7_2 = L7_2 + 1
    L9_2 = A0_2
    L8_2 = A0_2._is_list_item_visible
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = G
      L8_2 = L8_2.Utils
      L8_2 = L8_2.index_of_item
      L9_2 = A0_2._selectable_indexs
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 ~= nil then
        L9_2 = L6_2.UserObjectData
        if L9_2 ~= nil then
          return L8_2
        end
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L7_1._get_shown_first_selectable_order = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._get_type_item_indexs
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == 0 then
    L3_2 = false
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._is_list_item_visible
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L7_1._has_history_item_shown = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selectable_type_indexs
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = {}
    return L2_2
  end
  L2_2 = A0_2._selectable_type_indexs
  L2_2 = L2_2[A1_2]
  return L2_2
end
L7_1._get_type_item_indexs = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 - 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_history_item
  L4_2 = L3_2
  L3_2 = L3_2.IsItemWithinViewport
  L5_2 = L2_2
  L6_2 = 0.3
  return L3_2(L4_2, L5_2, L6_2)
end
L7_1._is_list_item_visible = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  if not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.can_move
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_13
    end
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = "ActionGroup_Scroll"
  L3_2(L4_2, L5_2)
  ::lbl_13::
  L4_2 = A0_2
  L3_2 = A0_2.is_in_special_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "ActionGroup_Select"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "ActionGroup_Return"
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.is_writing
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._has_history_item_shown
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.MessageItemType
      L5_2 = L5_2.Image
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = A0_2
      L4_2 = A0_2._has_history_item_shown
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MessageItemType
      L6_2 = L6_2.Video
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2._has_history_item_shown
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MessageItemType
      L7_2 = L7_2.Link
      L5_2 = L5_2(L6_2, L7_2)
      if L3_2 or L4_2 or L5_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L2_2
        L8_2 = "ActionGroup_ViewMode"
        L6_2(L7_2, L8_2)
      end
    end
  end
  return L2_2
end
L7_1.get_short_cuts = L8_1
return L7_1
