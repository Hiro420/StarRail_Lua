local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLockPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._show_key_map = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lock
  L4_2 = A0_2._on_btn_lock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_discard
  L4_2 = A0_2._on_btn_discard
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_special_zoom
  L4_2 = A0_2._on_btn_special_zoom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._refresh_state
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_state
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_discard
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_special
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_btn_lock
  L3_2 = not A1_2
  L2_2.ActionEnabled = L3_2
end
L0_1.show_discard_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._show_key_map = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_btn_lock
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_btn_discard
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_discard
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.forbid_btn_navi_and_key_map = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  if L1_2 ~= nil then
    L1_2 = A0_2._item
    L1_2 = L1_2.IsDiscard
    if not L1_2 then
      goto lbl_18
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Relic_Discarded_Toast"
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_18::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.MDAGHBKKDMJ
  L3_2 = A0_2._item
  L3_2 = L3_2.UID
  L4_2 = A0_2._item
  L4_2 = L4_2.IsProtected
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KPDHFHODFDG
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_lock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  if L1_2 ~= nil then
    L1_2 = A0_2._item
    L1_2 = L1_2.IsProtected
    if not L1_2 then
      goto lbl_18
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Relic_Locked_Toast"
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_18::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.HGBMCKLFFCM
  L3_2 = A0_2._item
  L3_2 = L3_2.UID
  L4_2 = A0_2._item
  L4_2 = L4_2.IsDiscard
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.JIABKJKEMFI
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_discard = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._item
  L1_2 = L1_2.IsProtected
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.discard_mark
  if L2_2 ~= nil then
    L2_2 = A0_2._item
    L2_2 = L2_2.IsDiscard
    L3_2 = A0_2._binder
    L3_2 = L3_2.discard_mark
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.undiscard_mark
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_lock
    L3_2.IsInFakeDisableState = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_discard
    L3_2.IsInFakeDisableState = L1_2
  end
end
L0_1._refresh_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_special
    if L1_2 ~= nil then
      L1_2 = A0_2._show_key_map
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_special
  L2_2.IsShowTip = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_special
  L1_2.IsShowTip = false
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_special
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_special
  L1_2.IsShowTip = true
  L2_2 = A0_2
  L1_2 = A0_2._setup_owner_zoom_1_canvas_alpha
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_lock
        L1_2 = L1_2.gameObject
        L3_2 = A0_2
        L2_2 = A0_2.set_special_zoom_navigation_target
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2._setup_owner_zoom_1_canvas_alpha
        L4_2 = 0.5
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_btn_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  if L2_2 ~= nil then
    L2_2 = A0_2._owner
    L2_2 = L2_2.setup_zoom_1_canvas_alpha
    if L2_2 ~= nil then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.setup_zoom_1_canvas_alpha
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_owner_zoom_1_canvas_alpha = L1_1
return L0_1
