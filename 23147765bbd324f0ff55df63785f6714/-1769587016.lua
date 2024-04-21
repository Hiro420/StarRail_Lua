local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaNormalTrialAvatarTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarlnfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanel/RewardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Root/RightPanel/RewardPanel/ItemList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loop_grid_view_reward = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.tab_btn_root
  L3_2 = "Finished"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finish = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon/TabIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon_select = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "UnSelected/Icon/TabIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon_unselect = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.tab_btn_root
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot = L1_2
end
L0_1._on_tab_btn_bind = L2_1
return L0_1
