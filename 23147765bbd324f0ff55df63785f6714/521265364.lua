local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.CDKeyDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CDKeyDialog"
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
  L3_2 = L3_2.CDKeyDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._block_id = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_use
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_paste
  L4_2 = A0_2._on_btn_paste
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_btn_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CDKeyRes
  L4_2 = A0_2._on_get_res
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L3_2 = A0_2
  L2_2 = A0_2._get_cdkey_length_limit
  L2_2 = L2_2(L3_2)
  L1_2.characterLimit = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.input
    L1_3 = L1_3.caretPosition
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.UIStringUtil
    L2_3 = L2_3.HalfWidthAlphanumericFilter
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = A0_2._binder
    L3_3 = L3_3.input
    L4_3 = L3_3
    L3_3 = L3_3.SetTextWithoutNotify
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = A0_2._binder
    L3_3 = L3_3.input
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3._get_new_caret_position
    L6_3 = L1_3
    L7_3 = A0_3
    L8_3 = L2_3
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    L3_3.caretPosition = L4_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._refresh_btn
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_failed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L1_2.text = ""
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn
  L4_2 = A0_2
  L3_2 = A0_2._get_input_string
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.Trim
  L2_2 = A0_2._binder
  L2_2 = L2_2.input
  L2_2 = L2_2.text
  return L1_2(L2_2)
end
L0_1._get_input_string = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_delete
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_paste
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.tip_paste_keymap
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_InControlActionsManager
  L4_2 = L4_2.IsInputFiledSelected
  L4_2 = not L4_2
  L3_2.IsShowTip = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.tip_delete_keymap
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_InControlActionsManager
  L4_2 = L4_2.IsInputFiledSelected
  L4_2 = not L4_2
  L3_2.IsShowTip = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.tip_input
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_InControlActionsManager
  L4_2 = L4_2.IsInputFiledSelected
  L4_2 = not L4_2
  L3_2.IsShowTip = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.TryUnblockFixedTime
  L4_2 = A0_2._block_id
  L2_2(L3_2, L4_2)
  A0_2._block_id = 0
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.PlayerInfo.CDKeySuccessDialog"
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_failed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_message
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_get_res = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_input_string
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = 3
  L5_2 = 1
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIPileToastMessageTextID
    L2_3 = "UIText_Code_Tips"
    L0_3(L1_3, L2_3)
  end
  L7_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._block_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.OpeUtil
  L2_2 = L2_2.UseCDKey
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_use = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_cliboard_text_with_permission
  L2_2 = A0_2._do_paste
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_paste = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input
  L2_2.text = A1_2
end
L0_1._do_paste = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L1_2.text = ""
end
L0_1._on_btn_delete = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.IsInputFiledSelected
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tip_paste_keymap
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_InControlActionsManager
  L2_2 = L2_2.IsInputFiledSelected
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tip_delete_keymap
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_InControlActionsManager
  L2_2 = L2_2.IsInputFiledSelected
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tip_input
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_InControlActionsManager
  L2_2 = L2_2.IsInputFiledSelected
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIStringUtil
  L3_2 = L3_2.GetUnicodeLength
  L4_2 = L3_2
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  return L4_2
end
L0_1._string_length_diff = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._string_length_diff
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A1_2 + L4_2
  return L5_2
end
L0_1._get_new_caret_position = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "CDKey_LengthLimit"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Value
    L2_2 = L2_2.IntValue
    return L2_2
  end
  L2_2 = 30
  return L2_2
end
L0_1._get_cdkey_length_limit = L1_1
return L0_1
