local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Billboard.BillboardWayPointPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.Waypoint.WayPointUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BillboardWayPointPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "NPC_Billboard_IconContainer_Scale"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIContextAssetLoader
  L1_2 = L1_2()
  A0_2._AssetLoader = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BillboardWayPointPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._is_active = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._icon_size = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_transform_root
  L1_2 = L1_2.anchoredPosition
  A0_2._ori_arch_pos = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetLateTickCallback
  L3_2 = A0_2._on_mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._waypoint_config
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_icon
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_is_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._waypoint_config = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_is_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_waypoint_config = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._waypoint_config
  return L1_2
end
L0_1.get_cur_waypoint_config = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_distance
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_icon
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._waypoint_config
  if L1_2 ~= nil then
    L1_2 = A0_2._waypoint_config
    L1_2 = L1_2.IconPath
    if L1_2 then
      L1_2 = A0_2._AssetLoader
      L2_2 = L1_2
      L1_2 = L1_2.AsyncLoadSpriteTo
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_icon
      L4_2 = A0_2._waypoint_config
      L4_2 = L4_2.IconPath
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._refresh_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_dis
  if L1_2 ~= nil then
    L1_2 = A0_2._arrow_show
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.WayPointUtils
  L1_2 = L1_2.get_player_GO
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = A0_2._waypoint_config
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_dis
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = G
      L4_2 = L4_2.WayPointUtils
      L4_2 = L4_2.get_distance_text
      L5_2 = G
      L5_2 = L5_2.WayPointUtils
      L5_2 = L5_2.get_distance
      L6_2 = A0_2._waypoint_config
      L7_2 = L1_2
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_dis
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
end
L0_1._refresh_distance = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.waypoint_mono
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.waypoint_mono
  L2_2 = L1_2
  L1_2 = L1_2.UpdateSafeZone
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.waypoint_mono
  L2_2 = L1_2
  L1_2 = L1_2.RefreshWaypointItem
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_root
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_arrow
  L5_2 = A0_2._waypoint_config
  L6_2 = 0
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_MainCamera
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_dis
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.rect_transform_root
    L3_2 = A0_2._ori_arch_pos
    L2_2.anchoredPosition = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_dis
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  A0_2._arrow_show = L1_2
end
L0_1._refresh_arrow = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetLoader
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseAll
  L1_2(L2_2)
  A0_2._AssetLoader = nil
  L1_2 = L0_1.super
  L1_2 = L1_2.dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._waypoint_config
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_distance
  L1_2(L2_2)
end
L0_1._on_mono_tick = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_active
  return L1_2
end
L0_1.is_light_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._is_active
  if L2_2 == A1_2 then
    return
  end
  A0_2._is_active = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_light_weight_active
  L4_2 = A0_2._is_active
  L2_2(L3_2, L4_2)
end
L0_1.set_is_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_is_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.close = L2_1
return L0_1
