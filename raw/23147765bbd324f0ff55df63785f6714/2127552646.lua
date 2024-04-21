local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolTitlePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapSymbolTitlePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2.btn_list
    L1_2 = L1_2[1]
    L1_2 = L1_2.gameObject
    return L1_2
  end
end
L0_1.get_first_title_btn = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_btn_click_call_back = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2.entrance_id = A1_2
  A0_2.param_data_list = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_title_view
  L3_2(L4_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_title_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SetChecked
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_title_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L5_2
    L9_2 = A0_2._on_btn_root_click
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.param_data_list
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L6_2 = L5_2.show_type
      L7_2 = MapIconShowType
      L7_2 = L7_2.Teleport
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._setup_teleport_title_view
        L8_2 = L5_2
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = L5_2.show_type
        L7_2 = MapIconShowType
        L7_2 = L7_2.Mission
        if L6_2 == L7_2 then
          L7_2 = A0_2
          L6_2 = A0_2._setup_mission_title_view
          L8_2 = L5_2
          L9_2 = L4_2
          L6_2(L7_2, L8_2, L9_2)
        else
          L6_2 = L5_2.show_type
          L7_2 = MapIconShowType
          L7_2 = L7_2.MappingInfo
          if L6_2 ~= L7_2 then
            L6_2 = L5_2.show_type
            L7_2 = MapIconShowType
            L7_2 = L7_2.TrackMonster
          end
          if L6_2 == L7_2 then
            L6_2 = L5_2.map_icon_data
            L6_2 = L6_2.MappingInfoRow
            if L6_2 then
              L7_2 = A0_2
              L6_2 = A0_2._setup_mapping_info_title_view
              L8_2 = L5_2
              L9_2 = L4_2
              L6_2(L7_2, L8_2, L9_2)
            end
          end
        end
      end
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_title_list
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_navigation
    L3_2 = A0_2.btn_list
    L4_2 = NavigationType
    L4_2 = L4_2.Vertical
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_title_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MappingInfoExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.map_icon_data
  L4_2 = L4_2.MappingInfoID
  L5_2 = L1_1.PlayerData
  L5_2 = L5_2.WorldLevel
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MappingInfoExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2.map_icon_data
    L5_2 = L5_2.MappingInfoID
    L6_2 = 0
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title_name_list
    L4_2 = L4_2[A2_2]
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.Name
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.map_icon_data
    L4_2 = L4_2.MapIconType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MiniMapIconExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.IconPath
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._async_load_sprite_to
        L8_2 = A0_2._binder
        L8_2 = L8_2.image_title_icon_list
        L8_2 = L8_2[A2_2]
        L9_2 = L5_2.IconPath
        L6_2(L7_2, L8_2, L9_2)
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.btn_list
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_title_list
    L8_2 = L8_2[A2_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_title_list
    L6_2 = L6_2[A2_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_title_list
    L4_2 = L4_2[A2_2]
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_teleport_title_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = A1_2.map_icon_data
  L5_2 = L5_2.SubMissionData
  L5_2 = L5_2.Row
  L5_2 = L5_2.MainMissionID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title_name_list
  L4_2 = L4_2[A2_2]
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Row
  L6_2 = L6_2.Name
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.map_icon_data
  L4_2 = L4_2.MapIconType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MiniMapIconExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L5_2.IconPath
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.image_title_icon_list
      L8_2 = L8_2[A2_2]
      L9_2 = L5_2.IconPath
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2.btn_list
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_title_list
  L8_2 = L8_2[A2_2]
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_title_list
  L6_2 = L6_2[A2_2]
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
end
L0_1._setup_mission_title_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_name_list
  L3_2 = L3_2[A2_2]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.map_icon_data
  L5_2 = L5_2.MappingInfoRow
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.map_icon_data
  L3_2 = L3_2.MapIconType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.IconPath
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.image_title_icon_list
      L7_2 = L7_2[A2_2]
      L8_2 = L4_2.IconPath
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2.btn_list
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_title_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_title_list
  L5_2 = L5_2[A2_2]
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._setup_mapping_info_title_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.clear_cur_selected_object
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root_click = L2_1
return L0_1
