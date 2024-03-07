local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapFloorPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapFloorItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapFloorPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_btn_click_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_btn_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Map.RegionalDetail.MapFloorItem"
  L6_2 = "Ui.Map.RegionalDetail.MapFloorItemBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._map_floor_list = L1_2
  L1_2 = A0_2._map_floor_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2.map_entry_row = A1_2
  A0_2._cur_map_layer_nums = A2_2
  A0_2._show_layer = A3_2
  A0_2._player_layer = A4_2
  L5_2 = {}
  A0_2._map_floor_data_list = L5_2
  L5_2 = A0_2._cur_map_layer_nums
  if 1 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.safe_set_active
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.map_entry_row
    L5_2 = L5_2.FloorID
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MazeFloorExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._cur_map_layer_nums
    L8_2 = 1
    L9_2 = -1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = {}
      L11_2.map_entry_row = A1_2
      L11_2.show_layer = A3_2
      L11_2.player_layer = A4_2
      L11_2.map_item_layer = L10_2
      L12_2 = L6_2.MapLayerNameList
      L13_2 = L10_2 - 1
      L12_2 = L12_2[L13_2]
      L11_2.map_item_name = L12_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._map_floor_data_list
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
    L7_2 = A0_2._map_floor_list
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._map_floor_data_list
    L10_2 = A0_2._on_btn_root_click
    L11_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.get_next_circular_index
  L2_2 = A0_2._show_layer
  L3_2 = A0_2._cur_map_layer_nums
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._callback_func
  if L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_gamepad_click = L1_1
return L0_1
