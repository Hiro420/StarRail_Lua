local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Adventure.MainMissionHint.MainMissionTopToastDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MainMissionTopToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MainStoryMissionHint_Start"
L2_1 = "MainStoryMissionHint_Finish"
L3_1 = 3.5
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MainMissionTopToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._config = A1_2
  A0_2._is_start = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._config
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMainMissionTopToastDequeue
  L3_2 = A0_2._is_start
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_start
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AdventureMissionStatusHint_New"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AdventureMissionStatusHint_Complete"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_anim
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._is_start
  if L2_2 then
    L1_2 = L1_1
  else
    L1_2 = L2_1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  L3_1 = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_exit
  L5_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._setup_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
return L0_1
