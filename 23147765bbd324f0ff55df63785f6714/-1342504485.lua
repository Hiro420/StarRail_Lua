local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.RegionalDetailItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalDetailItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.StoryLineModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_in_special_zoom
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_out_most_zoom
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_btn_root_click
        L0_3(L1_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_symbol
  return L1_2
end
L0_1.get_mission_tip_transform = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MapEntryExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2.entrance_id
  L4_2 = L4_2(L5_2)
  A0_2._map_entry_row = L4_2
  A0_2._cur_select_map_entry_data = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AreaMapConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._map_entry_row
  L5_2 = L5_2.ID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A3_2 or L5_2
  if A3_2 then
    L5_2 = A3_2.ID
    L6_2 = A0_2._map_entry_row
    L6_2 = L6_2.ID
    L5_2 = L5_2 == L6_2
  end
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
  L7_2 = A0_2._map_entry_row
  L7_2 = L7_2.ID
  L8_2 = A2_2.ID
  L7_2 = L2_1
  L8_2 = L7_2
  L7_2 = L7_2.IsStoryLine
  L9_2 = L6_2
  L7_2 = L7_2 == L8_2 and L7_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_player_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L4_2.MenuIconID
  if 0 < L8_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_icon
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AreaMapMenuIconExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L4_2.MenuIconID
    L8_2 = L8_2(L9_2)
    L10_2 = A0_2
    L9_2 = A0_2._async_load_sprite_to
    L11_2 = A0_2._binder
    L11_2 = L11_2.image_icon
    L12_2 = L8_2.IconPath
    L9_2(L10_2, L11_2, L12_2)
  else
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_icon
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L9_2 = A0_2
  L8_2 = A0_2._setup_mission_symbol_show
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_raid_mark
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_ModuleManager
  L9_2 = L9_2.TutorialSupportModule
  L10_2 = L9_2
  L9_2 = L9_2.SetNodeDynamicKey
  L11_2 = A0_2._binder
  L11_2 = L11_2.root
  L11_2 = L11_2.gameObject
  L12_2 = A0_2._map_entry_row
  L12_2 = L12_2.ID
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A1_2.map_space_type
  L9_2 = #L9_2
  if 0 < L9_2 then
    L10_2 = A0_2
    L9_2 = A0_2._setup_title_item
    L11_2 = A1_2.map_space_type
    L9_2(L10_2, L11_2)
  else
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_item_title
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  return L8_2
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_line_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapSpaceTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.image_item_title
  L6_2 = L2_2.Icon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_title_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTrackingMissionByStoryLineID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission_symbol
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetTraceSubMissionByEntranceID
  L4_2 = A0_2._map_entry_row
  L4_2 = L4_2.ID
  L3_2 = L3_2(L4_2)
  A0_2.subMission = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_symbol
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.subMission
  L5_2 = L5_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.subMission
  if L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetWaypointIconType
    L5_2 = A0_2.subMission
    L5_2 = L5_2.ID
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MiniMapIconExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2 or L5_2
    if L4_2 then
      L5_2 = L4_2.IconPath
    end
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.image_mission_symbol
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_mission_effect
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A0_2._map_entry_row
    L9_2 = A0_2._cur_select_map_entry_data
    L8_2 = L8_2 ~= L9_2
    L6_2(L7_2, L8_2)
  end
  L3_2 = A0_2.subMission
  L3_2 = L3_2 ~= nil
  return L3_2
end
L0_1._setup_mission_symbol_show = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_owner = A1_2
  A0_2._callback = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  L2_2 = A0_2._click_owner
  L3_2 = A0_2._map_entry_row
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root_click = L3_1
return L0_1
