local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.DataStruct.List"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NavigationZoomManager"
L0_1 = L0_1(L1_1)
L1_1 = "UI/Common/Widget/GuideParticles.prefab"
L2_1 = false
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._owner = A1_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.Dictionary
  L2_2 = L2_2(L3_2)
  A0_2._listener_dict = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.Dictionary
  L2_2 = L2_2(L3_2)
  A0_2._zoom_targets = L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  A0_2._cur_zoom = L2_2
  L2_2 = A1_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  A0_2._switch_hint_root = L2_2
  A0_2._is_can_to_special_zoom = true
  A0_2._is_in_special_zoom = false
  A0_2._special_zoom_navigation_target = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._listener_dict
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._zoom_targets
  L1_2(L2_2)
  A0_2._owner = nil
end
L0_1.dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = nil
  L4_2 = 1
  L5_2 = #A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = A0_2._listener_dict
    L10_2 = L9_2
    L9_2 = L9_2.ContainsKey
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = A0_2._listener_dict
      L3_2 = L9_2[L8_2]
    else
      L9_2 = G
      L9_2 = L9_2.new
      L10_2 = G
      L10_2 = L10_2.List
      L9_2 = L9_2(L10_2)
      L3_2 = L9_2
      L9_2 = A0_2._listener_dict
      L10_2 = L9_2
      L9_2 = L9_2.Add
      L11_2 = L8_2
      L12_2 = L3_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L10_2 = L3_2
    L9_2 = L3_2.Add
    L11_2 = A2_2
    L9_2(L10_2, L11_2)
  end
end
L0_1.subscribe_listener = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._cur_zoom
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = L2_2 + 1
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._notify_zoom_listeners
  L6_2 = L2_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.leave_zoom
    L4_3 = L2_2
    L2_3(L3_3, L4_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  A0_2._cur_zoom = L3_2
  L4_2 = true
  if A1_2 ~= nil then
    L4_2 = A1_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._notify_zoom_listeners
  L7_2 = L3_2
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.enter_zoom
    L4_3 = L3_2
    L5_3 = L4_2
    L2_3(L3_3, L4_3, L5_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_play_switch_hint
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormatWithTag
  L6_2 = G
  L6_2 = L6_2.LogTag
  L6_2 = L6_2.Navigation
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "----------->>> to_next_zoom: %s to %s"
  L9_2 = L2_2
  L10_2 = L3_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.to_next_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_zoom
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = L1_2 - 1
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._notify_zoom_listeners
  L5_2 = L1_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.leave_zoom
    L4_3 = L1_2
    L2_3(L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  A0_2._cur_zoom = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._notify_zoom_listeners
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.enter_zoom
    L4_3 = L2_2
    L2_3(L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_play_switch_hint
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._cur_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._clear_zoom_target_except_zoom1
    L3_2(L4_2)
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Navigation
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "----------->>> to_prev_zoom: %s to %s"
  L7_2 = L1_2
  L8_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.to_prev_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._cur_zoom
  L4_2 = A0_2
  L3_2 = A0_2._notify_zoom_listeners
  L5_2 = A0_2._cur_zoom
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.leave_zoom
    L4_3 = A0_2._cur_zoom
    L2_3(L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  A0_2._cur_zoom = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._notify_zoom_listeners
  L5_2 = A0_2._cur_zoom
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.enter_zoom
    L4_3 = A0_2._cur_zoom
    L2_3(L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  if not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_play_switch_hint
    L5_2 = L2_2
    L6_2 = A0_2._cur_zoom
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._clear_zoom_target_except_zoom1
  L3_2(L4_2)
end
L0_1.to_first_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_in_special_zoom
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_special_zoom_navigation_target
    L3_2 = A0_2._special_zoom_navigation_target
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_zoom_navigation_target
    L3_2 = A0_2._cur_zoom
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_cur_zoom_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L2_2 = L2_2.currentSelectedGameObject
    if A1_2 ~= L2_2 then
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.EventSystem
      L2_2 = L2_2.current
      L3_2 = L2_2
      L2_2 = L2_2.SetSelectedGameObject
      L4_2 = nil
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.EventSystem
      L2_2 = L2_2.current
      L3_2 = L2_2
      L2_2 = L2_2.SetSelectedGameObject
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._zoom_targets
      L3_2 = L2_2
      L2_2 = L2_2.Add
      L4_2 = A0_2._cur_zoom
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._zoom_targets
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2._cur_zoom
    L5_2 = nil
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_cur_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_in_special_zoom
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_special_zoom_navigation_target
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._zoom_targets
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2._cur_zoom
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.save_cur_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    L3_2 = A0_2._zoom_targets
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.save_navigation_target_by_zoom = L3_1
function L3_1(A0_2, A1_2)
  A0_2._cur_zoom = A1_2
end
L0_1.set_cur_zoom_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_zoom
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == L2_2 and L1_2
  return L1_2
end
L0_1.is_out_most_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_zoom_navigation_target
  L3_2 = A0_2._cur_zoom
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = nil
    return L2_2
  else
    return L1_2
  end
end
L0_1.get_cur_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_zoom
  return L1_2
end
L0_1.get_cur_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_zoom
  L1_2 = L1_2 + 1
  return L1_2
end
L0_1.get_next_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_zoom
  L1_2 = L1_2 - 1
  return L1_2
end
L0_1.get_prev_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_can_to_special_zoom
  return L1_2
end
L0_1.is_can_to_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_can_to_special_zoom = A1_2
end
L0_1.set_can_to_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_special_zoom
  return L1_2
end
L0_1.is_in_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_in_special_zoom = A1_2
end
L0_1.set_in_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._special_zoom_navigation_target
  return L1_2
end
L0_1.get_special_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  A0_2._special_zoom_navigation_target = A1_2
end
L0_1.save_special_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L2_2 = L2_2.currentSelectedGameObject
    if L2_2 ~= A1_2 then
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.EventSystem
      L2_2 = L2_2.current
      L3_2 = L2_2
      L2_2 = L2_2.SetSelectedGameObject
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      A0_2._special_zoom_navigation_target = A1_2
    end
  end
end
L0_1.set_special_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._listener_dict
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._listener_dict
    L3_2 = L2_2
    L2_2 = L2_2.Value
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1._try_get_zoom_listeners = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._try_get_zoom_listeners
  L5_2 = A0_2._cur_zoom
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.ForEach
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._notify_zoom_listeners = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._zoom_targets
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._zoom_targets
    L3_2 = L2_2
    L2_2 = L2_2.Value
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_zoom_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_zoom_navigation_target
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.clear_zoom_navigation_target
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone3
  L1_2(L2_2, L3_2)
end
L0_1._clear_zoom_target_except_zoom1 = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._zoom_targets
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._zoom_targets
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.clear_zoom_navigation_target = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._get_zoom_navigation_target
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_zoom_navigation_target
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_guide_particles
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._try_play_switch_hint = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L4_2 = L3_2
    L3_2 = L3_2.PostEvent
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_AudioManager
    L5_2 = L5_2.AudioConfig
    L5_2 = L5_2.UINavigationChangeSoundEvent
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.is_active
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.is_active
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_43
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Navigation
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "----------->>> source_object or target_object is nil"
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  do return end
  ::lbl_43::
  if A1_2 == A2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Navigation
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "----------->>> source_object == target_object"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    return
  end
  L3_2 = L2_1
  if L3_2 == false then
    return
  end
  L3_2 = A0_2._guide_particles_object
  if L3_2 then
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.destroy_object
    L5_2 = A0_2._guide_particles_object
    L3_2(L4_2, L5_2)
    A0_2._guide_particles_object = nil
  end
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.sync_load_prefab
  L5_2 = L1_1
  L6_2 = A0_2._switch_hint_root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._guide_particles_object = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.GetRectTransformPosition
  L4_2 = A1_2.transform
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._guide_particles_object
  L5_2 = L4_2
  L4_2 = L4_2.GetComponent
  L6_2 = "RectTransform"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.position = L3_2
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.get_native
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.SwitchToUILayer3
  L6_2 = A0_2._guide_particles_object
  L6_2 = L6_2.transform
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Motions
  L4_2 = L4_2.MonoEffectMotion
  L4_2 = L4_2.Get
  L5_2 = A0_2._guide_particles_object
  L5_2 = L5_2.gameObject
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2.gameObject
  L6_2 = L5_2
  L5_2 = L5_2.GetComponent
  L7_2 = "RectTransform"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.UIUtils
  L6_2 = L6_2.GetRectTransformPosition
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._guide_particles_object
  L7_2 = L7_2.transform
  L7_2 = L7_2.parent
  L8_2 = L7_2
  L7_2 = L7_2.InverseTransformPoint
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._guide_particles_object
  L8_2 = L8_2.transform
  L8_2 = L8_2.parent
  L9_2 = L8_2
  L8_2 = L8_2.InverseTransformPoint
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.Vector3
  L9_2 = L9_2.SqrMagnitude
  L10_2 = L8_2 - L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Screen
  L10_2 = L10_2.width
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Screen
  L11_2 = L11_2.width
  L10_2 = L10_2 * L11_2
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Screen
  L11_2 = L11_2.height
  L12_2 = CS
  L12_2 = L12_2.UnityEngine
  L12_2 = L12_2.Screen
  L12_2 = L12_2.height
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.GlobalVars
  L11_2 = L11_2.s_AudioManager
  L12_2 = L11_2
  L11_2 = L11_2.PostEvent
  L13_2 = CS
  L13_2 = L13_2.RPG
  L13_2 = L13_2.Client
  L13_2 = L13_2.GlobalVars
  L13_2 = L13_2.s_AudioManager
  L13_2 = L13_2.AudioConfig
  L13_2 = L13_2.UINavigationChangeSoundEvent
  L11_2(L12_2, L13_2)
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = L9_2 / L10_2
  L12_2 = L12_2 * 1.0
  L13_2 = 0.3
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = L4_2
  L12_2 = L4_2.InitEffectMotion
  L14_2 = A0_2._guide_particles_object
  L14_2 = L14_2.transform
  L15_2 = L11_2
  L16_2 = L8_2.x
  L17_2 = L8_2.y
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.SetEmissionEnable
    L1_3 = A0_2._guide_particles_object
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L4_2.onMotionEnd = L12_2
end
L0_1._create_guide_particles = L3_1
return L0_1
