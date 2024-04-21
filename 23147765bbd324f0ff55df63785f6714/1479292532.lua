local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailyRewardDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyDailyRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyDailyRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._display_data = A1_2
  A0_2._exit_controller = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event_main
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MonopolyGetDiceDialog_FadeIn"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.confirm_btn
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.spine_skeleton
    L0_3 = L0_3.AnimationState
    L1_3 = L0_3
    L0_3 = L0_3.SetAnimation
    L2_3 = 0
    L3_3 = "Loop"
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
    A0_2._enable_in_control_exit = true
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Daily_CoinAdd"
  L4_2 = A0_2._display_data
  L4_2 = L4_2.CurrencyValue
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_ttl_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Daily_DiceAdd"
  L4_2 = A0_2._display_data
  L4_2 = L4_2.DiceValue
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cheat_dice_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._display_data
  L3_2 = L3_2.CheatDiceValue
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.dice_icon
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonopolyUtils
  L4_2 = L4_2.GetMonopolyDiceItemRow
  L4_2 = L4_2()
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_icon
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonopolyUtils
  L4_2 = L4_2.GetMonopolyCurrencyItemRow
  L4_2 = L4_2()
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.cheat_dice_icon
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonopolyUtils
  L4_2 = L4_2.GetMonopolyCheatDiceItemRow
  L4_2 = L4_2()
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_skeleton
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = "FadeIn"
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMonopolyEnableRefreshCoin
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMonopolyRefreshCoin
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._confirm_btn_clicked
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "monopoly confirm clicked"
  L1_2(L2_2)
  A0_2._confirm_btn_clicked = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MonopolyGetDiceDialog_Show"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.empty_btn
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    A0_2._can_exit = true
    L0_3 = G
    L0_3 = L0_3.SuperDebug
    L0_3 = L0_3.LogFormat
    L1_3 = "monopoly show finish"
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "MonopolyGetDiceDialog_Show"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_skeleton
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = "Show"
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.spine_skeleton
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimation
  L3_2 = 0
  L4_2 = "ShowLoop"
  L5_2 = true
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_confirm_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "monopoly exit click"
  L1_2(L2_2)
  L1_2 = A0_2._exit_controller
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = A0_2._exit_controller
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.SetEnterCallback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_in_control_exit
  if not L1_2 then
    return
  end
  L1_2 = A0_2._confirm_btn_clicked
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_confirm_btn_clicked
    L1_2(L2_2)
  else
    L1_2 = A0_2._can_exit
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_exit_btn_clicked
      L1_2(L2_2)
    end
  end
end
L0_1._in_control_exit_click = L1_1
return L0_1
