local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCheatDiceBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyCheatDiceBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L1_1 = L1_1.SystemInfo
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_mutex
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._btn_mutex
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._lock_info_provider_ref = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.CheatDiceNum
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._lock_info_provider_ref
  if L1_2 then
    L1_2 = A0_2._lock_info_provider_ref
    L2_2 = L1_2
    L1_2 = L1_2.is_locked
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L1_2 = A0_2._cheat_dice_dialog
  if L1_2 then
    L1_2 = A0_2._cheat_dice_dialog
    L1_2 = L1_2.LuaTable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.try_close_cheat_dice_dialog
      L1_2(L2_2)
      return
    end
  end
  L1_2 = L1_1.CheatDiceNum
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._try_notify_no_dice
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyCheatDiceDialog"
  L1_2 = L1_2(L2_2)
  A0_2._cheat_dice_dialog = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cheat_dice_dialog
  L1_2 = L1_2.LuaTable
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  function L3_2()
    local L0_3, L1_3, L2_3
    A0_2._cheat_dice_dialog = nil
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.root_btn
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.root_btn
        L1_3 = L0_3
        L0_3 = L0_3.SetChecked
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_clicked = L3_1
function L3_1(A0_2)
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
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._try_notify_no_dice = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L4_2 = "UIText_ActivityMonopoly_MainPage_Tips_NoSpDice"
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._do_notify_no_dice = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cheat_dice_dialog
  if L1_2 then
    L1_2 = A0_2._cheat_dice_dialog
    L1_2 = L1_2.LuaTable
    if L1_2 then
      L1_2 = A0_2._cheat_dice_dialog
      L1_2 = L1_2.LuaTable
      L2_2 = L1_2
      L1_2 = L1_2.exit
      L1_2(L2_2)
      A0_2._cheat_dice_dialog = nil
    end
  end
end
L0_1.try_close_cheat_dice_dialog = L3_1
return L0_1
