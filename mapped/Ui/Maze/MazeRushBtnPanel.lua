local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeRushBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 9908
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  A0_2._is_rush_unlock = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IsRushDisallowed
  A0_2._is_rush_disallow = L1_2
  A0_2._is_blocked_by_hud_template = false
  L2_2 = A0_2
  L1_2 = A0_2._set_rush_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rush
  L4_2 = A0_2._on_btn_rush_down
  L5_2 = A0_2._on_btn_rush_up
  L6_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnlockFuncUnlockData
  L4_2 = A0_2._on_unlock_func_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRushActiveStateChange
  L4_2 = L0_1._on_rush_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UISwitchFastRun
  L4_2 = L0_1._on_ui_switch_fast_run
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DisallowPlayerRush
  L4_2 = A0_2._on_disallow_player_rush
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rush
  L4_2 = A0_2._on_btn_rush_down
  L5_2 = A0_2._on_btn_rush_up
  L6_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_selected
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_selected
    L1_2 = L1_2.gameObject
    L2_2 = L1_2
    L1_2 = L1_2.SetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_rush_btn
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_selected
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_selected
    L2_2 = L2_2.gameObject
    L3_2 = L2_2
    L2_2 = L2_2.SetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_rush_state_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.root
      L2_2 = L2_2.gameObject
      L2_2 = L2_2.lightWeightDeactivate
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._on_btn_rush_down
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_ui_switch_fast_run = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_rush_disallow = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_rush_btn
  L2_2(L3_2)
end
L0_1._on_disallow_player_rush = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_blocked_by_hud_template = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_rush_btn
  L2_2(L3_2)
end
L0_1.set_hud_template = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.InputController
    L2_2 = L2_2.InputData
    L2_2 = L2_2.RushFlag
    L2_2 = L1_2.InputController
    L2_2 = not L2_2 and L2_2
    if L2_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.MazeRushActive
      L3_2(L4_2)
    else
      L3_2 = L1_2.InputController
      L3_2 = L3_2.InputData
      L3_2.RushFlag = false
    end
  end
end
L0_1._on_btn_rush_down = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_btn_rush_up = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SystemOpenModule
    L2_2 = L2_2.IsOpen
    L3_2 = L1_1
    L2_2 = L2_2(L3_2)
    A0_2._is_rush_unlock = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._set_rush_btn
    L2_2(L3_2)
  end
end
L0_1._on_unlock_func_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_rush_unlock
  if L1_2 then
    L1_2 = A0_2._is_rush_disallow
    L2_2 = A0_2
    L1_2 = A0_2._need_show_rush_btn
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._is_blocked_by_hud_template
      L1_2 = not L1_2 and L1_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_rush
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_rush_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.TeamManager
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_2.FakeAvatar
  if L3_2 == nil then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_2.FakeAvatar
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.PlayerRemoteControllerComponent
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2.SupportRush
  return L5_2
end
L0_1._need_show_rush_btn = L2_1
return L0_1
