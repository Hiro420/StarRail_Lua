local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapContainerPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.view_transform = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.content_rect_transform = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "NetStatusPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_net_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/Map"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/Map/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/Mist"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_sections = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/Icons/RangeMission"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_range_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/Icons"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_icons = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/Icons/MapEntryIcons"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_sub_map_icons = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/IconSelected"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/IconSelected/MapSelected"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_icon_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Content/IconSelected/MapSelected"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_icon_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/DirectionIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_player_camera_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/PlayerIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_player_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Content/PlayerIcon/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_player_icon_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/MapPlayerTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_map_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/MapPlayerTips/TargetIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_map_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/MapPlayerTips/MissionNaviHint_Common"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trace_mission_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/MapPlayerTips/WayPointArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_map_tip_arrow = L1_2
  L1_2 = A0_2.node_net_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
