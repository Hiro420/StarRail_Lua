local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Dialogue.DialogueSkipDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DialogueSkipDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DialogueSkipDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2.event_listener = nil
  A0_2.ok_or_cancel_dispatch = nil
  A0_2.content_text_ID = nil
  A0_2.hint_text_ID = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.PausePerformance
  L1_2(L2_2, L3_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.PausePerformance
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.content_text_ID = A1_2
  A0_2.hint_text_ID = A2_2
  A0_2.event_listener = A3_2
  A0_2.ok_or_cancel_dispatch = A4_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ok
  L4_2 = A0_2._on_btn_ok_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg_close
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2.content_text_ID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.content_text_ID
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2.hint_text_ID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.hint_text_ID
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.ok_or_cancel_dispatch
  if nil ~= L1_2 then
    L1_2 = A0_2.event_listener
    if nil ~= L1_2 then
      L1_2 = A0_2.ok_or_cancel_dispatch
      L2_2 = A0_2.event_listener
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.ok_or_cancel_dispatch
      L2_2 = false
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.ok_or_cancel_dispatch
  if nil ~= L1_2 then
    L1_2 = A0_2.event_listener
    if nil ~= L1_2 then
      L1_2 = A0_2.ok_or_cancel_dispatch
      L2_2 = A0_2.event_listener
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.ok_or_cancel_dispatch
      L2_2 = true
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_ok_click = L1_1
return L0_1
