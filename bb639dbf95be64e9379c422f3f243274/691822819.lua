local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransport"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyEventPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyEventPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2
  A0_2._side_event = nil
  A0_2.is_dialog_open = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._side_event = nil
  A0_2.is_dialog_open = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._side_event = A1_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "AlleyEventReward"
  L5_2 = A0_2._side_event
  L5_2 = L5_2.EventInfo
  L5_2 = L5_2.EventID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_event_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_event_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_shop_info
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_root
  L2_2 = L2_2.anchoredPosition
  L2_2.y = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_root
  L3_2.anchoredPosition = L2_2
end
L0_1.setup_panel_transform_offset = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reddot
  return L1_2
end
L0_1.get_reddot_transform = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._side_event
  L1_2 = L1_2.EventState
  L2_2 = CS
  L2_2 = L2_2.BPIDIGIBMGP
  L2_2 = L2_2.LLCIGEIBCNP
  L2_2 = L1_2 == L2_2
  A0_2._is_locked = L2_2
  L2_2 = CS
  L2_2 = L2_2.BPIDIGIBMGP
  L2_2 = L2_2.PFFKJJIPIMN
  L2_2 = L1_2 == L2_2
  A0_2._is_finished = L2_2
  L2_2 = CS
  L2_2 = L2_2.BPIDIGIBMGP
  L2_2 = L2_2.FFEKKJPIKHO
  L2_2 = L1_2 == L2_2
  A0_2._is_rewarded = L2_2
end
L0_1._setup_event_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_shop_bg
  L4_2 = A0_2._side_event
  L4_2 = L4_2.EventInfo
  L4_2 = L4_2.EventPic
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_shop_icon
  L4_2 = A0_2._side_event
  L4_2 = L4_2.EventInfo
  L4_2 = L4_2.EventIcon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_shop_lock_bg
  L4_2 = A0_2._side_event
  L4_2 = L4_2.EventInfo
  L4_2 = L4_2.EventPic
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shop_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._side_event
  L3_2 = L3_2.EventInfo
  L3_2 = L3_2.EventShopTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finished
  L1_2(L2_2, L3_2)
end
L0_1._setup_event_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._side_event
  L1_2 = L1_2.EventInfo
  L1_2 = L1_2.EventID
  A0_2._shop_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyGridExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2)
end
L0_1._setup_shop_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_locked
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_Airline_EntranceUnlockTips"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_finished
    if L1_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.TryTakeEventReward
      L3_2 = A0_2._side_event
      L3_2 = L3_2.EventInfo
      L3_2 = L3_2.EventID
      L1_2(L2_2, L3_2)
    else
      L1_2 = {}
      L2_2 = {}
      L3_2 = A0_2._shop_id
      L2_2.grid_id = L3_2
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_async_show
      L4_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
      L5_2 = L1_2
      L6_2 = false
      L7_2 = A0_2._binder
      L7_2 = L7_2.rect_root
      L7_2 = L7_2.transform
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1._on_btn_root = L2_1
return L0_1
