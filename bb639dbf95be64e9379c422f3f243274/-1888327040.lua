local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookContentInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/Text"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LongText
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DecoLine"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DecoLineCover"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_cover_line = L1_2
end
L0_1._on_bind = L1_1
return L0_1
