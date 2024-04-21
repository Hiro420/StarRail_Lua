local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyCurrencyPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MonopolyModule
L2_1 = L2_1.AssetInfo
function L3_1(A0_2)
  local L1_2
  A0_2._enable_refresh = true
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyRefreshCoin
  L4_2 = L1_1._on_refresh_coin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyForceSetCoin
  L4_2 = L1_1._on_force_set
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyEnableRefreshCoin
  L4_2 = L1_1._on_enable_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_view
  L1_2(L2_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.GetMonopolyCurrencyID
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_num_scroll
  L4_2 = L3_2
  L3_2 = L3_2.Init
  L5_2 = 8
  L3_2(L4_2, L5_2)
end
L1_1._setup_item_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._enable_refresh = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_view_by_display = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._enable_refresh = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L4_2 = A0_2
  L3_2 = A0_2._get_coin_count
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.GetMonopolyCurrencyID
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L1_1._get_coin_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._last_num
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_num_scroll
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A1_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_num_scroll
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2._last_num
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  A0_2._last_num = A1_2
end
L1_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._enable_refresh
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L4_2 = A0_2
  L3_2 = A0_2._get_coin_count
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_refresh_coin = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_force_set = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._enable_refresh = A1_2
  if A1_2 then
    A0_2._last_num = nil
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L5_2 = A0_2
    L4_2 = A0_2._get_coin_count
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enable_refresh = L3_1
return L1_1
