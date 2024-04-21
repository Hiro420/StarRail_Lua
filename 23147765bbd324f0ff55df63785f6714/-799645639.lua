local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeScheduleRefreshHintDialogBinder"
L0_1(L1_1)
L0_1 = "ToastAbyssStageDialog_Once"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeScheduleRefreshHintDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A1_2
      L0_3()
    end
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeScheduleRefreshHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_DontCache
  A0_2._view_cache_type = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L0_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._auto_close
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._auto_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._in_control_exit_click = L2_1
return L1_1
