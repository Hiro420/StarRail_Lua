local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubblePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubblePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MessageHistoryItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarPhoto/Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_sender = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChatBubblePanel
  L4_2 = G
  L4_2 = L4_2.ChatBubblePanelBinder
  L5_2 = "BoxContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bubble = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxEntering"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_writing = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "BoxEntering"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_writing = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_txt = L1_2
end
L0_1._on_bind = L1_1
return L0_1
