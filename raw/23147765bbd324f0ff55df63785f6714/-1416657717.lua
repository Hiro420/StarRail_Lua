local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AsbDebugDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Dev/Debug/AsbDebugDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "DetailWindow/Window/OkBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_ok = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "DetailWindow/Window/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.InputFieldType
  L3_2 = A0_2.root
  L4_2 = "DetailWindow/Window/InputArea/TextItem0/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.inputfield_asbpath = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.InputFieldType
  L3_2 = A0_2.root
  L4_2 = "DetailWindow/Window/InputArea/TextItem1/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.inputfield_assetpath = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.btn_ok = nil
  A0_2.btn_close = nil
  A0_2.inputfield_asbpath = nil
  A0_2.inputfield_assetpath = nil
end
L0_1._on_dispose = L1_1
return L0_1
