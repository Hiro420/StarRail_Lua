local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardTabGroupListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TopTabArea/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TopTabArea/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_gamepad_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "TopTabArea/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_btn_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "TopTabArea/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_tip_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TopTabArea/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_gamepad_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "TopTabArea/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "TopTabArea/KeyMapInfo_Right"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_tip_next = L1_2
  L1_2 = {}
  L2_2 = A0_2.mono_in_ctrl_btn_prev
  L3_2 = A0_2.mono_in_ctrl_btn_next
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.mono_in_ctrl_btn_list_need_enable = L1_2
  L1_2 = {}
  L2_2 = A0_2.mono_in_ctrl_tip_prev
  L3_2 = A0_2.mono_in_ctrl_tip_next
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.mono_in_ctrl_tip_list_need_enable = L1_2
end
L0_1._on_bind = L1_1
return L0_1
