local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonEnvBuffDialog"
L2_1 = G
L2_1 = L2_1.BaseDialog
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
  L3_2 = L3_2.CommonEnvBuffDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._block_input = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  if A1_2 == nil then
    return
  end
  A0_2._env_buff_id = A1_2
  A0_2._params = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_params
  L1_2(L2_2)
  L1_2 = A0_2._strs
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_buff_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._env_buff_id
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = A0_2._strs
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_buff_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._env_buff_id
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.blank_exit_btn
  L4_2 = A0_2._on_exit_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIEnvBuffDialogExit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._params
  if L1_2 ~= nil then
    L1_2 = A0_2._params
    L1_2 = L1_2.Length
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  A0_2._strs = nil
  do return end
  ::lbl_10::
  L1_2 = {}
  A0_2._strs = L1_2
  L1_2 = 0
  L2_2 = A0_2._params
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._strs
    L7_2 = A0_2._params
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.ToString
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._get_params = L1_1
return L0_1
