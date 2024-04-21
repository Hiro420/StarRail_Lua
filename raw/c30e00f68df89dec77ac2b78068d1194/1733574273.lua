local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ProductItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._rarity_max_count = 5
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
L2_1 = "SpriteOutput/ItemIcon/Rarity/FrameItemRarityPay.png"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_buy
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if not L0_3 then
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.btn_root
        L1_3 = L0_3
        L0_3 = L0_3.SetChecked
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_price
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._product = A1_2
  L2_2 = A1_2.Row
  A0_2._row = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.AssertFormat
  L3_2 = A0_2._row
  L3_2 = L3_2 ~= nil
  L4_2 = "product not exist: %s"
  L5_2 = A0_2._product
  L5_2 = L5_2.ProductID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_product
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_product
  L5_2 = A0_2._row
  L5_2 = L5_2.GiftImage
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._row
  L4_2 = L4_2.GiftName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_price
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.IsProductDataReady
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_price
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.ShowPrice
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._product
  L3_2 = L1_1.MonthCardProduct
  L2_2 = L2_2 == L3_2
  A0_2._is_monthcard = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_buy_succ_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.rarity_frame
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.rebind_child_node
  L3_2 = L0_1._rarity_max_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_promotion_stars_panel
  L1_2(L2_2)
end
L0_1._setup_rarity = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._product
  L1_2 = L1_2.IsFirstRecharge
  L2_2 = nil
  if L1_2 then
    L3_2 = A0_2._row
    L2_2 = L3_2.FirstCharge
  else
    L3_2 = A0_2._row
    L2_2 = L3_2.NormalCharge
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_double
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  L5_2 = L1_2 and L2_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_extra
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= 0 and L5_2
  L3_2(L4_2, L5_2)
  if L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_double_num
    if L3_2 then
      goto lbl_39
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_extra_num
  ::lbl_39::
  L5_2 = L3_2
  L4_2 = L3_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
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
  L1_2 = L1_1.IsProductDataReady
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._toast_error
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_monthcard
  if L1_2 then
    L1_2 = L1_1.IsMonthCardLimitPurchase
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
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_confirm_buy
  L1_2(L2_2)
end
L0_1._on_btn_buy = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PayModule
  L2_2 = L1_2
  L1_2 = L1_2.Pay
  L3_2 = A0_2._product
  L3_2 = L3_2.ProductID
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.PayProductResult
    L1_3 = L1_3.SUCCEED
    if A0_3 == L1_3 then
      L1_3 = G
      L1_3 = L1_3.Utils
      L1_3 = L1_3.invoke_callback
      L2_3 = A0_2._callback
      L3_3 = A0_2._callback_self
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_confirm_buy = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ToastPile
  L1_2 = L1_2()
  L1_2.DescTextID = "UIText_Recharge_ShopList_Error"
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageStruct
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._toast_error = L3_1
return L0_1
