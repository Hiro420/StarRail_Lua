local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideTextPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_config
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L6_2 = L1_2
  L5_2 = L1_2.GetTextPath
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.text_content = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoInControlTip
  L6_2 = L1_2
  L5_2 = L1_2.GetKeyMapPath
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.incontrol_tip = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L5_2 = L1_2
  L4_2 = L1_2.GetContentPath
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.node_content = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "OffsetRoot/Root/KeyMapHIntInfo"
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.node_action_hint = L2_2
end
L0_1._on_bind = L1_1
return L0_1
