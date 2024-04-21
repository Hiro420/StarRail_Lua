local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Avatar.TrialAvatarLeaveDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TrialAvatarLeaveDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3.6
L2_1 = "UIText_Setting_Virtual_Leave"
L3_1 = "UIText_Setting_Virtual_Type4_Leave"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TrialAvatarLeaveDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._time = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._trial_avatar_id = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = L1_1
  A0_2._time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTrialAvatar
  L3_2 = A0_2._trial_avatar_id
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar
  L5_2 = L1_2.AvatarSideIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.IsPlotTrialPlayer
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_avatar
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L5_2 = L1_2.AvatarName
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_avatar
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L5_2 = L1_2.AvatarName
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._time
  L2_2 = L2_2 - A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._time
  if L2_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L4_1
return L0_1
