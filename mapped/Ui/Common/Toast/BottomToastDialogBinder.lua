local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BottomToastDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/RogueCommonHintDialog.prefab"
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
  L3_2 = L3_2.LocalizedText
  L4_2 = "AreaInfoPanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaInfoPanel/CirclePanel/IconPanel/AvatarIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AreaInfoPanel/CirclePanel/IconPanel/AvatarIcon/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaInfoPanel/CirclePanel/IconPanel/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AreaInfoPanel/CirclePanel/IconPanel/ItemIcon/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
