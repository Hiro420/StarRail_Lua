local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeShortCutHintPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_full_screen_hint
  if L1_2 then
    L1_2 = "UI/CommonKits/KeyMap/ShortCutHintFullScreenPanel.prefab"
    return L1_2
  else
    L1_2 = A0_2._dialog_hint_prefab_path
    if not L1_2 then
      L1_2 = "UI/CommonKits/KeyMap/ShortCutHintPanelLight.prefab"
    end
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIPartialBlur
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.blur_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dialog = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_contents = L1_2
  L1_2 = A0_2.node_bg
  if L1_2 then
    L1_2 = A0_2.node_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
