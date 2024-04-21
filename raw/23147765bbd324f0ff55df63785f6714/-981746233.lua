local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.DescTipPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DescTipPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._play_anim = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sign
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    A0_2._play_anim = A1_2
  end
  L2_2 = G
  L2_2 = L2_2.ToastModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.has_toast_in_queue
  L4_2 = "FullScreenToast"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIToastQueueEmpty
    L5_2 = A0_2._try_show_on_notify
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIToastMainPage
    L5_2 = A0_2._try_show_on_notify
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_view
    L2_2(L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._in_main_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.ToastModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.has_toast_in_queue
    L3_2 = "FullScreenToast"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = A0_2._try_show_on_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastMainPage
  L4_2 = A0_2._try_show_on_notify
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._try_show_on_notify = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L1_2 = L1_2.PageStackCount
  L1_2 = L1_2 == 1
  return L1_2
end
L0_1._in_main_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._play_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.rpg_animation_event_root
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_root
    L3_2 = L3_2.clip
    L3_2 = L3_2.name
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_active
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._show_view = L1_1
return L0_1
