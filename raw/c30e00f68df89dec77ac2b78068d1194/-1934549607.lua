local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSingleBtnLineNodeItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "NamePanel/DecoText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_world_language_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LineRender"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_prefab_load_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_line_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_txt_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.VerticalLayoutGroup
  L4_2 = "NamePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.vertical_layout_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DotPanel/DecoDotLeft"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DotPanel/DecoDotRight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "DotPanel/DecoDotLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_left_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "DotPanel/DecoDotRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_right_dot = L1_2
end
L0_1._on_bind = L1_1
return L0_1