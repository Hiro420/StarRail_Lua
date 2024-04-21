local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TopBarAreaPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaPanel/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L1_2 = A0_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.node_key_map_zoom_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaPanel/TopBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_pre_res = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ResBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.ResBarAreaPanelBinder
  L5_2 = "AreaPanel/ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_res_bar = L1_2
end
L0_1._on_bind = L1_1
return L0_1
