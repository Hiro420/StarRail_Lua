local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "VisitorRegisterDetailPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "Detail/NamePanel/Detail/Txt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Detail/FactionPanel/Detail/Txt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Detail/MessagePanel/Detail/ScrollView/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "PhotoPanel/AvatarPhoto/Photo/Avatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "PhotoPanel/AvatarPhoto/Photo/Avatar1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar1_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PhotoPanel/AvatarPhoto/GetOut"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_leave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EventPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_get_on_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CompensationPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_get_off_compensation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CompensationPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CompensationPanel/BtnPanel/BtnReceiveIcon1S_WhiteBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CompensationPanel/BtnPanel/BtnReceiveIcon1S_WhiteBg/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot_reward = L1_2
end
L0_1._on_bind = L1_1
return L0_1
