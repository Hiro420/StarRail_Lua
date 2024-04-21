local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryActivityPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/FantasticStory/FantasticStoryMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoTabControl
  L4_2 = "Root/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_control_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/LimitMissionListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_chapter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/AnecdoteListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_paragraph = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnBuffBook"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buff_page = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnPanel/Left/Btn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_special_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnPanel/BtnBuffBook/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot_btn_buff_page = L1_2
end
L0_1._on_bind = L1_1
return L0_1
