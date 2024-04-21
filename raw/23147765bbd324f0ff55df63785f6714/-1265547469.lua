local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendListTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Widget/MyFriendPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/StarFriendNumPanel/Content/TextPanel/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_friend_mark_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/StarFriendNumPanel/Content/TextPanel/NumPanel/Total"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_friend_mark_max = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/BtnPanel/FriendManagement/BtnComFrameText3A_WhiteBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_enter_manager = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/BtnPanel/QuitManagement/BtnComFrameText3A_WhiteBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit_manager = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/ListInfoPanel/SpeedList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.friend_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/PSNEmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_ps_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/SpeedList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/StarFriendNumPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_star_friend_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/SpeedList/TopPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/SpeedList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UnSelected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
