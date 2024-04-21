local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryPanelMgrBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousSubStoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousSubStoryPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryLinePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousStoryPanelMgr"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SubStoryPadding"
L2_1 = "SubStoryStartOffset"
L3_1 = "SubStoryHeight"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._item_list = A1_2
  A0_2._is_in_rogue = A3_2
  L5_2 = G
  L5_2 = L5_2.RogueNousUtils
  L5_2 = L5_2.struct_rogue_nous_mission_data
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._item_data_dict = L5_2
  L5_2 = {}
  A0_2._loaded_gameObject = L5_2
  L6_2 = A4_2
  L5_2 = A4_2.TryGetFloatValue
  L7_2 = L1_1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._padding = L5_2
  L6_2 = A4_2
  L5_2 = A4_2.TryGetFloatValue
  L7_2 = L2_1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._item_height = L5_2
  L6_2 = A4_2
  L5_2 = A4_2.TryGetFloatValue
  L7_2 = L3_1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._offset = L5_2
  L5_2 = pairs
  L6_2 = A0_2._item_data_dict
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.setup_offset
    L12_2 = A0_2._offset
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setup_padding
    L12_2 = A0_2._padding
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setup_item_height
    L12_2 = A0_2._item_height
    L10_2(L11_2, L12_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._init_layer_info
  L5_2(L6_2)
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._all_sub_story_panels_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh
    L6_2(L7_2)
  end
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L1_2[1] = L2_2
  L2_2 = {}
  L1_2[2] = L2_2
  L2_2 = {}
  L1_2[3] = L2_2
  A0_2._layer_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._item_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = 1
    L6_2 = A0_2._item_list
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._item_data_dict
    L8_2 = L6_2.SubStoryID
    if not L8_2 then
      L8_2 = L6_2.MainStoryID
    end
    L7_2 = L7_2[L8_2]
    L9_2 = L7_2
    L8_2 = L7_2.get_native
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.Layer
    if L8_2 == 1 then
      L9_2 = A0_2
      L8_2 = A0_2._recursively_init_layer_index
      L10_2 = L7_2
      L11_2 = A0_2._layer_table
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._init_layer_info = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A2_2[A3_2]
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L6_2 = A1_2
  L5_2 = A1_2.set_in_layer_index
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A2_2[A3_2]
  L5_2[L4_2] = A1_2
  L5_2 = 0
  L7_2 = A1_2
  L6_2 = A1_2.get_native
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.NextLayerIDArray
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._item_data_dict
    L11_2 = A1_2
    L10_2 = A1_2.get_native
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2.NextLayerIDArray
    L10_2 = L10_2[L8_2]
    L9_2 = L9_2[L10_2]
    L11_2 = A0_2
    L10_2 = A0_2._recursively_init_layer_index
    L12_2 = L9_2
    L13_2 = A2_2
    L14_2 = A3_2 + 1
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1._recursively_init_layer_index = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_sub_story_panels
  return L1_2
end
L0_1.get_panels = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._all_sub_story_panels_dict
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_panel_by_id = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._line_dict
  return L1_2
end
L0_1.get_lines = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._line_dict
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_line_by_end_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._item_data_dict
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._item_data_dict
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  A0_2._item_data_dict = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._all_sub_story_panels = L1_2
  L1_2 = {}
  A0_2._all_sub_story_panels_dict = L1_2
  L1_2 = pairs
  L2_2 = A0_2._item_data_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_native
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.Layer
    L8_2 = A0_2
    L7_2 = A0_2._get_prefab
    L9_2 = L5_2
    L10_2 = A0_2._binder
    L10_2 = L10_2.layer_roots
    L10_2 = L10_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.RogueNousSubStoryPanel
    L11_2 = G
    L11_2 = L11_2.RogueNousSubStoryPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_local_position_y
    L12_2 = L5_2
    L11_2 = L5_2.get_local_position_y
    L13_2 = A0_2._item_data_dict
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L5_2
    L12_2 = A0_2._item_data_dict
    L13_2 = A0_2._is_in_rogue
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._all_sub_story_panels
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._all_sub_story_panels_dict
    L11_2 = L5_2
    L10_2 = L5_2.get_native
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2.SubStoryID
    L9_2[L10_2] = L8_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_height
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.parent
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_and_show_lines
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._establish_navigation
  L1_2(L2_2)
end
L0_1.refresh_sub_story = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ipairs
  L4_2 = A0_2._all_sub_story_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_reward_panel_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.get_prefab_path
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._loaded_gameObject
  L4_2 = L4_2[L3_2]
  if L4_2 == nil then
    L4_2 = A0_2._loaded_gameObject
    L6_2 = A0_2
    L5_2 = A0_2.sync_load_prefab
    L7_2 = L3_2
    L8_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2[L3_2] = L5_2
    L4_2 = A0_2._loaded_gameObject
    L4_2 = L4_2[L3_2]
    return L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.instantiate_object
  L6_2 = A0_2._loaded_gameObject
  L6_2 = L6_2[L3_2]
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1._get_prefab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._layer_table
  L1_2 = L1_2[3]
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_local_position_y
  L3_2 = A0_2._item_data_dict
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._layer_table
  L2_2 = L2_2[3]
  L3_2 = A0_2._layer_table
  L3_2 = L3_2[3]
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_local_position_y
  L4_2 = A0_2._item_data_dict
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L1_2 - L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._offset
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._item_height
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._padding
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.layout_element
  L4_2.minHeight = L3_2
end
L0_1._setup_height = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.get_story_data
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_focused
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.IsFirstLayer
  if L3_2 == false then
    L4_2 = A0_2
    L3_2 = A0_2._get_pre_panel
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._set_panel_out_lines_highlight
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_focus_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2
  L2_2 = A1_2.get_native
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.PreLayerID
  L3_2 = ipairs
  L4_2 = A0_2._all_sub_story_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_story_data
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.get_native
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.SubStoryID
    if L8_2 == L2_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_pre_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2._line_dict
  if L1_2 then
    return
  end
  L1_2 = {}
  A0_2._line_dict = L1_2
  L1_2 = pairs
  L2_2 = A0_2._all_sub_story_panels_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_story_data
    L6_2 = L6_2(L7_2)
    L8_2 = L6_2
    L7_2 = L6_2.get_native
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.NextLayerIDArray
    if L8_2 then
      L8_2 = L7_2.NextLayerIDArray
      L8_2 = L8_2.Length
      if L8_2 ~= 0 then
        L8_2 = 0
        L9_2 = L7_2.NextLayerIDArray
        L9_2 = L9_2.Length
        L9_2 = L9_2 - 1
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = L7_2.NextLayerIDArray
          L12_2 = L12_2[L11_2]
          L13_2 = A0_2._all_sub_story_panels_dict
          L13_2 = L13_2[L12_2]
          L15_2 = A0_2
          L14_2 = A0_2._create_line
          L16_2 = L5_2
          L17_2 = L13_2
          L18_2 = A0_2._line_dict
          L14_2(L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
  end
end
L0_1._load_and_show_lines = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A1_2
  L4_2 = A1_2.get_out_line_root
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueNousStoryLinePanel
  L8_2 = G
  L8_2 = L8_2.RogueNousStoryLinePanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.sync_loadto
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_relative_pos
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.setup_view
  L9_2 = {}
  L10_2 = L6_2.x
  L11_2 = L6_2.y
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_fill_percent
  L9_2 = 1
  L7_2(L8_2, L9_2)
  L8_2 = A2_2
  L7_2 = A2_2.get_story_data
  L7_2 = L7_2(L8_2)
  L9_2 = L7_2
  L8_2 = L7_2.get_native
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2.SubStoryID
  A3_2[L9_2] = L5_2
  L9_2 = A0_2._is_in_rogue
  if L9_2 then
    L10_2 = L5_2
    L9_2 = L5_2.set_line_alpha
    L11_2 = 0.2
    L9_2(L10_2, L11_2)
  end
end
L0_1._create_line = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.get_out_line_root
  L3_2 = L3_2(L4_2)
  L5_2 = A2_2
  L4_2 = A2_2.get_in_line_root
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L5_2 = L5_2.zero
  L6_2 = L3_2
  L7_2 = L4_2
  while L6_2 ~= L7_2 do
    L8_2 = L7_2.localPosition
    L8_2 = L5_2 + L8_2
    L9_2 = L6_2.localPosition
    L5_2 = L8_2 - L9_2
    L6_2 = L6_2.parent
    L7_2 = L7_2.parent
  end
  return L5_2
end
L0_1._get_relative_pos = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.get_story_data
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.get_native
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L3_2.NextLayerIDArray
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2.NextLayerIDArray
    L8_2 = L8_2[L7_2]
    L9_2 = A0_2._line_dict
    L9_2 = L9_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.set_fill_percent
    L12_2 = 1
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.set_line_alpha
    L12_2 = 1
    L10_2(L11_2, L12_2)
  end
end
L0_1._set_panel_out_lines_highlight = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._all_sub_story_panels_dict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.trigger_effect_by_content_move
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.update_by_content_move = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._all_sub_story_panels_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._init_single_sub_story_navigation
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._establish_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A1_2
  L2_2 = A1_2.get_story_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.get_native
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.get_story_data
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = L2_2.PrevSubStory
  if L9_2 then
    L10_2 = A0_2._all_sub_story_panels_dict
    L11_2 = L9_2.SubStoryID
    L10_2 = L10_2[L11_2]
    L11_2 = L10_2
    L10_2 = L10_2.get_navigation_btn
    L10_2 = L10_2(L11_2)
    L5_2 = L10_2
  end
  L10_2 = L2_2.NextSubStories
  if L10_2 then
    L10_2 = L2_2.NextSubStories
    L10_2 = L10_2.Count
    if 0 < L10_2 then
      L10_2 = L2_2.NextSubStories
      L10_2 = L10_2[0]
      L10_2 = L10_2.SubStoryID
      L11_2 = A0_2._all_sub_story_panels_dict
      L11_2 = L11_2[L10_2]
      L12_2 = L11_2
      L11_2 = L11_2.get_navigation_btn
      L11_2 = L11_2(L12_2)
      L6_2 = L11_2
    end
  end
  L11_2 = L3_2
  L10_2 = L3_2.get_in_layer_index
  L10_2 = L10_2(L11_2)
  if 1 < L10_2 then
    L11_2 = A0_2._layer_table
    L12_2 = L2_2.Layer
    L11_2 = L11_2[L12_2]
    L12_2 = L10_2 - 1
    L11_2 = L11_2[L12_2]
    L12_2 = A0_2._all_sub_story_panels_dict
    L14_2 = L11_2
    L13_2 = L11_2.get_native
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2.SubStoryID
    L12_2 = L12_2[L13_2]
    L14_2 = L12_2
    L13_2 = L12_2.get_navigation_btn
    L13_2 = L13_2(L14_2)
    L7_2 = L13_2
  end
  L11_2 = A0_2._layer_table
  L12_2 = L2_2.Layer
  L11_2 = L11_2[L12_2]
  L11_2 = #L11_2
  if L10_2 < L11_2 then
    L11_2 = A0_2._layer_table
    L12_2 = L2_2.Layer
    L11_2 = L11_2[L12_2]
    L12_2 = L10_2 + 1
    L11_2 = L11_2[L12_2]
    L12_2 = A0_2._all_sub_story_panels_dict
    L14_2 = L11_2
    L13_2 = L11_2.get_native
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2.SubStoryID
    L12_2 = L12_2[L13_2]
    L14_2 = L12_2
    L13_2 = L12_2.get_navigation_btn
    L13_2 = L13_2(L14_2)
    L8_2 = L13_2
  end
  L11_2 = L4_2.navigation
  L12_2 = CS
  L12_2 = L12_2.UnityEngine
  L12_2 = L12_2.UI
  L12_2 = L12_2.Navigation
  L12_2 = L12_2.Mode
  L12_2 = L12_2.Explicit
  L11_2.mode = L12_2
  L11_2.selectOnLeft = L5_2
  L11_2.selectOnRight = L6_2
  L11_2.selectOnUp = L7_2
  L11_2.selectOnDown = L8_2
  L4_2.navigation = L11_2
end
L0_1._init_single_sub_story_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._all_sub_story_panels_dict
  L3_2 = A0_2._layer_table
  L3_2 = L3_2[1]
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.SubStoryID
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2._all_sub_story_panels_dict
  L4_2 = A0_2._layer_table
  L4_2 = L4_2[2]
  L4_2 = L4_2[1]
  L5_2 = L4_2
  L4_2 = L4_2.get_native
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.SubStoryID
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2._all_sub_story_panels_dict
  L5_2 = A0_2._layer_table
  L5_2 = L5_2[3]
  L5_2 = L5_2[1]
  L6_2 = L5_2
  L5_2 = L5_2.get_native
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.SubStoryID
  L4_2 = L4_2[L5_2]
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  return L1_2
end
L0_1.get_start_mission_navi_targets = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._all_sub_story_panels_dict
  L3_2 = A0_2._layer_table
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2._layer_table
  L4_2 = L4_2[A1_2]
  L4_2 = #L4_2
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.SubStoryID
  L2_2 = L2_2[L3_2]
  return L2_2
end
L0_1.get_main_mission_navi_target = L4_1
return L0_1
