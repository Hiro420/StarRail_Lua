local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentSubItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_new = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NewCommentHint/Point/TextPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_reply_income = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UserInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_user_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ReplyPanel/ReplyText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_comment_desc = L1_2
end
L0_1._on_bind = L1_1
return L0_1
