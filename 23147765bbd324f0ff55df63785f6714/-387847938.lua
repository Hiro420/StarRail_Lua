local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Museum.RandomEvent.MuseumBuffEventDialogBinder"
L0_1(L1_1)
L0_1 = "UIText_Activity_RandomEventResult_Buff"
L1_1 = "UIText_Activity_Museum_Upgrade_NoItemTip"
L2_1 = "#000000"
L3_1 = "#E93B29"
L4_1 = 8
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "MuseumBuffEventDialog"
L7_1 = G
L7_1 = L7_1.BaseDialog
L5_1 = L5_1(L6_1, L7_1)
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.MuseumModule
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_NetworkManager
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumBuffEventDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._pause_game = true
end
L5_1.ctor = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  A0_2._random_event = A1_2
  L2_2 = A0_2._random_event
  L2_2 = L2_2.RandomEventConfig
  A0_2._random_event_config = L2_2
end
L5_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumChooseRandomEventFinish
  L4_2 = A0_2._on_event_end
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._add_handlers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_refuse
  L4_2 = A0_2._on_btn_refuse
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buy
  L4_2 = A0_2._on_btn_buy
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "MuseumPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._random_event = nil
end
L5_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = L4_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L5_2 = "Root/Content/BgPanel/KeyMapHintRoot"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1._refresh_short_cut_hint = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._find_and_set_options
  L1_2(L2_2)
  L1_2 = L6_1.MuseumData
  L1_2 = L1_2.CurFunds
  L2_2 = A0_2._accept_choice
  L2_2 = L2_2.EventCostOption
  L1_2 = L1_2 >= L2_2
  if L1_2 then
    L2_2 = L2_1
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = L3_1
  ::lbl_17::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cost
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = tostring
  L6_2 = A0_2._accept_choice
  L6_2 = L6_2.EventCostOption
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = G
  L3_2 = L3_2.MuseumUtils
  L3_2 = L3_2.get_fund_item_data
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_cost_currency
  L7_2 = L3_2.Row
  L7_2 = L7_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._random_event_config
  L6_2 = L6_2.EventTitle
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._random_event_config
  L6_2 = L6_2.Event
  L8_2 = A0_2
  L7_2 = A0_2._get_desc_params
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_buy
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._accept_choice
  L6_2 = L6_2.Option
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_refuse
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._refuse_choice
  L6_2 = L6_2.Option
  L4_2(L5_2, L6_2)
end
L5_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._random_event
  L1_2 = L1_2.RandomEventChoices
  L1_2 = L1_2.Count
  if L1_2 ~= 2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "museum random event with id %d and type %d does not have exactly 2 choices"
    L3_2 = A0_2._random_event
    L3_2 = L3_2.ID
    L4_2 = A0_2._random_event_config
    L4_2 = L4_2.EventType
    L4_2 = #L4_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._random_event
  L1_2 = L1_2.RandomEventChoices
  L1_2 = L1_2[0]
  L1_2 = L1_2.IsCancel
  if L1_2 then
    L1_2 = A0_2._random_event
    L1_2 = L1_2.RandomEventChoices
    L1_2 = L1_2[1]
    A0_2._accept_choice = L1_2
    L1_2 = A0_2._random_event
    L1_2 = L1_2.RandomEventChoices
    L1_2 = L1_2[0]
    A0_2._refuse_choice = L1_2
  else
    L1_2 = A0_2._random_event
    L1_2 = L1_2.RandomEventChoices
    L1_2 = L1_2[1]
    L1_2 = L1_2.IsCancel
    if L1_2 then
      L1_2 = A0_2._random_event
      L1_2 = L1_2.RandomEventChoices
      L1_2 = L1_2[0]
      A0_2._accept_choice = L1_2
      L1_2 = A0_2._random_event
      L1_2 = L1_2.RandomEventChoices
      L1_2 = L1_2[1]
      A0_2._refuse_choice = L1_2
    else
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogErrorFormat
      L2_2 = "museum random event with id %d and type %d does not have a refuse choice"
      L3_2 = A0_2._random_event
      L3_2 = L3_2.ID
      L4_2 = A0_2._random_event_config
      L4_2 = L4_2.EventType
      L4_2 = #L4_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L5_1._find_and_set_options = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._accept_choice
  L1_2 = L1_2.EventBuffDay
  L2_2 = A0_2._accept_choice
  L2_2 = L2_2.EventCostOption
  L3_2 = A0_2._accept_choice
  L3_2 = L3_2.EventRewardFund
  L4_2 = A0_2._accept_choice
  L4_2 = L4_2.EventRewardBuff
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L5_2, L6_2, L7_2, L8_2
end
L5_1._get_desc_params = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.OOEDJJAFEDE
  L3_2 = A0_2._random_event
  L3_2 = L3_2.ID
  L4_2 = A0_2._refuse_choice
  L4_2 = L4_2.ChoiceID
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_btn_refuse = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1.MuseumData
  L1_2 = L1_2.CurFunds
  L2_2 = A0_2._accept_choice
  L2_2 = L2_2.EventCostOption
  L1_2 = L1_2 >= L2_2
  if not L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.OOEDJJAFEDE
  L4_2 = A0_2._random_event
  L4_2 = L4_2.ID
  L5_2 = A0_2._accept_choice
  L5_2 = L5_2.ChoiceID
  L2_2(L3_2, L4_2, L5_2)
end
L5_1._on_btn_buy = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1.MuseumData
  L1_2 = L1_2.MuseumRandomEventData
  L2_2 = L1_2.HaveNewEvent
  if L2_2 then
    L2_2 = L1_2.NewEvent
    L3_2 = A0_2._random_event
    if L2_2 == L3_2 then
      return
    else
      L2_2 = L6_1
      L3_2 = L2_2
      L2_2 = L2_2.TryNotifyRandomEvent
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L5_1._on_museum_data_refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._random_event
  L1_2 = L1_2.SelectedChoice
  if L1_2 then
    L1_2 = A0_2._random_event
    L1_2 = L1_2.SelectedChoice
    L1_2 = L1_2.IsCancel
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L5_1._on_event_end = L8_1
return L5_1
