local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerNickNameEditDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerNickNameEditDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PlayerNickNameEditDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._name = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetNickName
  L4_2 = A0_2._on_player_set_nick_name
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_nickname_created_callback
  L3_2 = A0_2._on_nickname_confirm
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
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
L0_1._on_btn_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_nickname_edit
  L3_2 = L2_2
  L2_2 = L2_2.on_player_set_nick_name
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_player_set_nick_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_nickname
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = "UIText_Rename_Desc"
  L4_2 = "UIText_Rename_Title"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._remove_notify_handler
      L3_3 = G
      L3_3 = L3_3.CS
      L3_3 = L3_3.NotifyType
      L3_3 = L3_3.PlayerSetNickName
      L4_3 = A0_2._on_player_set_nick_name
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.SetNickName
      L3_3 = L1_2
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.exit
      L1_3(L2_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetComponentContent
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rename_Desc"
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_nickname_confirm = L2_1
return L0_1
