local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemCostListGenerator"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemExcelTable
L2_1 = L2_1.GetData
L3_1 = G
L3_1 = L3_1.InventoryUtils
L3_1 = L3_1.get_common_path_item_id
L3_1 = L3_1()
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2
  A0_2._cs_item_cost_list = nil
  A0_2._succ_callback = nil
  A0_2._callback_self = nil
end
L0_1.dtor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._cs_item_cost_list
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.Collections
    L2_2 = L2_2.Generic
    L2_2 = L2_2.List
    L3_2 = CS
    L3_2 = L3_2.Proto
    L3_2 = L3_2.ItemCost
    L2_2 = L2_2(L3_2)
    L3_2 = 3
    L2_2 = L2_2(L3_2)
    A0_2._cs_item_cost_list = L2_2
  end
  L2_2 = A0_2._cs_item_cost_list
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
  A0_2._need_coin = 0
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.InventoryUtils
    L7_2 = L7_2.create_item_cost
    L8_2 = L6_2.ItemID
    L9_2 = L6_2.ItemNum
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._cs_item_cost_list
    L9_2 = L8_2
    L8_2 = L8_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = L6_2.ItemID
    L9_2 = G
    L9_2 = L9_2.UtilEngineWrap
    L9_2 = L9_2.ConvCsEnumToNum
    L10_2 = CS
    L10_2 = L10_2.HJLLLAFEOHH
    L10_2 = L10_2.AJNPKBJMOKL
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L8_2 = L6_2.ItemNum
      A0_2._need_coin = L8_2
    end
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.is_item_cost_enough
  L2_2 = A0_2._cs_item_cost_list
  return L1_2(L2_2)
end
L0_1.is_material_enough = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._need_coin
  if L1_2 ~= nil then
    L1_2 = A0_2._need_coin
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_9::
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HJLLLAFEOHH
  L4_2 = L4_2.AJNPKBJMOKL
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._need_coin
  L2_2 = L1_2 >= L2_2
  return L2_2
end
L0_1.is_coin_enough = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._common_item_name
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = L2_1.ItemName
    L1_2 = L1_2(L2_2)
    A0_2._common_item_name = L1_2
  end
  L1_2 = A0_2._common_item_name
  return L1_2
end
L0_1.get_common_item_name = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = G
  L4_2 = L4_2.InventoryUtils
  L4_2 = L4_2.is_item_cost_enough
  L5_2 = A0_2._cs_item_cost_list
  L4_2, L5_2 = L4_2(L5_2)
  if not L4_2 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.invoke_callback
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = "RetCodeError_1304"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2.is_coin_enough
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.invoke_callback
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = "UIText_SkillTreeDetail_LimitSoftCoin"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  A0_2._succ_callback = A1_2
  A0_2._callback_self = A3_2
  A0_2._need_exchange_num = nil
  if L5_2 then
    A0_2._need_exchange_num = L5_2
    L6_2 = G
    L6_2 = L6_2.InventoryUtils
    L6_2 = L6_2.get_path_item_cost_from_item_cost_list
    L7_2 = A0_2._cs_item_cost_list
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.PileItem
    L7_2 = L7_2.ItemId
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = G
    L9_2 = L9_2.InventoryUtils
    L9_2 = L9_2.get_need_exchange_common_item_num_by_rarity
    L10_2 = L8_2.Rarity
    L9_2 = L9_2(L10_2)
    L10_2 = L5_2 / L9_2
    L11_2 = {}
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.ItemFactory
    L12_2 = L12_2.CreateDisplayItemData
    L13_2 = G
    L13_2 = L13_2.InventoryUtils
    L13_2 = L13_2.get_common_path_item_id
    L13_2 = L13_2()
    L14_2 = L5_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2.PreItemData = L12_2
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.ItemFactory
    L12_2 = L12_2.CreateDisplayItemData
    L13_2 = L7_2
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2.AfterItemData = L12_2
    L12_2 = A0_2._on_confirm
    L11_2.ConfirmCallback = L12_2
    L12_2 = A0_2._on_dilaog_setup
    L11_2.SetupViewCallback = L12_2
    L11_2.CallbackSelf = A0_2
    L11_2.ResBarKey = "PathMaterialExchange"
    L12_2 = G
    L12_2 = L12_2.TextmapStatic
    L12_2 = L12_2.GetText
    L13_2 = "UIText_CommonItem_Exchange_Text"
    L14_2 = L5_2
    L16_2 = A0_2
    L15_2 = A0_2.get_common_item_name
    L15_2 = L15_2(L16_2)
    L16_2 = L10_2
    L17_2 = G
    L17_2 = L17_2.TextmapStatic
    L17_2 = L17_2.GetText
    L18_2 = L8_2.ItemName
    L17_2, L18_2 = L17_2(L18_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    A0_2._tips = L12_2
    L12_2 = G
    L12_2 = L12_2.UIManager
    L12_2 = L12_2.load_and_async_show
    L13_2 = "Ui.Inventory.ItemCost.CommonItemExchangeConfirmDialog"
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._on_confirm
    L6_2(L7_2)
  end
end
L0_1.get_item_cost_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.safe_set_title
  L4_2 = "UIText_CommonItem_Exchange_Title"
  L6_2 = A0_2
  L5_2 = A0_2.get_common_item_name
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L2_2 = A1_2.safe_set_custom_tips
  L4_2 = A0_2._tips
  L2_2(L3_2, L4_2)
  A0_2._tips = nil
end
L0_1._on_dilaog_setup = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._need_exchange_num
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.InventoryUtils
    L1_2 = L1_2.create_item_cost
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.get_common_path_item_id
    L2_2 = L2_2()
    L3_2 = A0_2._need_exchange_num
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._cs_item_cost_list
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.get_path_item_cost_from_item_cost_list
    L3_2 = A0_2._cs_item_cost_list
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.PileItem
    L3_2 = L3_2.ItemId
    L4_2 = L2_2.PileItem
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.InventoryModule
    L6_2 = L5_2
    L5_2 = L5_2.GetItemCountByConfigID
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.ItemNum = L5_2
    L4_2 = L2_2.PileItem
    L4_2 = L4_2.ItemNum
    if L4_2 == 0 then
      L4_2 = A0_2._cs_item_cost_list
      L5_2 = L4_2
      L4_2 = L4_2.Remove
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
    end
    A0_2._need_exchange_num = nil
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._succ_callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._cs_item_cost_list
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_confirm = L3_1
return L0_1
