local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.IRogueDLCEntranceStateProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDLCEntranceItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._is_selected = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._row = A1_2
  A0_2._state_provider = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_basic_info
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_status
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = A3_2
  L7_2 = nil
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_selected_state
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Disabled_Off"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Disabled"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_enabled = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select_Off"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_in_dialog = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._binder
  L4_2 = L4_2.loop_list_view_item
  L4_2 = L4_2.ItemIndex
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.SubTypeTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.SubTypeTitle
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state_provider
  L1_2 = A0_2._state_provider
  L2_2 = L1_2
  L1_2 = L1_2.is_in_progress
  L1_2 = L1_2 ~= nil and L1_2
  A0_2._is_in_progress = L1_2
  L1_2 = A0_2._state_provider
  L1_2 = A0_2._state_provider
  L2_2 = L1_2
  L1_2 = L1_2.is_locked
  L1_2 = L1_2 ~= nil and L1_2
  A0_2._is_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_progress_state
  L3_2 = A0_2._is_in_progress
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_state
  L3_2 = A0_2._is_locked
  L1_2(L2_2, L3_2)
end
L0_1._setup_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Off"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "On"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "On"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Off"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_selected_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Lock"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Normal"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_lock_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_state_in_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_state_in_progress_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Playing"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NotPlay"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_in_progress_state = L1_1
return L0_1
