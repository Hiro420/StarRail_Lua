local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotKeySettingDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotKeySettingDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Escape"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HotKeySettingDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._in_control_action_data = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback_func = A2_2
end
L0_1.setup_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback_func
  if L1_2 then
    L1_2 = A0_2._callback_func
    L2_2 = A0_2._callback_self
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._custom_callback_func = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._in_control_action_data
  L3_2 = L2_2
  L2_2 = L2_2.IsBindKeyboardInBlackList
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._in_control_action_data
    L3_2 = L2_2
    L2_2 = L2_2.IsSameBindKeyboard
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._in_control_action_data
      L3_2 = L2_2
      L2_2 = L2_2.IsBindKeyboardConflict
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.UIManager
        L2_2 = L2_2.load_and_async_show
        L3_2 = "Ui.Settings.Hotkey.HotKeyConflictDialog"
        L4_2 = A0_2._in_control_action_data
        L5_2 = A1_2
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L3_2 = L2_2.LuaTable
        L4_2 = L3_2
        L3_2 = L3_2.setup_callback
        L5_2 = A0_2
        L6_2 = A0_2._custom_callback_func
        L3_2(L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2._in_control_action_data
        L3_2 = L2_2
        L2_2 = L2_2.TrySaveKeyboardActionBind
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._callback_func
        if L2_2 then
          L2_2 = A0_2._callback_func
          L3_2 = A0_2._callback_self
          L2_2(L3_2)
        end
        L3_2 = A0_2
        L2_2 = A0_2.exit
        L2_2(L3_2)
      end
  end
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InControlActionsManager
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.GetInControlKeyString
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.GetKeyboardTipTextIDByKey
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    if L3_2 ~= L4_2 then
      L4_2 = L1_1
      if L2_2 ~= L4_2 then
        L4_2 = G
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = "UIText_Setting_Key_Cannot_Use_Tips"
        L6_2 = G
        L6_2 = L6_2.TextmapStatic
        L6_2 = L6_2.GetText
        L7_2 = L3_2
        L6_2, L7_2 = L6_2(L7_2)
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = G
        L5_2 = L5_2.NotifyManager
        L5_2 = L5_2.notify
        L6_2 = G
        L6_2 = L6_2.CS
        L6_2 = L6_2.NotifyType
        L6_2 = L6_2.UIPileToastMessageString
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L0_1._on_keyboard_click = L2_1
return L0_1
