local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScreenTransferTextPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "SplashTalk/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "SplashTalk/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_txt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TextDialogue/IconWait"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_wait = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TextDialogue/IconNext"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_next = L1_2
end
L0_1._on_bind = L1_1
return L0_1
