local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AddFriendPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/Text2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnList/BtnAdd/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerPhotoPanel
  L4_2 = G
  L4_2 = L4_2.PlayerPhotoPanelBinder
  L5_2 = "AvatarHead/AvatarPhoto"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.player_photo_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
