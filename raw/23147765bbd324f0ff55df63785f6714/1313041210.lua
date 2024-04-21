local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMapTestSelectDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Dev/MazeMapTestSelectDialog.prefab"
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
  L4_2 = "BtnBegin"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_begin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "LevelSelection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_plane = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "FloorSelection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "PlaneInput/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_plane = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "FloorInput/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Player1Selection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_team_member1 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
