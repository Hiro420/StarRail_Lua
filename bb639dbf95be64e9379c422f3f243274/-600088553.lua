local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubQuestTreasurePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/RewardItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BoxInfo/TextPanel/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_treasure_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BoxInfo/TextPanel/TextDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_treasure_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/TextPanel/TextDesc"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BoxInfo/TextPanel/BoxTotal/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.num_current = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BoxInfo/TextPanel/BoxTotal/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.num_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.AUiProgressBar
  L4_2 = "Root/BoxInfo/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/StatePanel/InProgress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_inprogress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/StatePanel/Done"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_done = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/StatePanel/Collect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxInfo/StatePanel/Collect/BtnReceiveFirst/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_red_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BoxInfo/StatePanel/Collect/BtnReceiveFirst"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/BoxInfo/StatePanel/Collect/BtnReceiveFirst/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_get_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/BoxInfo/StatePanel/Collect/BtnReceiveFirst"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_get = L1_2
end
L0_1._on_bind = L1_1
return L0_1
