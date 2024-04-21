local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.DisplayAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.DisplayAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistAvatarSinglePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DisplayAvatarIconPanel
  L4_2 = G
  L4_2 = L4_2.DisplayAvatarIconPanelBinder
  L5_2 = "Root/AvatarItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarItemEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarItemEmpty/Root/IconAdd"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarItemEmpty/Root/IconNoAdd"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_add = L1_2
end
L0_1._on_bind = L1_1
return L0_1
