local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.MessageActReplyPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = "Root/Contents/Content/PhoneNotificationsQuickReplyPanel/Contents/DialogFrame/Bottom/KeyMapHintRoot"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MessageActReplyPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MessageActReplyPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._group_id = nil
  A0_2._can_exit = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = L0_1.RingingMessageGroupID
  end
  A0_2._group_id = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = nil
  L4_2 = nil
  L5_2 = L1_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.enable_default_short_cut_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MessageClosePerformance
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_close_callback
  L3_2 = A0_2.exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_can_exit_callback
  L3_2 = A0_2._on_can_exit_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_interruptible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MessageSituationChanged
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MessageSituationType
  L3_2 = L3_2.Act
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._group_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._group_change_callback = A1_2
  A0_2._group_change_handler = A2_2
end
L2_1.register_group_change_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._can_exit = A1_2
end
L2_1._on_can_exit_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._can_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
return L2_1
