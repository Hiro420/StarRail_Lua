local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotKeyConflictDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotKeyConflictDialog"
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
  L3_2 = L3_2.HotKeyConflictDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._in_control_action_data = A1_2
  A0_2._key_type = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback_func = A2_2
end
L0_1.setup_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._in_control_action_data
  L2_2 = L1_2
  L1_2 = L1_2.GetConflictActionData
  L3_2 = A0_2._key_type
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SetIsSupportHotSwitch
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L2_2.MouseTipEnable = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SetInControlTipKey
  L4_2 = L1_2.ActionName
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.InControlActionMapRow
  L3_2 = L3_2.actionTextmapID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Setting_Conflict_Dialog_Tip1"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_control_action_data
  L2_2 = L1_2
  L1_2 = L1_2.TrySaveKeyboardActionBind
  L3_2 = A0_2._key_type
  L1_2(L2_2, L3_2)
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
L0_1._on_btn_confirm_click = L1_1
return L0_1
