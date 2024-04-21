local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDetailSingleInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDetailSingleInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_close_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dimension_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_dimension_update
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._close_callback = A1_2
end
L0_1.register_close_detail_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._dimension_data_list = A1_2
  A0_2._selected_dimension_index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PlayerHeroPathDetailSingleInfoPanel
    L8_2 = G
    L8_2 = L8_2.PlayerHeroPathDetailSingleInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._dimension_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_dimension_update = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dimension_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._dimension_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dimension_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_dimension_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = A0_2._selected_dimension_index
  L3_2 = L3_2 - 1
  L1_2(L2_2, L3_2)
end
L0_1._refresh_scrollview = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback
    L1_2()
  end
end
L0_1._on_close_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._close_callback = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_dimension_list
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_dimension_list
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
