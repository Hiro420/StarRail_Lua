local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapSwitchPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[0] = "RegionMapSwithTag_2Left"
L1_1[1] = "RegionMapSwithTag_2Right"
L2_1 = {}
L2_1[0] = "BtnSwitch_ToLeft"
L2_1[1] = "BtnSwitch_ToRight"
L3_1 = 0.5
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._cur_show_world_id = A1_2
  A0_2._regional_map_space_type = A2_2
  A0_2._callBackFunc = A3_2
  A0_2._callBackObj = A4_2
  L5_2 = {}
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.WorldDataConfigExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = 0
    L8_2 = L6_2.MapSpaceTypeList
    L8_2 = L8_2.Length
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = {}
      L12_2 = L6_2.MapSpaceTypeList
      L12_2 = L12_2[L10_2]
      L11_2.map_space_type = L12_2
      L11_2.cur_show_world_id = A1_2
      L11_2.regional_map_space_type = A2_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L5_2
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
    L7_2 = L5_2[1]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MapSpaceTypeConfigExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.map_space_type
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_left
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetTextID
    L11_2 = L8_2.Name
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2._async_load_sprite_to
    L11_2 = A0_2._binder
    L11_2 = L11_2.image_left
    L12_2 = L8_2.Icon
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L5_2[2]
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.MapSpaceTypeConfigExcelTable
    L10_2 = L10_2.GetData
    L11_2 = L9_2.map_space_type
    L10_2 = L10_2(L11_2)
    L11_2 = A0_2._binder
    L11_2 = L11_2.text_right
    L12_2 = L11_2
    L11_2 = L11_2.SafeSetTextID
    L13_2 = L10_2.Name
    L11_2(L12_2, L13_2)
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A0_2._binder
    L13_2 = L13_2.image_right
    L14_2 = L10_2.Icon
    L11_2(L12_2, L13_2, L14_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2._get_index_by_map_space_type
  L9_2 = A0_2._regional_map_space_type
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.animation_tag
  L9_2 = L8_2
  L8_2 = L8_2.Play
  L10_2 = L1_1[L7_2]
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.animator_switch
  L9_2 = L8_2
  L8_2 = L8_2.Play
  L10_2 = L2_1[L7_2]
  L8_2(L9_2, L10_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_switch_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._btn_mutex = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_next_map_space_type
    L0_3, L1_3 = L0_3(L1_3)
    L2_3 = A0_2._callBackFunc
    if L2_3 then
      L2_3 = A0_2._callBackFunc
      L3_3 = A0_2._callBackObj
      L4_3 = L0_3
      L2_3(L3_3, L4_3)
      L2_3 = A0_2._binder
      L2_3 = L2_3.animation_tag
      L3_3 = L2_3
      L2_3 = L2_3.Play
      L4_3 = L1_1[L1_3]
      L2_3(L3_3, L4_3)
      L2_3 = A0_2._binder
      L2_3 = L2_3.animator_switch
      L3_3 = L2_3
      L2_3 = L2_3.Play
      L4_3 = L2_1[L1_3]
      L2_3(L3_3, L4_3)
    end
  end
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_switch_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_show_world_id
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.MapSpaceTypeList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.MapSpaceTypeList
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._regional_map_space_type
    if L6_2 == L7_2 then
      L7_2 = L1_2.MapSpaceTypeList
      L7_2 = L7_2.Length
      L7_2 = L7_2 - 1
      if L5_2 < L7_2 then
        L7_2 = L1_2.MapSpaceTypeList
        L8_2 = L5_2 + 1
        L7_2 = L7_2[L8_2]
        L8_2 = L5_2 + 1
        return L7_2, L8_2
      else
        L7_2 = L1_2.MapSpaceTypeList
        L7_2 = L7_2[0]
        L8_2 = 0
        return L7_2, L8_2
      end
    end
  end
end
L0_1._get_next_map_space_type = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldDataConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._cur_show_world_id
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.MapSpaceTypeList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.MapSpaceTypeList
    L7_2 = L7_2[L6_2]
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1._get_index_by_map_space_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._btn_mutex
  L1_2(L2_2)
  A0_2._btn_mutex = nil
end
L0_1._on_dispose = L4_1
return L0_1
