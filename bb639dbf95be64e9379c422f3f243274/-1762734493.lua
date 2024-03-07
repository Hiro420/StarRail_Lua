local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapFloorItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapFloorItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.StoryLineModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.IsClearSelectedByInputSwitched = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._map_floor_data = A1_2
  A0_2._callBackFunc = A2_2
  A0_2._callBackObj = A4_2
  L5_2 = A1_2.show_layer
  L6_2 = A1_2.map_item_layer
  L5_2 = L5_2 == L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.SetChecked
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.get_blackboard
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.query
  L8_2 = "StoryLineID"
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = G
  L7_2 = L7_2.MapUtil
  L7_2 = L7_2.is_in_current_entrance
  L8_2 = A1_2.map_entry_row
  L8_2 = L8_2.ID
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_player_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2 or L10_2
  if L7_2 then
    L10_2 = A1_2.map_item_layer
    L11_2 = A1_2.player_layer
    L10_2 = L10_2 == L11_2
  end
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_floor
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = A1_2.map_item_name
  L8_2(L9_2, L10_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callBackFunc
  if L1_2 then
    L1_2 = A0_2._map_floor_data
    L1_2 = L1_2.map_item_layer
    L2_2 = A0_2._map_floor_data
    L2_2 = L2_2.show_layer
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._callBackFunc
      L2_2 = A0_2._callBackObj
      L3_2 = A0_2._map_floor_data
      L3_2 = L3_2.map_item_layer
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_root_click = L2_1
return L0_1
