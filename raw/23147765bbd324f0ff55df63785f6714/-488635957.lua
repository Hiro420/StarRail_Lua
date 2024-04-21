local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneQuickReplyPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhoneQuickReplyPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._current_group_id = 0
  A0_2._interruptible = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.register_writing_finish_callback
  L3_2 = A0_2._setup_interruptible_view
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.register_move_callback
  L3_2 = A0_2._on_history_moved
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.register_special_selected_callback
  L3_2 = A0_2._on_special_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageGroupChecked
  L3_2 = A0_2._current_group_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageTryFinishGroup
  L3_2 = A0_2._current_group_id
  L1_2(L2_2, L3_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  A0_2._interruptible = A1_2
end
L1_1.set_interruptible = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_handler = A2_2
end
L1_1.set_close_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._can_exit_callback = A1_2
  A0_2._can_exit_handler = A2_2
end
L1_1.set_can_exit_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_group_id = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetGroupCurrentSection
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._section_data_when_enter = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._current_group_id
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.MessageContactsID
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_contact_info
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reply
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_interruptible_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._section_data_when_enter
  L1_2 = A0_2._section_data_when_enter
  L1_2 = L1_2 == nil or L1_2
  L2_2 = A0_2._interruptible
  L2_2 = L1_2 or L2_2
  if not L2_2 and L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_reply
    L3_2 = L2_2
    L2_2 = L2_2.is_writing
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
  end
  A0_2._can_exit = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._can_exit
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_short_cut_hint
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._can_exit_callback
  L4_2 = A0_2._can_exit_handler
  L5_2 = A0_2._can_exit
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_interruptible_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_interruptible_view
  L1_2(L2_2)
end
L1_1.refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._close_callback
  L3_2 = A0_2._close_handler
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageSkipWriting
  L1_2(L2_2)
end
L1_1._on_btn_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_history_moved = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_special_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_short_cuts
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1.refresh_short_cut_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_short_cut_hint
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reply
  L3_2 = L2_2
  L2_2 = L2_2.get_short_cuts
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._can_exit
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.index_of_item
    L4_2 = L2_2
    L5_2 = "ActionGroup_Return"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L2_2
      L5_2 = "ActionGroup_Return"
      L3_2(L4_2, L5_2)
    end
  end
  return L2_2
end
L1_1._get_short_cuts = L2_1
return L1_1
