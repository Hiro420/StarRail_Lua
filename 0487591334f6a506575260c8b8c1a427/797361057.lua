local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerButtonPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Debug.ServerSelect.ServerSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Dev/ServerSelectDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L3_2 = L3_2.Button
  L4_2 = "ServerList/BottomBtnList/OKBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_login = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "ServerList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_server_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "ServerList/BottomBtnList/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_search = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ServerList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_server_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ServerList/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ServerList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ServerSelectPanel
  L4_2 = G
  L4_2 = L4_2.ServerSelectPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.server_select_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
