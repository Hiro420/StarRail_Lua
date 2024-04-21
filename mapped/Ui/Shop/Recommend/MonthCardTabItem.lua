local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonthCardTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
function L2_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_receive_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.MonthCardRemainTime
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buy
  L4_2 = A0_2._on_btn_buy
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  A0_2._row = A1_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.NameText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.NameText
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.MonthCardProduct
  A0_2._data = L1_2
  L1_2 = L1_1.MonthCardRemainTime
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_price
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.IsProductDataReady
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  if L2_2 ~= nil then
    if L1_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_price
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = " UIText_MonthCard_Page_Renew_Btn"
      L5_2 = A0_2._data
      L5_2 = L5_2.ShowPrice
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_price
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = " UIText_MonthCard_Page_Buy_Btn"
      L5_2 = A0_2._data
      L5_2 = L5_2.ShowPrice
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_1.IsMonthCardLimitPurchase
  A0_2._is_limit = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_limit
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_remain_day
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.Days
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ShopUtils
  L1_2 = L1_2.is_forbid_recharge
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkHint
    L2_2 = "UIText_No_Recharge_Tips"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_limit
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkHint
    L2_2 = "UIText_MonthCard_Page_Max_Time_Hint"
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PayModule
  L2_2 = L1_2
  L1_2 = L1_2.Pay
  L3_2 = A0_2._data
  L3_2 = L3_2.ProductID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_buy = L2_1
return L0_1
