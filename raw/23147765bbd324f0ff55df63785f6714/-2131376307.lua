local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MailInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Mail/Widget/MailInfoRow.prefab"
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
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/Title/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/MailOwner/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_mail_owner = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MailRewardContainer/MailIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mail_icon_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MailRewardContainer/CommonItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_icon_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MailRewardContainer/MailIconPanel/IconMail"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_mail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MailRewardContainer/MailIconPanel/IconMailOpen"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_mail_open = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Contents/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Favorites"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_star = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
end
L0_1._on_bind = L1_1
