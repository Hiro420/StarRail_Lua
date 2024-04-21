local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordHonorInfoRowsPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.PunkLordHonorInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.PunkLordHonorInfoRowPanelBinder
  L6_2 = "HeadList/AntiVirusRecordTitle1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.PunkLordHonorInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.PunkLordHonorInfoRowPanelBinder
  L6_2 = "HeadList/AntiVirusRecordTitle2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.PunkLordHonorInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.PunkLordHonorInfoRowPanelBinder
  L6_2 = "HeadList/AntiVirusRecordTitle3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.panel_honors = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "HeadList/AntiVirusRecordTitle1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "HeadList/AntiVirusRecordTitle2"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L6_2 = "HeadList/AntiVirusRecordTitle3"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2.btn_list
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2.btn_list
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2.btn_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_bind = L1_1
return L0_1
