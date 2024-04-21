local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Friend.FriendNameEditDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendNameEditDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = G
L2_1 = L2_1.FriendUtils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FriendNameEditDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._uid = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetFriendBriefData
  L4_2 = A0_2._uid
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.RemarkName
  A0_2._name = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MBINMCFNIKO
  L4_2 = A0_2._on_set_friend_nick_name
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._name
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_nickname_created_callback
  L3_2 = A0_2._on_edit_confirm
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_nickname_edit
  L2_2 = L1_2
  L1_2 = L1_2.get_nickname
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._name
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L2_2 = L2_1.do_set_friend_remark_name
  L3_2 = A0_2._uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_edit_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_set_friend_nick_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
return L0_1
