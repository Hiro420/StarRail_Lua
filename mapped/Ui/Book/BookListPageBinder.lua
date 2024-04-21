local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookListPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Book/BooklistPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BookSelectedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_item_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_book_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopTabArea/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BookSelectedPanel/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BookSelectedPanel/BookListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_book_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BookSelectedPanel/BookDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_book_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BookRightDetailPanel
  L4_2 = G
  L4_2 = L4_2.BookRightDetailPanelBinder
  L5_2 = "Root/Contents/BookSelectedPanel/BookDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.book_series_detail_panel = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftTabArea/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopTabArea/ScrollView/Viewport/Content/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopTabArea/KeyMapInfo/Root/CopyLayout/Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopTabArea/KeyMapInfo/Root/CopyLayout/Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
end
L0_1._on_pc_bind = L1_1
return L0_1
