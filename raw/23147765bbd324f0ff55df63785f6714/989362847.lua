local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDrawPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaDrawPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.None = 0
L1_1.SingleDraw = 1
L1_1.MultiDraw = 2
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.GachaModule
L3_1 = "GachaBeginnerLeftTime"
L4_1 = "GachaDailyLimitLeftTime"
L5_1 = 1
L6_1 = 10
L7_1 = 524
L8_1 = 360
L9_1 = 255
L10_1 = 360
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2.play_screen_fade_in
  L4_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reset_screen_timer = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PlayScreenTransfer
  L1_2 = L1_2()
  A0_2._play_screen_transfer = L1_2
  L1_2 = A0_2._play_screen_transfer
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferType
  L2_2 = L2_2.Black
  L1_2.Type = L2_2
  L1_2 = A0_2._play_screen_transfer
  L2_2 = L5_1
  L1_2.CustomTime = L2_2
  A0_2._is_fade_out = false
end
L0_1.ctor = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gacha_pool_data = A1_2
  L2_2 = L1_1.None
  A0_2._draw_type_cache = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_times
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_single_draw_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_multi_draw_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_newbie_layout
  L2_2(L3_2)
end
L0_1.setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_times
  L1_2(L2_2)
end
L0_1.refresh = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._play_screen_transfer
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferMode
  L2_2 = L2_2.SwitchOut
  L1_2.Mode = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.OpenScreenTransferDialog
  L3_2 = A0_2._play_screen_transfer
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ScreenTransferReason
  L4_2 = L4_2.Default
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_fade_out = true
  L1_2 = A0_2._reset_screen_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._reset_screen_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1.play_screen_fade_out = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_fade_out
  if not L1_2 then
    return
  end
  L1_2 = A0_2._play_screen_transfer
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferMode
  L2_2 = L2_2.SwitchIn
  L1_2.Mode = L2_2
  L1_2 = A0_2._play_screen_transfer
  L1_2.CustomTime = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.NotifyPlayScreenTransfer
  L3_2 = A0_2._play_screen_transfer
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ScreenTransferReason
  L4_2 = L4_2.Default
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_fade_out = false
  L1_2 = A0_2._reset_screen_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1.play_screen_fade_in = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.single_draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_root_interactable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.multi_draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_root_interactable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_draw_btn_interactable = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopBuyGoods
  L4_2 = L0_1._on_buy_tokens_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2
  A0_2._reset_screen_timer = nil
  A0_2._play_screen_transfer = nil
end
L0_1._on_dispose = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.single_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gacha_pool_data
  L4_2 = A0_2._gacha_pool_data
  L4_2 = L4_2.SingleDrawData
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.single_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_begin_gacha_callback
  L3_2 = A0_2._begin_single_draw
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.single_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_do_gacha_callback
  L3_2 = A0_2.play_screen_fade_out
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_single_draw_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.multi_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gacha_pool_data
  L4_2 = A0_2._gacha_pool_data
  L4_2 = L4_2.MultiDrawData
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.multi_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_begin_gacha_callback
  L3_2 = A0_2._begin_multi_draw
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.multi_draw_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_do_gacha_callback
  L3_2 = A0_2.play_screen_fade_out
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_multi_draw_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Newbie
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_multi_draw
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector2
    L3_2 = L10_1
    L4_2 = A0_2._binder
    L4_2 = L4_2.rect_multi_draw
    L4_2 = L4_2.sizeDelta
    L4_2 = L4_2.y
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sizeDelta = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_remain_times
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector2
    L3_2 = L8_1
    L4_2 = A0_2._binder
    L4_2 = L4_2.rect_remain_times
    L4_2 = L4_2.sizeDelta
    L4_2 = L4_2.y
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sizeDelta = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_multi_draw
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector2
    L3_2 = L9_1
    L4_2 = A0_2._binder
    L4_2 = L4_2.rect_multi_draw
    L4_2 = L4_2.sizeDelta
    L4_2 = L4_2.y
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sizeDelta = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_remain_times
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector2
    L3_2 = L7_1
    L4_2 = A0_2._binder
    L4_2 = L4_2.rect_remain_times
    L4_2 = L4_2.sizeDelta
    L4_2 = L4_2.y
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sizeDelta = L2_2
  end
end
L0_1._setup_newbie_layout = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = L1_1.SingleDraw
  A0_2._draw_type_cache = L1_2
end
L0_1._begin_single_draw = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = L1_1.MultiDraw
  A0_2._draw_type_cache = L1_2
end
L0_1._begin_multi_draw = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_times
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Newbie
  if L1_2 == L2_2 then
    L1_2 = A0_2._gacha_pool_data
    L1_2 = L1_2.TotalGachaTime
    L2_2 = A0_2._gacha_pool_data
    L2_2 = L2_2.DoGachaTime
    L1_2 = L1_2 - L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_remain_times
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L5_2 = L1_2
    L6_2 = A0_2._gacha_pool_data
    L6_2 = L6_2.TotalGachaTime
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = L2_1.HaveTotalGachaLimit
    if L1_2 then
      L1_2 = L2_1.TotalGachaLimit
      L2_2 = L2_1.TotalGachaTime
      L1_2 = L1_2 - L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_remain_times
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L4_1
      L5_2 = L1_2
      L6_2 = L2_1.TotalGachaLimit
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = L2_1.HavePoolGachaLimit
      if L1_2 then
        L1_2 = L2_1.PoolGachaLimit
        L2_2 = A0_2._gacha_pool_data
        L2_2 = L2_2.CurrentGachaTime
        L1_2 = L1_2 - L2_2
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_remain_times
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L4_1
        L5_2 = L1_2
        L6_2 = L2_1.PoolGachaLimit
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_remain_times
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_remain_times = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A1_2.ShopID
    L3_2 = A0_2._gacha_pool_data
    L3_2 = L3_2.GachaTokenData
    L3_2 = L3_2.GachaTokenShop
    L3_2 = L3_2.ShopID
    if L2_2 == L3_2 then
      L2_2 = A0_2._draw_type_cache
      L3_2 = L1_1.SingleDraw
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.single_draw_panel
        L3_2 = L2_2
        L2_2 = L2_2.on_draw
        L2_2(L3_2)
      else
        L2_2 = A0_2._draw_type_cache
        L3_2 = L1_1.MultiDraw
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.multi_draw_panel
          L3_2 = L2_2
          L2_2 = L2_2.on_draw
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_buy_tokens_finish = L11_1
return L0_1
