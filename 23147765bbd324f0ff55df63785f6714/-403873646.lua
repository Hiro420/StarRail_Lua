local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentPanelBinder"
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
  L4_2 = "PostContent/ReplyList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_view_comment = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "PostContent/ReplyList/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_trans_comment = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "PostContent/ReplyList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_trans_reply_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "PostContent/OptionList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_trans_option = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PostContent/MissionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PostContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reply_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
