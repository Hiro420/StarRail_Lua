local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideTalkDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_guide_config
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetPrefabPath
  return L2_2(L3_2)
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GuideTalkPanel
  L4_2 = G
  L4_2 = L4_2.GuideTalkPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_guide_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PointerRoot/Content/KeyMapHIntInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_hint = L1_2
  L1_2 = A0_2.panel_guide_talk
  L2_2 = L1_2
  L1_2 = L1_2.get_content_root
  L1_2 = L1_2(L2_2)
  A0_2.node_content = L1_2
end
L0_1._on_bind = L1_1
return L0_1
