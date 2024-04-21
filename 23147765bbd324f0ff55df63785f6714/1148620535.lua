local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMapPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._customized_clicked_callback = nil
  if A3_2 == nil then
    A0_2._interactable = true
  else
    A0_2._interactable = A3_2
  end
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._alert_enemies = L1_2
  L1_2 = {}
  A0_2._chase_enemies = L1_2
  A0_2._in_danger_status = false
  A0_2._is_in_safe_area = false
  A0_2._in_puzzle_warning = false
  A0_2._in_puzzle_hiding = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnAlertEnemyAdd
  L4_2 = L0_1._on_alert_enemy_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnAlertEnemyRemove
  L4_2 = L0_1._on_alert_enemy_remove
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnPlayerDangerStatusChange
  L4_2 = L0_1._on_danger_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnPlayerEnterSafeArea
  L4_2 = L0_1._on_enter_safe
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MinimapOnPuzzleWarn
  L4_2 = L0_1._on_puzzle_warning
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MinimapOnPuzzleHide
  L4_2 = L0_1._on_puzzle_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mini_map
  L4_2 = A0_2._btn_mini_map_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_map_alert
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_hud_template = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.InitAlready
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.ui_adventure_mini_map
      L3_2 = L2_2
      L2_2 = L2_2.AdventurePhaseEntered
      L2_2(L3_2)
    end
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._customized_clicked_callback = A1_2
end
L0_1.customize_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._interactable
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_mutex
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._customized_clicked_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._customized_clicked_callback
    L1_2()
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.AetherDivide
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.AetherMap
    L3_2 = #L3_2
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GameModeType
    L2_2 = L2_2.Raid
    if L1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.GotoManager
      L2_2 = L2_2.GotoByType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GotoType
      L3_2 = L3_2.RaidMap
      L3_2 = #L3_2
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.StoryLineModule
      L3_2 = L2_2
      L2_2 = L2_2.IsMainLine
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.GotoManager
        L2_2 = L2_2.GotoByType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GotoType
        L3_2 = L3_2.AreaSwitch
        L3_2 = #L3_2
        L2_2(L3_2)
      else
        L2_2 = G
        L2_2 = L2_2.GotoManager
        L2_2 = L2_2.GotoByType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GotoType
        L3_2 = L3_2.StoryLineAreaSwitch
        L3_2 = #L3_2
        L2_2(L3_2)
      end
    end
  end
end
L0_1._btn_mini_map_onclick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._list_try_to_add
  L4_2 = A0_2._alert_enemies
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_alert_enemy_add = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._list_try_to_remove
  L4_2 = A0_2._alert_enemies
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_alert_enemy_remove = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_danger_status = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_danger_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_map_safe
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_map_alert
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_map_warning
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_map_warning_glow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_map_hide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._in_danger_status
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_map_warning
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_map_warning_glow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._in_puzzle_warning
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.go_map_warning
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.go_map_warning_glow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._in_puzzle_hiding
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.go_map_hide
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._alert_enemies
        L1_2 = #L1_2
        if 0 < L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.go_map_alert
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._is_in_safe_area
          if L1_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.go_map_safe
            L2_2 = L1_2
            L1_2 = L1_2.SafeSetActive
            L3_2 = true
            L1_2(L2_2, L3_2)
          end
        end
      end
    end
  end
end
L0_1._refresh_map_alert = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_in_safe_area = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_enter_safe = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._list_contains = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._list_contains
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    return
  else
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._list_try_to_add = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A1_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L0_1._list_try_to_remove = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.GetMutex
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.SetMutex
  L3_2 = 0.3
  L1_2(L2_2, L3_2)
  L1_2 = true
  return L1_2
end
L0_1._check_mutex = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_puzzle_warning = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_puzzle_warning = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_puzzle_hiding = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map_alert
  L2_2(L3_2)
end
L0_1._on_puzzle_hide = L1_1
return L0_1
