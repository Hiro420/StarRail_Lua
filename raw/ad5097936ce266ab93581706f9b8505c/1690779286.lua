local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GameDevDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Dev/UiGameDevDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2.btn_list_horizontal = L1_2
  L1_2 = {}
  A0_2.btn_list_vertical = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BackBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MemTestBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_mem_test = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeDevBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_dev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ClearCacheBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_clear_cache = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeTestBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_test = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ClearAssetBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_clear_asset = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RPTestBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_render_test = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "DevelopBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_develop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "DevelopQABtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_develop_qa = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_mem_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_maze_dev
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_clear_cache
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_maze_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_clear_asset
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_render_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_develop
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_develop_qa
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_mem_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_maze_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_render_test
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_maze_dev
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_develop
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_clear_cache
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_clear_asset
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_develop_qa
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
