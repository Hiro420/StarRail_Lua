local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Phone.StaminaTipPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StaminaTipPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "ReserveStamina_Bubble"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ReserveStamina_BubbleDelay"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
function L3_1(A0_2)
  local L1_2
  A0_2._notify_handler_added = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.StaminaModule
  L1_2 = L1_2.Instance
  A0_2._stamina_module = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_need_show
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._can_show
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._try_add_notify_handler
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._try_show_view
      L2_2(L3_2)
    end
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._notify_handler_added
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIToastQueueEmpty
    L4_2 = A0_2._try_show_on_notify
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIToastMainPage
    L4_2 = A0_2._try_show_on_notify
    L1_2(L2_2, L3_2, L4_2)
    A0_2._notify_handler_added = true
  end
end
L0_1._try_add_notify_handler = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._can_show
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_view
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
L0_1._try_show_on_notify = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
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
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1._can_show = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L1_2 = L1_2.PageStackCount
  L1_2 = L1_2 == 2
  return L1_2
end
L0_1._in_main_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterSeconds
  L2_2 = L2_1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._can_show
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_active
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_img_and_num
      L0_3(L1_3)
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.User
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_TimeManager
      L1_3 = L1_3.NowTimeStamp
      L0_3.StaminaTipLastShow = L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._add_count_down_timer
      L2_3 = A0_2._on_time_out
      L3_3 = 3.5
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      A0_2._count_down_timer = L0_3
      L0_3 = A0_2._count_down_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._count_down_timer
      L1_3 = L0_3
      L0_3 = L0_3.start
      L0_3(L1_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_add_notify_handler
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._try_show_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_stamina_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._stamina_module
  L4_2 = L3_2
  L3_2 = L3_2.get_cur_stamina
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_stamina_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._stamina_module
  L4_2 = L3_2
  L3_2 = L3_2.get_max_stamina
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRow
  L2_2 = A0_2._stamina_module
  L3_2 = L2_2
  L2_2 = L2_2.get_stamina_id
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_stamina
  L5_2 = L1_2.ItemCurrencyIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._stamina_module
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_reserve_stamina
  L2_2 = L2_2(L3_2)
  L2_2 = 0 < L2_2
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_reserve_stamina_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._stamina_module
    L6_2 = L5_2
    L5_2 = L5_2.get_cur_reserve_stamina
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.InventoryModule
    L3_2 = L3_2.GetItemRow
    L4_2 = A0_2._stamina_module
    L5_2 = L4_2
    L4_2 = L4_2.get_reserve_stamina_id
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_reserve_stamina
    L7_2 = L3_2.ItemCurrencyIconPath
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reserve_stamina
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_img_and_num = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_TimeManager
  L3_2 = L2_2
  L2_2 = L2_2.TimeStampCrossDailyUpdate
  L4_2 = L1_2.StaminaTipLastShow
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_TimeManager
    L3_2 = L2_2
    L2_2 = L2_2.TimeStampCrossDailyUpdate
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.PlayerModule
    L4_2 = L4_2.LoginTimeStamp
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SystemOpenModule
    L2_2 = L2_2.IsOpen
    L3_2 = L1_1
    L2_2 = not L2_2 and L2_2
  end
  return L2_2
end
L0_1._is_need_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._on_time_out = L3_1
return L0_1
