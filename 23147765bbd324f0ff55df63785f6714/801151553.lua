local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapSwitchItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapSwitchItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A1_2.map_space_type
  A0_2._map_space_type = L5_2
  L5_2 = A1_2.cur_show_world_id
  A0_2._cur_show_world_id = L5_2
  L5_2 = A1_2.regional_map_space_type
  A0_2._regional_map_space_type = L5_2
  A0_2._callBackFunc = A2_2
  A0_2._callBackObj = A4_2
  L5_2 = A0_2._map_space_type
  L6_2 = A0_2._regional_map_space_type
  L5_2 = L5_2 == L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.SetChecked
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MapSpaceTypeConfigExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A0_2._map_space_type
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_name
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L6_2.Name
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.image_icon
  L10_2 = L6_2.Icon
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callBackFunc
  if L1_2 then
    L1_2 = A0_2._callBackFunc
    L2_2 = A0_2._callBackObj
    L3_2 = A0_2._map_space_type
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_click = L1_1
return L0_1
