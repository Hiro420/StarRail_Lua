local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.LastAttackHintDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LastAttackHintDialog"
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
  L3_2 = L3_2.LastAttackHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._fadein_duration = 1.5
  A0_2._fadeout_duration = 0.333
  A0_2.animation_phase = 1
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "LastAttack_FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Sample
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LastAttackHinkLeaveBegin
  L4_2 = L0_1._OnFadeOutStart
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LastAttackHinkLeaveBegin
  L4_2 = L0_1._OnFadeOutStart
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.animation_phase
  if L2_2 == 1 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.time
    L3_2 = A0_2._begin_time
    L3_2 = L2_2 - L3_2
    L4_2 = A0_2._fadein_duration
    if L3_2 > L4_2 then
      A0_2.animation_phase = 2
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "LastAttack_Loop"
      L3_2(L4_2, L5_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.Notify
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.ShowUICustomEvent
      L3_2(L4_2)
    end
  end
  L2_2 = A0_2.animation_phase
  if L2_2 == 3 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.time
    L3_2 = A0_2._begin_time
    L3_2 = L2_2 - L3_2
    L4_2 = A0_2._fadeout_duration
    if L3_2 > L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.exit
      L3_2(L4_2)
    end
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "LastAttack_FadeOut"
  L2_2(L3_2, L4_2)
  A0_2.animation_phase = 3
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  A0_2._begin_time = L2_2
end
L0_1._OnFadeOutStart = L1_1
return L0_1
