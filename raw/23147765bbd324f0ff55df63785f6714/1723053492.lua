local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = WorldID2RegionalMapPath
  L2_2 = A0_2._cur_show_world_id
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.root_animator = L1_2
  L1_2 = {}
  A0_2.node_current_spot_eff_list = L1_2
  L1_2 = {}
  A0_2.node_current_player_mark_list = L1_2
  L1_2 = {}
  A0_2.node_map_entrance_list = L1_2
  L1_2 = {}
  A0_2.node_map_spot_list = L1_2
  L1_2 = {}
  A0_2.btn_region_item_list = L1_2
  L1_2 = {}
  A0_2.text_entrance_name_list = L1_2
  L1_2 = {}
  A0_2.anim_map_entrance = L1_2
  L1_2 = {}
  A0_2.node_map_entrance_image_list = L1_2
  L1_2 = {}
  A0_2.node_map_space_list = L1_2
  L1_2 = {}
  A0_2.btn_close_regional_detail_list = L1_2
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
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "Viewport/Content/S%s"
    L11_2 = #L6_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L8_2 = A0_2.node_map_space_list
    L9_2 = #L6_2
    L8_2[L9_2] = L7_2
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = string
    L10_2 = L10_2.format
    L11_2 = "Viewport/Content/S%s/SpotList"
    L12_2 = #L6_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = G
    L9_2 = L9_2.UIUtils
    L9_2 = L9_2.set_children_visible
    L10_2 = L8_2
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.cs_list_to_table
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetMapEntryListByWorldID
  L4_2 = A0_2._cur_show_world_id
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.TrainEntranceID
    if L8_2 ~= L9_2 then
      L8_2 = G
      L8_2 = L8_2.MapUtil
      L8_2 = L8_2.get_map_space_type
      L9_2 = A0_2._cur_show_world_id
      L10_2 = L7_2.ID
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = A0_2.node_current_spot_eff_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_find
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot/Root/SpotPanel/IconSpot/CurrentSpotEff"
      L15_2 = #L8_2
      L16_2 = L7_2.ID
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.node_current_player_mark_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_find
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot/Root/TextPanel/LimitedTextPanel/PlayerMark"
      L15_2 = #L8_2
      L16_2 = L7_2.ID
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.node_map_entrance_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_find
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Viewport/Content/S%s/SpotList/M%s"
      L15_2 = #L8_2
      L16_2 = L7_2.ID
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.node_map_spot_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_find
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot/Root/SpotPanel"
      L15_2 = #L8_2
      L16_2 = L7_2.ID
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.btn_region_item_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_get_cmpt
      L13_2 = CS
      L13_2 = L13_2.UnityEngine
      L13_2 = L13_2.UI
      L13_2 = L13_2.Button
      L14_2 = string
      L14_2 = L14_2.format
      L15_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot/Root"
      L16_2 = #L8_2
      L17_2 = L7_2.ID
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.text_entrance_name_list
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_get_cmpt
      L13_2 = CS
      L13_2 = L13_2.UnityEngine
      L13_2 = L13_2.UI
      L13_2 = L13_2.Text
      L14_2 = string
      L14_2 = L14_2.format
      L15_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot/Root/TextPanel/LimitedTextPanel/FloorText"
      L16_2 = #L8_2
      L17_2 = L7_2.ID
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.anim_map_entrance
      L10_2 = L7_2.ID
      L12_2 = A0_2
      L11_2 = A0_2._safe_get_cmpt
      L13_2 = CS
      L13_2 = L13_2.UnityEngine
      L13_2 = L13_2.Animation
      L14_2 = string
      L14_2 = L14_2.format
      L15_2 = "Viewport/Content/S%s/SpotList/M%s/MapSpot"
      L16_2 = #L8_2
      L17_2 = L7_2.ID
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = false
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.node_map_entrance_list
      L10_2 = L7_2.ID
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L9_2 = A0_2.node_map_entrance_list
        L10_2 = L7_2.ID
        L9_2 = L9_2[L10_2]
        L10_2 = L9_2
        L9_2 = L9_2.SafeSetActive
        L11_2 = true
        L9_2(L10_2, L11_2)
      end
      L10_2 = A0_2
      L9_2 = A0_2._safe_get_cmpt
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.UI
      L11_2 = L11_2.Button
      L12_2 = string
      L12_2 = L12_2.format
      L13_2 = "Viewport/Content/S%s/BtnSymbolDetailPanelClose"
      L14_2 = #L8_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = L9_2
      L10_2 = L9_2.SafeSetActive
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2.btn_close_regional_detail_list
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AreaMapShowConfigExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = G
    L5_2 = L5_2.MapUtil
    L5_2 = L5_2.get_map_space_type
    L6_2 = A0_2._cur_show_world_id
    L7_2 = L4_2.ID
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2.node_map_entrance_image_list
    L7_2 = L4_2.ID
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = string
    L10_2 = L10_2.format
    L11_2 = "Viewport/Content/S%s/MapPanel/A%s"
    L12_2 = #L5_2
    L13_2 = L4_2.ID
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2[L7_2] = L8_2
    L6_2 = A0_2.node_map_entrance_image_list
    L7_2 = L4_2.ID
    L6_2 = L6_2[L7_2]
    if L6_2 then
      L6_2 = L4_2.Conditions
      if L6_2 then
        L6_2 = L4_2.Conditions
        L6_2 = L6_2.Length
        if 0 < L6_2 then
          L6_2 = L4_2.Conditions
          L6_2 = L6_2[0]
          L7_2 = L6_2.Type
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.GameCore
          L8_2 = L8_2.ConditionType
          L8_2 = L8_2.FinishMainMission
          if L7_2 == L8_2 then
            L7_2 = L1_1
            L8_2 = L7_2
            L7_2 = L7_2.MainMissionDataPromised
            L9_2 = tonumber
            L10_2 = L6_2.Param
            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L8_2 = L7_2
            L7_2 = L7_2.ThenLuaAction
            function L9_2()
              local L0_3, L1_3, L2_3, L3_3
              L0_3 = CS
              L0_3 = L0_3.RPG
              L0_3 = L0_3.Client
              L0_3 = L0_3.BigMapUtils
              L0_3 = L0_3.IsEntryUnlocked
              L1_3 = L4_2.ID
              L0_3 = L0_3(L1_3)
              if not L0_3 then
                L0_3 = CS
                L0_3 = L0_3.RPG
                L0_3 = L0_3.Client
                L0_3 = L0_3.ConditionCheckerUtil
                L0_3 = L0_3.DoCheck
                L1_3 = L6_2.Type
                L2_3 = L6_2.Param
                L0_3 = L0_3(L1_3, L2_3)
              end
              L1_3 = A0_2.node_map_entrance_image_list
              L2_3 = L4_2.ID
              L1_3 = L1_3[L2_3]
              L2_3 = L1_3
              L1_3 = L1_3.SafeSetActive
              L3_3 = L0_3
              L1_3(L2_3, L3_3)
            end
            L7_2(L8_2, L9_2)
          else
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.Client
            L7_2 = L7_2.BigMapUtils
            L7_2 = L7_2.IsEntryUnlocked
            L8_2 = L4_2.ID
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              L7_2 = CS
              L7_2 = L7_2.RPG
              L7_2 = L7_2.Client
              L7_2 = L7_2.ConditionCheckerUtil
              L7_2 = L7_2.DoCheck
              L8_2 = L6_2.Type
              L9_2 = L6_2.Param
              L7_2 = L7_2(L8_2, L9_2)
            end
            L8_2 = A0_2.node_map_entrance_image_list
            L9_2 = L4_2.ID
            L8_2 = L8_2[L9_2]
            L9_2 = L8_2
            L8_2 = L8_2.SafeSetActive
            L10_2 = L7_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
end
L0_1._on_bind = L2_1
return L0_1
