local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyRollDiceBtnPanelBinder"
L0_1(L1_1)
L0_1 = "MonopolyGameplayDiceAdd"
L1_1 = "MonopolyGameplayWaitHint"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyRollDiceBtnPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MonopolyModule
L3_1 = L3_1.SystemInfo
L4_1 = 3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_mutex
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._btn_mutex
    L1_2(L2_2)
  end
end
L2_1._on_dispose = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._callback_event = A1_2
  A0_2._callback_listener = A2_2
end
L2_1.register_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_effect_add
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_effect_idle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_effect_idle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_owner_active_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L2_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_dream
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L3_1.IsInDream
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_count
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_dice_num
    L1_2 = L1_2(L2_2)
  end
  A0_2._pre_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.get_dice_num
  L1_2 = L1_2(L2_2)
  A0_2._cur_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pre_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._pre_count
  L1_2(L2_2, L3_2)
end
L2_1.refresh = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L3_1.IsInDream
  if L1_2 then
    L1_2 = L3_1.DreamDiceNum
    return L1_2
  end
  L1_2 = L3_1.DiceNum
  return L1_2
end
L2_1.get_dice_num = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_idle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_dice_num
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._try_notify_no_dice
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback_event
  L3_2 = A0_2._callback_listener
  L1_2(L2_2, L3_2)
end
L2_1._on_root_btn_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_mutex
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ButtonMutex
    L1_2 = L1_2(L2_2)
    A0_2._btn_mutex = L1_2
  end
  L1_2 = A0_2._btn_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_notify_no_dice
    L0_3(L1_3)
  end
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._try_notify_no_dice = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1.CheatDiceNum
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIMonopolyShowCommonTopToast
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_ActivityMonopoly_MainPage_Tips_NoDiceButSpDice"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMonopolyShowCommonTopToast
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_ActivityMonopoly_MainPage_Tips_NoDice"
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._do_notify_no_dice = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L2_2.interactable = A1_2
end
L2_1.set_interactable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_idle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._pre_count
  L2_2 = A0_2._cur_count
  if L1_2 ~= L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L2_1.play_add_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_idle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L2_1.prepare_add_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_dice_num
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MonopolyModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurPlayingCellConfig
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.NextCellIDList
  L1_2 = L1_2.Length
  if 1 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MonopolyModule
    L1_2 = L1_2.SystemInfo
    L1_2 = L1_2.RemainSteps
    if 0 < L1_2 then
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_idle
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
  L2_2 = L2_2.anim
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1.play_idle_effect = L5_1
return L2_1
