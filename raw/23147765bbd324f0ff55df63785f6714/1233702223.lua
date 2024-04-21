local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WaypointItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Adventure.Waypoint.WayPointUtils"
L1_1(L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.AdventureWaypointType
L2_1 = "MissionIconHint_Navi"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BillboardWayPointMutexConfig
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BillboardWayPointMutexStatus
  L2_2 = L2_2.WayPointOpen
  L1_2 = L1_2(L2_2)
  A0_2._mutex_data = L1_2
  A0_2._is_playing_navihint_anim = false
  A0_2._to_play_anim = false
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.IdentifacationID = A1_2
  A0_2._waypoint_config_list = A2_2
  L4_2 = A0_2._waypoint_config_list
  L4_2 = L4_2[1]
  A0_2._current_waypoint_config = L4_2
  A0_2._waypoint_mono = A3_2
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = A0_2._current_waypoint_config
  L5_2 = L5_2.PrefabPath
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A0_2._binder
    L5_2 = A0_2._current_waypoint_config
    L5_2 = L5_2.PrefabPath
    L4_2.prefab_path = L5_2
  end
  A0_2._is_active = true
  L5_2 = A0_2
  L4_2 = A0_2._setup_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._notify_waypoint_status
  L6_2 = A0_2._current_waypoint_config
  L6_2 = L6_2.Target
  L6_2 = L6_2.TargetEntity
  L7_2 = A0_2._is_active
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.set_waypoint_config = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_waypoint_config
  if L1_2 ~= nil then
    L1_2 = A0_2._current_waypoint_config
    L1_2 = L1_2.WaypointType
    L2_2 = L1_1.Mission
    if L1_2 == L2_2 then
      A0_2._to_play_anim = true
      L2_2 = A0_2
      L1_2 = A0_2._notify_waypoint_status
      L3_2 = A0_2._current_waypoint_config
      L3_2 = L3_2.Target
      L3_2 = L3_2.TargetEntity
      L4_2 = A0_2._is_active
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1.try_play_new_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._mutex_status = true
  A0_2._display_distance = -1
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
  L1_2 = L1_2.anim_navi_hint_event
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_navi_hint_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = L2_1
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      A0_2._is_playing_navihint_anim = false
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayToBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.anim_navi_hint
      L2_3 = L2_1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._notify_waypoint_status
      L2_3 = A0_2._current_waypoint_config
      L2_3 = L2_3.Target
      L2_3 = L2_3.TargetEntity
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.is_bound
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._custom_refresh
      L1_2(L2_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_async_callback
    L3_2 = A0_2
    L4_2 = A0_2._custom_refresh
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_active
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._current_waypoint_config
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_distance_text
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_light_weight_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._mutex_status = true
  L2_2 = A0_2
  L1_2 = A0_2._notify_waypoint_status
  L3_2 = A0_2._current_waypoint_config
  L3_2 = L3_2.Target
  L3_2 = L3_2.TargetEntity
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._custom_refresh = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.is_bound
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = A0_2._current_waypoint_config
  L3_2 = L3_2.Target
  L3_2 = L3_2.IsGameObject
  if L3_2 then
    L3_2 = A0_2._current_waypoint_config
    L3_2 = L3_2.Target
    L3_2 = L3_2.TargetEntity
    if L3_2 ~= nil then
      L3_2 = A0_2._current_waypoint_config
      L3_2 = L3_2.Target
      L3_2 = L3_2.TargetEntity
      L4_2 = L3_2
      L3_2 = L3_2.IsAliveOrLimbo
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_30
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2._update_waypoint_status
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  ::lbl_30::
  L3_2 = A1_2 ~= nil
  L4_2 = 0
  if L3_2 then
    L5_2 = G
    L5_2 = L5_2.WayPointUtils
    L5_2 = L5_2.get_distance
    L6_2 = A0_2._current_waypoint_config
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = false
  L6_2 = nil
  L7_2 = ipairs
  L8_2 = A0_2._waypoint_config_list
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L13_2 = A0_2
    L12_2 = A0_2._set_waypoint_active
    L14_2 = L11_2
    L15_2 = L4_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    if L12_2 and L6_2 == nil then
      L5_2 = true
      L6_2 = L11_2
    end
  end
  L7_2 = A0_2._current_waypoint_config
  if L7_2 ~= L6_2 and L6_2 ~= nil then
    A0_2._current_waypoint_config = L6_2
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_icon
    L10_2 = A0_2._current_waypoint_config
    L10_2 = L10_2.IconPath
    L7_2(L8_2, L9_2, L10_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2._update_waypoint_status
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  if L5_2 then
    L7_2 = A0_2._waypoint_mono
    L8_2 = L7_2
    L7_2 = L7_2.RefreshWaypointItem
    L9_2 = A0_2._binder
    L9_2 = L9_2.root
    L10_2 = A0_2._binder
    L10_2 = L10_2.rect_arrow
    L11_2 = A0_2._current_waypoint_config
    L12_2 = A2_2
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.Client
    L13_2 = L13_2.GlobalVars
    L13_2 = L13_2.s_UICamera
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    if L7_2 then
      L3_2 = false
    end
    L9_2 = A0_2
    L8_2 = A0_2._set_distance_text
    L10_2 = L3_2
    L11_2 = L4_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L7_2 = A0_2._to_play_anim
  if L7_2 then
    A0_2._to_play_anim = false
    L7_2 = A0_2._binder
    L7_2 = L7_2.anim_navi_hint
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.anim_navi_hint
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L7_2(L8_2)
      A0_2._is_playing_navihint_anim = true
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.anim_root
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.anim_root
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L7_2(L8_2)
    end
    L8_2 = A0_2
    L7_2 = A0_2._notify_waypoint_status
    L9_2 = A0_2._current_waypoint_config
    L9_2 = L9_2.Target
    L9_2 = L9_2.TargetEntity
    L10_2 = A0_2._is_active
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = true
  return L7_2
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_active = false
  L2_2 = A0_2
  L1_2 = A0_2.set_light_weight_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_waypoint_status
  L3_2 = A0_2._current_waypoint_config
  L3_2 = L3_2.Target
  L3_2 = L3_2.TargetEntity
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.deactive = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._to_play_anim = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_navi_hint
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_navi_hint
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    A0_2._is_playing_navihint_anim = false
  end
end
L0_1.stop_anim = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._current_waypoint_config
  L3_2 = L3_2.Target
  L3_2 = L3_2.TargetEntity
  if L3_2 ~= nil then
    L3_2 = A0_2._current_waypoint_config
    L3_2 = L3_2.Target
    L3_2 = L3_2.TargetEntity
    L4_2 = L3_2
    L3_2 = L3_2.Equals
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      A0_2._mutex_status = A2_2
    end
  end
end
L0_1.set_mutex_status_by_entity = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2._display_distance
    if A2_2 ~= L3_2 then
      A0_2._display_distance = A2_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_distance
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = G
      L5_2 = L5_2.WayPointUtils
      L5_2 = L5_2.get_distance_text
      L6_2 = A2_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_distance
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActiveByScale
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_distance
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActiveByScale
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_distance_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = true
  if L3_2 then
    L4_2 = A0_2._mutex_status
    L3_2 = L4_2 or L3_2
    if not L4_2 then
      L3_2 = A0_2._is_playing_navihint_anim
    end
  end
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.WayPointUtils
    L4_2 = L4_2.tick_waypoint_active
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1._set_waypoint_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.lightWeightDeactivate
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_light_weight_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    if not A1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.stop_anim
      L2_2(L3_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._notify_waypoint_status
    L4_2 = A0_2._current_waypoint_config
    L4_2 = L4_2.Target
    L4_2 = L4_2.TargetEntity
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._update_waypoint_status = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._mutex_data
  L4_2 = A0_2._current_waypoint_config
  L4_2 = L4_2.Target
  L4_2 = L4_2.TargetEntity
  L3_2.Entity = L4_2
  L3_2 = A0_2._mutex_data
  L3_2.IsActive = A2_2
  L3_2 = A0_2._mutex_data
  L4_2 = A0_2._is_playing_navihint_anim
  if not L4_2 then
    L4_2 = A0_2._to_play_anim
  end
  L3_2.IsPlayingAnim = L4_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIChangeBillboardWayPointMutex
  L5_2 = A0_2._mutex_data
  L3_2(L4_2, L5_2)
end
L0_1._notify_waypoint_status = L3_1
return L0_1
