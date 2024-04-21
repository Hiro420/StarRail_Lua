local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyUI2DEffectPanelBinder"
L0_1(L1_1)
L0_1 = 0.5
L1_1 = 1.5
L2_1 = 1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyUI2DEffectPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_coin_arrived
  L4_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._coin_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_buff_arrived
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._buff_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_dice_arrived
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._dice_timer = L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin_add_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.coin_add_anim
  L3_2 = "Item_AddHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._coin_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._coin_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L3_1.play_coin_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._coin_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._coin_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._coin_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMonopolyRefreshCoin
  L1_2(L2_2)
end
L3_1._on_coin_arrived = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._dice_arrive_callback = A1_2
  A0_2._dice_arrive_handler = A2_2
end
L3_1.register_dice_arrive_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_add_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_add_anim
  L3_2 = "Item_AddHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._dice_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._dice_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L3_1.play_dice_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._dice_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._dice_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._dice_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_arrive_callback
  L3_2 = A0_2._dice_arrive_handler
  L1_2(L2_2, L3_2)
end
L3_1._on_dice_arrived = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._playing_buff_id = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_add_anim
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_add_anim
  L4_2 = "Item_AddHint2"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._buff_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._buff_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L3_1.play_buff_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._buff_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._buff_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L1_2 = A0_2._playing_buff_id
  if L1_2 ~= nil then
  end
  A0_2._playing_buff_id = nil
end
L3_1._on_buff_arrived = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_show_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_show_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1.play_asset_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_tax_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_tax_anim
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1.play_asset_tax_effect = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.coin_add_anim
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_add_anim
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_add_anim
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.asset_show_anim
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.asset_tax_anim
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_owner_active_change = L4_1
return L3_1
