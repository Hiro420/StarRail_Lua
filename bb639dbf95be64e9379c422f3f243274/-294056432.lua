local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.WorldSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.WorldSwitchDotItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_world_map_click_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._cur_show_world_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldDataConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._cur_show_world_id
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.WorldName
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_world_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._unlock_world_id_list
  L3_2 = #L3_2
  if 1 < L3_2 then
    L3_2 = A0_2._map_dot_list
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = {}
    A0_2._dot_data_list = L3_2
    L3_2 = ipairs
    L4_2 = A0_2._unlock_world_id_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._dot_data_list
      L10_2 = A0_2._cur_show_world_id
      L10_2 = L7_2 == L10_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = A0_2._map_dot_list
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._dot_data_list
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._map_dot_list
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.cs_list_to_table
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetUnlockedWorldIDList
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._unlock_world_id_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.NodeListView
  L5_2 = G
  L5_2 = L5_2.NodeListViewBinder
  L6_2 = "Ui.Map.RegionalDetail.WorldSwitchDotItem"
  L7_2 = "Ui.Map.RegionalDetail.WorldSwitchDotItemBinder"
  L8_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._map_dot_list = L2_2
  L2_2 = A0_2._map_dot_list
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_dot
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_left_arrow
  L5_2 = A0_2._on_btn_left_arrow_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_right_arrow
  L5_2 = A0_2._on_btn_right_arrow_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_left_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._unlock_world_id_list
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_right_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._unlock_world_id_list
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_world_id_index
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.MathUtils
  L2_2 = L2_2.get_pre_circular_index
  L3_2 = L1_2
  L4_2 = A0_2._unlock_world_id_list
  L4_2 = #L4_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L1_2 == L2_2 then
    return
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = A0_2._unlock_world_id_list
    L3_2 = L3_2[L2_2]
  end
  L4_2 = A0_2._callback_func
  if L4_2 and L3_2 then
    L4_2 = A0_2._callback_func
    L5_2 = A0_2._callback_obj
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_btn_left_arrow_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_world_id_index
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.MathUtils
  L2_2 = L2_2.get_next_circular_index
  L3_2 = L1_2
  L4_2 = A0_2._unlock_world_id_list
  L4_2 = #L4_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L1_2 == L2_2 then
    return
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = A0_2._unlock_world_id_list
    L3_2 = L3_2[L2_2]
  end
  L4_2 = A0_2._callback_func
  if L4_2 and L3_2 then
    L4_2 = A0_2._callback_func
    L5_2 = A0_2._callback_obj
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_btn_right_arrow_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._unlock_world_id_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cur_show_world_id
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_cur_world_id_index = L1_1
return L0_1
