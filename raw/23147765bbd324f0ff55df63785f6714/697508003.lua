local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutWheelDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/CommonKits/KeyMap/ShortCutWheelDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MiddlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mid_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/HintPanel/Back"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_back_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_panel = L1_2
  L1_2 = A0_2.node_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
