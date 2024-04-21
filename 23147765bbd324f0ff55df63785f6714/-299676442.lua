local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.DisplayAvatarListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.DisplayAvatarListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.AssistAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerInfoAvatarTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/PlayerInfo/Widget/AvatarPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DisplayAvatarListPanel
  L4_2 = G
  L4_2 = L4_2.DisplayAvatarListPanelBinder
  L5_2 = "DisplayAvatarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_diplay_avatar_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AssistAvatarPanel
  L4_2 = G
  L4_2 = L4_2.AssistAvatarPanelBinder
  L5_2 = "SupportPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_assist_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RewardBox/BtnReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_assist_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardBox/BtnReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SupportPanel/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot_assist = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
