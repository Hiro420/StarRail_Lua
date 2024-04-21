local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IdentifyPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._status_identify_wait = 1
L0_1._status_identify_stop = 2
L0_1._status_identify_search = 3
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyModeStart
  L4_2 = L0_1._on_identify_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyModeEnd
  L4_2 = L0_1._on_identify_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyStateChanged
  L4_2 = L0_1._on_identify_state_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.is_identify_mode
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.get_cur_photograph_mode
  L2_2, L3_2, L4_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._enter_identify_mode
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._exit_identify_mode
    L1_2(L2_2)
  end
  A0_2._custom_tip = nil
  A0_2._custom_tip_priority = 0
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aim_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_manual_aim_entity_in_range
  return L1_2(L2_2)
end
L0_1.get_manual_aim_entity_in_range = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_hint
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "SearchErrorHint"
  L1_2(L2_2, L3_2)
end
L0_1.trigger_hint_error_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_identify_state_hint
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphIdentifyState
  L3_2 = L3_2.IdentifyWaitTarget
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._open_identify_ui_node
  L1_2(L2_2)
end
L0_1._enter_identify_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_identify_ui_node
  L1_2(L2_2)
end
L0_1._exit_identify_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._enter_identify_mode
  L1_2(L2_2)
end
L0_1._on_identify_start = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_identify_mode
  L1_2(L2_2)
end
L0_1._on_identify_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aim_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._open_identify_ui_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aim_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._close_identify_ui_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PhotoGraphSys
  L4_2 = L3_2.IsLockUIIdentifyHint
  if L4_2 then
    return
  end
  L4_2 = A1_2.CustomTip
  A0_2._custom_tip = L4_2
  L4_2 = A1_2.TipPriority
  A0_2._custom_tip_priority = L4_2
  L4_2 = A1_2.IdentifyState
  L6_2 = A0_2
  L5_2 = A0_2._refresh_identify_state_hint
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._on_identify_state_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = 0
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.PhotoGraphIdentifyState
  L4_2 = L4_2.IdentifyTargetAppear
  if A1_2 == L4_2 then
    L2_2 = "PhotoGraph_Identify_Target_Appear"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.PhotoGraphUtils
    L3_2 = L4_2.TARGET_APPEAR_TIP_PRIORITY
    L4_2 = A0_2._binder
    L4_2 = L4_2.animator_hint
    L5_2 = L4_2
    L4_2 = L4_2.SetInteger
    L6_2 = "Status"
    L7_2 = L0_1._status_identify_search
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.PhotoGraphIdentifyState
    L4_2 = L4_2.IdentifyPending
    if A1_2 == L4_2 then
      L2_2 = "PhotoGraph_Identify_Pending"
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.PhotoGraphUtils
      L3_2 = L4_2.TARGET_APPEAR_TIP_PRIORITY
      L4_2 = A0_2._binder
      L4_2 = L4_2.animator_hint
      L5_2 = L4_2
      L4_2 = L4_2.SetInteger
      L6_2 = "Status"
      L7_2 = L0_1._status_identify_search
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.PhotoGraphIdentifyState
      L4_2 = L4_2.IdentifySearchTarget
      if A1_2 == L4_2 then
        L2_2 = "PhotoGraph_Identify_Wait_Target"
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.PhotoGraphUtils
        L3_2 = L4_2.SEARCH_TARGET_TIP_PRIORITY
        L4_2 = A0_2._binder
        L4_2 = L4_2.animator_hint
        L5_2 = L4_2
        L4_2 = L4_2.SetInteger
        L6_2 = "Status"
        L7_2 = L0_1._status_identify_wait
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.PhotoGraphIdentifyState
        L4_2 = L4_2.IdentifyWaitTarget
        if A1_2 == L4_2 then
          L2_2 = "PhotoGraph_Identify_Target_Disappear"
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.Client
          L4_2 = L4_2.PhotoGraphUtils
          L3_2 = L4_2.NO_TARGET_TIP_PRIORITY
          L4_2 = A0_2._binder
          L4_2 = L4_2.animator_hint
          L5_2 = L4_2
          L4_2 = L4_2.SetInteger
          L6_2 = "Status"
          L7_2 = L0_1._status_identify_stop
          L4_2(L5_2, L6_2, L7_2)
        end
      end
    end
  end
  if L2_2 ~= nil then
    L4_2 = A0_2._custom_tip
    if L4_2 ~= nil then
      L4_2 = A0_2._custom_tip
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TextID
      L5_2 = L5_2.empty
      if L4_2 ~= L5_2 then
        L4_2 = A0_2._custom_tip_priority
        if L3_2 < L4_2 then
          L2_2 = A0_2._custom_tip
        end
      end
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_hint
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._refresh_identify_state_hint = L1_1
return L0_1
