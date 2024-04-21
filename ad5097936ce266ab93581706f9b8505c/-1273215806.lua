local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LoginDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Dev/UiLoginDialog.prefab"
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
  L4_2 = "GameServerBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_game_server = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "GameDevBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_game_develop = L1_2
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
  L4_2 = "SDKLoginBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_sdk_login = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ClearCacheBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_clear_cache = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_game_develop
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_horizontal
  L3_2 = A0_2.btn_game_server
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_game_develop
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list_vertical
  L3_2 = A0_2.btn_game_server
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
