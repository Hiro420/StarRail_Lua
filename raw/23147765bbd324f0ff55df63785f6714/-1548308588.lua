local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerInfoCollectionTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/PlayerInfo/Widget/CollectionPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Avatar/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_avatar_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/LightCone/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_lightcone_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Achievement/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_achievement_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Disc/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_disc_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Bookshelve/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_book_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ShieldedTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_setting = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ShieldedTip/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_setting_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ShieldedTip/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_setting_status = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
