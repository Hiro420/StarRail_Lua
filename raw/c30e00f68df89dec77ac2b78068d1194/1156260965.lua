local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamListDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Team/TeamListDialog.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnConRapid"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quick_edit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BtnPanel/BtnConfirm/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/LeftPanel/Root/MemberList/TeamListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.team_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnPanel/LabelInTeam"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activated = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btns = L1_2
end
L0_1._on_bind = L1_1
return L0_1
