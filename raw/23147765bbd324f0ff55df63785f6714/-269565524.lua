local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Friend.AddFriendDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AddFriendDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5.5
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AddFriendDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._assist_data = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.add_friend_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_add_friend_finish_callback
  L3_2 = A0_2._on_add_friend_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = L1_1
  L1_2 = L1_2 + L2_2
  A0_2._close_time_stamp = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._tick_in_mono
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AddFriendHint
  L4_2 = A0_2._on_friend_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.add_friend_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._assist_data
  L3_2 = L3_2.PlayerDisplayData
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_progress
  L1_2.fillAmount = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_platform
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._assist_data
  L3_2 = L3_2.PlayerDisplayData
  L3_2 = L3_2.PlatformInfo
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._tick_auto_close
  L1_2(L2_2)
end
L0_1._tick_in_mono = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._close_time_stamp
  if L1_2 > L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_progress
    L2_2.fillAmount = 0
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L2_2 = A0_2._close_time_stamp
    L2_2 = L2_2 - L1_2
    L3_2 = L1_1
    L2_2 = L2_2 / L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_progress
    L3_2.fillAmount = L2_2
  end
end
L0_1._tick_auto_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_add_friend_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.is_in_black_list
  L2_2 = elf
  L2_2 = L2_2._assist_data
  L2_2 = L2_2.PlayerDisplayData
  L2_2 = L2_2.UID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_friend_data_refresh = L2_1
return L0_1
