local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistAvatarSelectDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/PlayerInfo/MemberListDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Contents/RightPanel/BtnComFirst_Reverse"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/BtnComFirst_Reverse/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/RightPanel/SupportPanel/SupportReward/BtnList/BtnReceiveSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_assist_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/SupportPanel/SupportReward/RewardText/TabTitle/NumText/Text2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/SupportPanel/SupportReward/RewardText/TabTitle/NumText/Text4"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/SupportPanel/SupportReward/BtnList/BtnReceiveSecond/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AssistAvatarSelectPanel
  L4_2 = G
  L4_2 = L4_2.AssistAvatarSelectPanelBinder
  L5_2 = "Contents/CardPanel/LeftPanel/MemberList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AssistAvatarPanel
  L4_2 = G
  L4_2 = L4_2.AssistAvatarPanelBinder
  L5_2 = "Contents/RightPanel/SupportPanel/SupportPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_assist_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/SupportPanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/DisplayAvatarPanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
