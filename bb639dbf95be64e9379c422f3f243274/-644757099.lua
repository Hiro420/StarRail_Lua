local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyEventOptionalTitlePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/QuestionPanel/TitlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/QuestionPanel/TitlePanelSp"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title_sp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/QuestionPanel/TitlePanel/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/QuestionPanel/TitlePanelSp/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title_sp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FrameBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FrameBgSp"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg_sp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/QuestionPanel/OptionTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_option_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/QuestionPanel/OptionTitleSp"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_option_title_sp = L1_2
end
L0_1._on_bind = L1_1
return L0_1
