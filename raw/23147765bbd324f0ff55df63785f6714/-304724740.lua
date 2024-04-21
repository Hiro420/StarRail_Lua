local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Graffiti/GraffitiActivityPixelPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PagePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.vertical_submemu_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/ResBarArea/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_activity_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_bar_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/LeftTabArea/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
end
L0_1._on_bind = L1_1
return L0_1
