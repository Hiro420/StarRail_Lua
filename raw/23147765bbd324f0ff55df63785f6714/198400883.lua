local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoBanItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L1_2 = A0_2.TypeTag
  if L1_2 == "SmallItem" then
    L2_2 = A0_2
    L1_2 = A0_2._bind_small_item
    L1_2(L2_2)
  else
    L1_2 = A0_2.TypeTag
    if L1_2 == "ListItem" then
      L2_2 = A0_2
      L1_2 = A0_2._bind_list_item
      L1_2(L2_2)
    end
  end
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Empty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/StatePanel/Normal/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_aeon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/StatePanel/Normal/TextPanel/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_aeon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Normal/TagPanel/Tangle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cross_tag = L1_2
end
L0_1._bind_small_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_aeon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/TextPanel/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_aeon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TagPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cross_tag = L1_2
end
L0_1._bind_list_item = L1_1
return L0_1
