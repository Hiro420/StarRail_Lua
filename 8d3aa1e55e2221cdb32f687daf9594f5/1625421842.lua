local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FeatureSwitchModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "GotoShopPageCommand"
L3_1 = "Logic.Goto.BaseCommand"
L1_1 = L1_1(L2_1, L3_1)
L1_1._text_already_open = "UIText_Goto_Error_01"
L1_1._text_shop_not_open = "UIText_Goto_Error_03"
L2_1 = G
L2_1 = L2_1.ShopUtils
L2_1 = L2_1.get_recharge_shop_id
L2_1 = L2_1()
L1_1._recharge_shop_id = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    L3_2 = L1_1.super
    L3_2 = L3_2.get_params
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L3_2 = A2_2[2]
  L4_2 = #A2_2
  L4_2 = 3 <= L4_2
  L5_2 = L1_1._recharge_shop_id
  if L3_2 == L5_2 and L4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ConfirmDialogUtil
    L5_2 = L5_2.ShowOkCancelHint
    L6_2 = "UIText_Goto_Hint_RechargeShop"
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextID
    L7_2 = L7_2.empty
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._excute_goto
        L3_3 = A1_2
        L4_3 = A2_2
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._excute_goto
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L1_1.execute = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2[1]
  L4_2 = A2_2[2]
  L5_2 = A2_2[3]
  L6_2 = G
  L6_2 = L6_2.ShopModule
  L6_2 = L6_2.Instance
  if L6_2 ~= nil and L4_2 ~= nil then
    L7_2 = L0_1.IsCloseAllShop
    if L7_2 == true then
      L7_2 = "UIText_Operation_BlockShopPage"
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.ConfirmDialogUtil
      L8_2 = L8_2.ShowOkHint
      L9_2 = L7_2
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.TextID
      L10_2 = L10_2.empty
      L8_2(L9_2, L10_2)
      return
    end
    L7_2 = L0_1.ShieldedShopIDs
    L8_2 = L7_2
    L7_2 = L7_2.Contains
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = "UIText_Operation_BlockShopPage"
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.ConfirmDialogUtil
      L8_2 = L8_2.ShowOkHint
      L9_2 = L7_2
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.TextID
      L10_2 = L10_2.empty
      L8_2(L9_2, L10_2)
      return
    end
  end
  L7_2 = G
  L7_2 = L7_2.UIManager
  L7_2 = L7_2.load_and_async_show
  L8_2 = "Ui.Shop.ShopPage"
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = false
  L12_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L1_1._excute_goto = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ParamIntList
  L2_2 = L2_2.Length
  if 2 <= L2_2 then
    L2_2 = A1_2.ParamIntList
    L2_2 = L2_2[1]
    L3_2 = L1_1._recharge_shop_id
    if L2_2 == L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.PayModule
      L4_2 = L3_2
      L3_2 = L3_2.IsPayOpen
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = false
        L4_2 = L1_1._text_shop_not_open
        return L3_2, L4_2
    end
    else
      L3_2 = L1_1._recharge_shop_id
      if L2_2 ~= L3_2 then
        L3_2 = G
        L3_2 = L3_2.ShopModule
        L3_2 = L3_2.Instance
        L4_2 = L3_2
        L3_2 = L3_2.get_shop_by_id
        L5_2 = L2_2
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 ~= nil then
          L4_2 = L3_2.IsOpen
          if L4_2 then
            goto lbl_41
          end
        end
        L4_2 = false
        L5_2 = L1_1._text_shop_not_open
        return L4_2, L5_2
      end
    end
  end
  ::lbl_41::
  L2_2 = true
  L3_2 = ""
  return L2_2, L3_2
end
L1_1._check_goto_condition = L2_1
return L1_1
