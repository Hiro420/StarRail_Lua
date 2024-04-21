local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterMazeDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/MonsterOutDialogV2.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Contents/LeftPanel/WaveTabList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/LeftPanel/WaveTabList/TabList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/InfoList/Viewport/Content/MonsterList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/InfoList/Viewport/Content/RewardList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/InfoList/Viewport/Content/RewardList/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/InfoList/Viewport/Content/RewardList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/InfoList/Viewport/Content/BuffList/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/InfoList/Viewport/Content/BuffList"
  L6_2 = G
  L6_2 = L6_2.MazeAvatarDialogBuffRow
  L7_2 = G
  L7_2 = L7_2.AvatarDialogBuffRowBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.buff_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
