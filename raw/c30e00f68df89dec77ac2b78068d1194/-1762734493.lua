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
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L7_2 = true
  L9_2 = A0_2
  L8_2 = A0_2.get_blackboard
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.query
  L10_2 = "SubMapID"
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = 0
  end
  L10_2 = A0_2
  L9_2 = A0_2.get_blackboard
  L9_2 = L9_2(L10_2)
  L10_2 = L9_2
  L9_2 = L9_2.query
  L11_2 = "StoryLineID"
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = 0
  end
  L10_2 = A1_2.map_entry_row
  L10_2 = L10_2.ID
  if 0 < L8_2 then
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.BigMapUtils
    L11_2 = L11_2.IsPlayerInCurrentMap
    L12_2 = L10_2
    L13_2 = 0
    L14_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    if not L11_2 then
      L7_2 = false
    end
  end
  L11_2 = G
  L11_2 = L11_2.MapUtil
  L11_2 = L11_2.is_in_current_entrance
  L12_2 = A1_2.map_entry_row
  L12_2 = L12_2.ID
  L13_2 = L9_2
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L11_2 = L7_2
  end
  L12_2 = A0_2._binder
  L12_2 = L12_2.node_player_mark
  L13_2 = L12_2
  L12_2 = L12_2.SafeSetActive
  L14_2 = L11_2 or L14_2
  if L11_2 then
    L14_2 = A1_2.map_item_layer
    L15_2 = A1_2.player_layer
    L14_2 = L14_2 == L15_2
  end
  L12_2(L13_2, L14_2)
  L12_2 = A0_2._binder
  L12_2 = L12_2.text_floor
  L13_2 = L12_2
  L12_2 = L12_2.SafeSetTextID
  L14_2 = A1_2.map_item_name
  L12_2(L13_2, L14_2)
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
