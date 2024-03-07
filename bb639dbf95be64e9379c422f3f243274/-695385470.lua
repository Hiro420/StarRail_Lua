local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Story.CreateNickNameDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CreateNickNameDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._block_input = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CreateNickNameDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PlayerName_Max"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._max_length = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L1_2 = L1_2.DJAKEGAAADN
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetNickName
  L4_2 = L1_1._on_player_set_nick_name
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 == nil or A0_3 == "" then
      L1_3 = A0_2._binder
      L1_3 = L1_3.btn_confirm
      L1_3.interactable = false
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._close_tips
      L1_3(L2_3)
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._check_name
    L3_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._show_tips
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    else
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._close_tips
      L3_3(L4_3)
    end
    L3_3 = A0_2._binder
    L3_3 = L3_3.btn_confirm
    L4_3 = A0_2._is_twice_check
    L4_3 = not L4_3 and L4_3
    L3_3.interactable = L4_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._max_length = nil
  A0_2._symbol_set = nil
  A0_2._is_twice_check = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.text
  A0_2._name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._check_name
  L3_2 = A0_2._name
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_tips
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._close_tips
  L3_2(L4_2)
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.SetNickName
  L5_2 = A0_2._name
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_btn_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = ""
  L1_2(L2_2, L3_2)
end
L1_1._close_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._show_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.check_name_length_valid
  L3_2 = A1_2
  L4_2 = A0_2._max_length
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "UIText_ChangeName_Max"
    return L2_2, L3_2
  end
  L2_2 = true
  return L2_2
end
L1_1._check_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 and "" ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_tips
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._is_twice_check
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._confirm_after_twice_check
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_twice_check
  L2_2(L3_2)
end
L1_1._on_player_set_nick_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = false
  A0_2._is_twice_check = true
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Story.TwiceTipsDialog"
  L3_2 = A0_2._name
  L4_2 = A0_2
  L5_2 = A0_2._cancel_after_twice_check
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._show_twice_check = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._confirm_after_twice_check = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = true
  A0_2._is_twice_check = false
end
L1_1._cancel_after_twice_check = L2_1
return L1_1
