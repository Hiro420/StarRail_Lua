local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeRewardPreviewDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Abyss/AbyssPassRewardListDialog.prefab"
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
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/TabBox/TopTabAreaMiddleText/ScrollView/TabControl/TabStar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_target_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/TabBox/TopTabAreaMiddleText/ScrollView/TabControl/TabPassLv"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_finish_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_item_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/TabBox/TopTabAreaMiddleText/ScrollView/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/TabBox/TopTabAreaMiddleText/ScrollView/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
end
L0_1._on_bind = L1_1
return L0_1
