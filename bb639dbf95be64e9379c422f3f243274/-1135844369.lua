local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PhysicalExchange.PhysicalExtraExchangeTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhysicalExtraExchangeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.StaminaModule
L1_1 = L1_1.Instance
L2_1 = "UIText_OfflineStamina_Desc01"
L3_1 = "UIText_OfflineStamina_Desc02"
L4_1 = "UIText_OfflineStamina_Desc03"
L5_1 = 11
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueCommonExcelTable
L6_1 = L6_1.GetData
L7_1 = "ReserveStamina_Maximum_Num"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.IntValue
function L7_1(A0_2)
  local L1_2
  A0_2._cur_amount = 0
  A0_2._cur_max_amount = 0
  A0_2._inputfeild_lock = false
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_input_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_inputfeild_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.ItemCurrencyIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.SafeAddListener
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._inputfeild_lock
    if L1_3 then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_input_value_change
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L2_2 = L2_2.onEndEdit
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_inputfeild_text
    L3_3 = A0_2._cur_amount
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PlusMinusSliderPanel
  L5_2 = G
  L5_2 = L5_2.PlusMinusSliderPanelBinder
  L6_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._slider_panel = L2_2
  L2_2 = A0_2._slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_slider_panel
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_reserve_stamina
  L2_2 = L2_2(L3_2)
  A0_2._cur_max_amount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_reserve_stamina_num
  L4_2 = A0_2._cur_max_amount
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_handlers
  L2_2(L3_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Stamina_GetReserveStaminaExchange
  L4_2 = A0_2._on_reserve_stamina_exchanged
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_amount = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_num
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._parent
  L2_2 = L1_2
  L1_2 = L1_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_recover_time
  L1_2(L2_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_content_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.get_extra_stamina_recover_rate
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_with_nested_slider
  L4_2 = 0
  L5_2 = A1_2
  L6_2 = L6_1
  L7_2 = A0_2._on_slider_value_changed
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._cur_amount = A1_2
  A0_2._inputfeild_lock = true
  L2_2 = A0_2._slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_amount
  L4_2 = A0_2._cur_amount
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L3_2 = tostring
  L4_2 = A0_2._cur_amount
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
  A0_2._inputfeild_lock = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._cur_amount
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
end
L0_1._setup_reserve_stamina_num = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer_next
  L2_2 = L1_2
  L1_2 = L1_2.SetRemainTimeInSeconds
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.get_next_reserve_stamina_recover_time
  L3_2 = L3_2(L4_2)
  L4_2 = 2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoRemainTimer
  L5_2 = L5_2.TimeMode
  L5_2 = L5_2.ShowMinutes
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._show_recover_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_reserve_stamina
  L1_2 = L1_2(L2_2)
  A0_2._cur_max_amount = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reserve_stamina_num
  L3_2 = A0_2._cur_max_amount
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_recover_time
  L1_2(L2_2)
end
L0_1._on_reserve_stamina_exchanged = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.exchange_reserve_stamina
  L3_2 = A0_2._cur_amount
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L2_2 = 0
  else
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2 = L3_2
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A0_2._cur_max_amount
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._cur_amount = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = A0_2._cur_amount
  L5_2 = L5_2 ~= 0
  L3_2(L4_2, L5_2)
  A0_2._inputfeild_lock = true
  L3_2 = A0_2._slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_amount
  L5_2 = A0_2._cur_amount
  L3_2(L4_2, L5_2)
  A0_2._inputfeild_lock = false
end
L0_1._on_input_value_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cur_amount = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._cur_amount
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._inputfeild_lock
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_inputfeild_text
    L4_2 = A0_2._cur_amount
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_slider_value_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cur_amount = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._cur_amount
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L3_2 = tostring
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
end
L0_1._set_inputfeild_text = L7_1
return L0_1
