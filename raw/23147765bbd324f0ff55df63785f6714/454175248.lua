local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CoinCostPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.ComponentExtensions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_splash
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_coin
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.HGGDPEHMDBH
  L5_2 = L5_2.AHCNPMBGKID
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InventoryModule
  L3_2 = L3_2.GetItemRow
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.HGGDPEHMDBH
  L5_2 = L5_2.AHCNPMBGKID
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_coin
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  if A1_2 > L2_2 then
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "<color=\"#C84A32\">%s</color>"
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    A1_2 = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.TextExtensions
  L4_2 = L4_2.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_cost_coin
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.TextExtensions
  L4_2 = L4_2.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_total_coin
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
return L0_1
