local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WaypointPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Adventure.Waypoint.WaypointItemPanel"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Adventure.Waypoint.WaypointItemPanelBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Adventure.Waypoint.WayPointUtils"
L1_1(L2_1)
L1_1 = G
L1_1 = L1_1.WayPointModule
L1_1 = L1_1.Instance
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._active_waypint_panels = L1_2
  L1_2 = {}
  A0_2._waypoint_panel_pool = L1_2
  A0_2._is_visible = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.GetLockTargetFunc
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GamePlayLockTarget
  L3_2 = L3_2.PlayerControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._player_control = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._adv_phase = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetLateTickCallback
  L3_2 = A0_2._on_mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SwitchAdventureWaypointVisible
  L4_2 = L0_1._on_swtich_adventure_waypoint_visible
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIChangeWayPointMutexStatus
  L4_2 = L0_1._on_mutex_status_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIStopWayPointAnim
  L4_2 = L0_1._stop_anim
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = {}
  L3_2 = A0_2._active_waypint_panels
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._active_waypint_panels
    L7_2 = L7_2[L6_2]
    L8_2 = false
    L9_2 = pairs
    L10_2 = A1_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L2_2[L12_2]
      if L14_2 == nil then
        L14_2 = L7_2.IdentifacationID
        if L14_2 == L12_2 then
          L8_2 = true
          L15_2 = L7_2
          L14_2 = L7_2.set_waypoint_config
          L16_2 = L12_2
          L17_2 = L13_2
          L18_2 = A0_2._binder
          L18_2 = L18_2.waypoint_mono
          L14_2(L15_2, L16_2, L17_2, L18_2)
          L2_2[L12_2] = true
          break
        end
      end
    end
    if not L8_2 then
      L10_2 = A0_2
      L9_2 = A0_2._destroy_waypoint
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = A0_2._active_waypint_panels
      L11_2 = L6_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2[L6_2]
    if L8_2 == nil then
      L9_2 = A0_2
      L8_2 = A0_2._spawn_waypoint
      L10_2 = L6_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.deactive
  L2_2(L3_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._waypoint_panel_pool
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._destroy_waypoint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2._find_useable_panel
  L6_2 = A2_2[1]
  L6_2 = L6_2.PrefabPath
  L4_2 = L4_2(L5_2, L6_2)
  if 0 < L4_2 then
    L5_2 = A0_2._waypoint_panel_pool
    L3_2 = L5_2[L4_2]
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._active_waypint_panels
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = A0_2._waypoint_panel_pool
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L6_2 = L3_2
    L5_2 = L3_2.set_waypoint_config
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.waypoint_mono
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L3_2
    L5_2 = L3_2.try_play_new_anim
    L5_2(L6_2)
    L6_2 = L3_2
    L5_2 = L3_2._setup_view
    L5_2(L6_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.WaypointItemPanel
    L8_2 = G
    L8_2 = L8_2.WaypointItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2 = L5_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._active_waypint_panels
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = L3_2
    L5_2 = L3_2.set_waypoint_config
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.waypoint_mono
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L3_2
    L5_2 = L3_2.try_play_new_anim
    L5_2(L6_2)
    L6_2 = L3_2
    L5_2 = L3_2.async_bind
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_root
    L5_2(L6_2, L7_2)
  end
end
L0_1._spawn_waypoint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._waypoint_panel_pool
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.StrExt
    L7_2 = L7_2.IsNullOrEmpty
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2._binder
      L7_2 = L7_2.prefab_path
      if L7_2 == nil then
        goto lbl_27
      end
    end
    L7_2 = G
    L7_2 = L7_2.StrExt
    L7_2 = L7_2.IsNullOrEmpty
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = L6_2._binder
      L7_2 = L7_2.prefab_path
      ::lbl_27::
      if L7_2 == A1_2 then
        return L5_2
      end
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1._find_useable_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._can_show
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.waypoint_mono
  L3_2 = L2_2
  L2_2 = L2_2.UpdateSafeZone
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.WayPointUtils
  L2_2 = L2_2.get_player_GO
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_root
  L3_2 = L3_2.rect
  L3_2 = L3_2.width
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_root
  L4_2 = L4_2.rect
  L4_2 = L4_2.height
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2._active_waypint_panels
  L4_2 = #L4_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._active_waypint_panels
    L8_2 = L8_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.refresh
    L11_2 = L2_2
    L12_2 = L3_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._on_mono_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.Entity
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2._active_waypint_panels
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.set_mutex_status_by_entity
      L9_2 = A1_2.Entity
      L10_2 = A1_2.Status
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._on_mutex_status_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._active_waypint_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.stop_anim
    L6_2(L7_2)
  end
end
L0_1._stop_anim = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_visible = A1_2
end
L0_1._on_swtich_adventure_waypoint_visible = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_visible
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.IsInStoryMode
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._adv_phase
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = L1_1.ignore_player_lock
  if not L1_2 then
    L1_2 = A0_2._player_control
    L1_2 = L1_2.IsLock
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.IsLockInputController
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.IsInLoadingProcess
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._can_show = L2_1
return L0_1
