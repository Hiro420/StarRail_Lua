local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAtlasMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "PanelContent/ListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_collection = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PanelContent/FuncionPanel/AreaTabList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_area_tab_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PanelContent/FuncionPanel/AreaTabList/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_area_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PanelContent/FuncionPanel/CollectionReward"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_collection_reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PanelContent/FuncionPanel/CollectionReward/CollectionPanel/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.num_quest_current = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PanelContent/FuncionPanel/CollectionReward/CollectionPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.num_quest_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PanelContent/FuncionPanel/AvatarTitlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_title_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PanelContent/FuncionPanel/CollectionReward/CollectionPanel/DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_progress = L1_2
end
L0_1._on_bind = L1_1
return L0_1
