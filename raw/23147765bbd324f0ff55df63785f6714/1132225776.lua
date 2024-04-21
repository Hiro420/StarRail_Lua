local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.CommonSortDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SelectSortNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SelectSortNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonSortDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TeamMemberOrderDialog_Title"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  if A1_2 ~= nil then
    A0_2._current_sort_type = A1_2
  else
    L3_2 = AvatarSortType
    L3_2 = L3_2.Level
    A0_2._current_sort_type = L3_2
  end
  A0_2._sort_type_id_list = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CommonSortDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._on_confirm_order = nil
  L1_2 = {}
  A0_2.order_data_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._confirm_callBack = A1_2
end
L0_1.register_confirm_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_order_data_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_order_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_filter_dialog_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.order_data_list = L1_2
  L1_2 = pairs
  L2_2 = A0_2._sort_type_id_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L6_2.sort_type = L4_2
    L6_2.name = L5_2
    L7_2 = A0_2._current_sort_type
    L7_2 = L4_2 == L7_2
    L6_2.isSelected = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.order_data_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._get_order_data_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._current_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_order_data_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_order_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.order_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SelectSortNode
    L8_2 = G
    L8_2 = L8_2.SelectSortNodeBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2.order_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._on_order_click
  L10_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_order_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._confirm_callBack
  if L1_2 then
    L1_2 = A0_2._confirm_callBack
    L2_2 = A0_2._current_sort_type
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm_click = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._confirm_callBack = nil
end
L0_1._on_dispose = L2_1
return L0_1
