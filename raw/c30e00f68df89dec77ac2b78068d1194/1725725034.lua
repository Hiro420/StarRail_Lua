local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendAddTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Widget/FriendAddPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Contents/SearchPanel/SearchFrame/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_uid = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/SearchPanel/SearchBtn/BtnCommonRedMiddle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_search = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/SearchPanel/SearchFrame/InputField/Root/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_delete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/SearchPanel/SearchFrame/BtnCopy"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_paste = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/ListInfoPanel/SpeedList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.player_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Contents/SearchPanel/SearchBtn/BtnCommonRedMiddle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_search = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/SearchPanel/SearchBtn/BtnCommonRedMiddle/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tip_search = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/SpeedList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ListInfoPanel/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UnSelected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
