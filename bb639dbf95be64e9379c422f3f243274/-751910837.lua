local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldMapPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2.node_root_list = L1_2
  L1_2 = {}
  A0_2.text_list = L1_2
  L1_2 = {}
  A0_2.image_mission_list = L1_2
  L1_2 = {}
  A0_2.node_player_list = L1_2
  L1_2 = {}
  A0_2.btn_root_list = L1_2
  L1_2 = {}
  A0_2.lock_marks = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "WorldSelectPanel/WorldPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_world_panel = L1_2
  L1_2 = pairs
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.WorldIDList
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.node_root_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "WorldSelectPanel/WorldPanel/%s"
    L11_2 = L5_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.text_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Text
    L10_2 = string
    L10_2 = L10_2.format
    L11_2 = "WorldSelectPanel/WorldPanel/%s/NameTabInfo/Root/FloorText"
    L12_2 = L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.lock_marks
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "WorldSelectPanel/WorldPanel/%s/WorldMapLockPanel"
    L11_2 = L5_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.image_mission_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Image
    L10_2 = string
    L10_2 = L10_2.format
    L11_2 = "WorldSelectPanel/WorldPanel/%s/NameTabInfo/Root/IconPanel/FloorIcon"
    L12_2 = L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.node_player_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "WorldSelectPanel/WorldPanel/%s/NameTabInfo/Root/IconPanel/Player"
    L11_2 = L5_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.btn_root_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Button
    L10_2 = string
    L10_2 = L10_2.format
    L11_2 = "WorldSelectPanel/WorldPanel/%s/NameTabInfo/Root"
    L12_2 = L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2[L5_2] = L7_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trace_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel/TraceMissionTip/WayPointArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trace_mission_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel/TraceMissionTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trace_mission_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ArrowPanel/TraceMissionTip/TargetIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_trace_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ArrowPanel/TraceMissionTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_trace_mission = L1_2
end
L0_1._on_bind = L1_1
return L0_1
