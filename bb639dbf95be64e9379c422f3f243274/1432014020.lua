local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightEatFoodDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ChallengePanel/ConsumableUseDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LeftPanel/TopPlane/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LeftPanel/BlurRoot/ListPanel/BtnList/BtnComFirst"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_use = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/BlurRoot/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "LeftPanel/BlurRoot/ListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.food_scroll_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LeftPanel/BlurRoot/ListPanel/BtnList/BtnComFirst/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_use = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LeftPanel/BlurRoot/ListPanel/InfoPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_food_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LeftPanel/BlurRoot/ListPanel/InfoPanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_food_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/BlurRoot/ListPanel/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_food = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/BlurRoot/ListPanel/InfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/BlurRoot/ListPanel/BtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "LeftPanel/BlurRoot/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group = L1_2
end
L0_1._on_bind = L1_1
return L0_1
