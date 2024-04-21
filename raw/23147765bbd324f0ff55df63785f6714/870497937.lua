local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LoginSettingsPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Settings/SettingsPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SafeAreaPreviewPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_safearea_preview_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
end
L0_1._bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopTabArea/ScrollView/Viewport/Content/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TopTabArea"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = L1_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L6_2 = "Root/TopTabArea/KeyMapInfo/Root/CopyLayout/Left/GamepadBtn"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.btn_select_left = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L6_2 = "Root/TopTabArea/KeyMapInfo/Root/CopyLayout/Right/GamepadBtn"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.btn_select_right = L3_2
end
L0_1._on_pc_bind = L2_1
return L0_1
