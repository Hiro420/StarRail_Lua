local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousMainStoryOverviewPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousMainStoryPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousMainStoryOverviewPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MainStoryPadding"
L2_1 = "MainStoryHeight"
L3_1 = "MainStoryOffset"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._item_list = A1_2
  L4_2 = G
  L4_2 = L4_2.RogueNousUtils
  L4_2 = L4_2.create_rogue_nous_main_mission_data
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._item_data_dict = L4_2
  L4_2 = {}
  A0_2._loaded_gameObject = L4_2
  A0_2._is_in_rogue = A2_2
  L5_2 = A3_2
  L4_2 = A3_2.TryGetValue
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._padding = L4_2
  L5_2 = A3_2
  L4_2 = A3_2.TryGetValue
  L6_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._item_height = L4_2
  L5_2 = A3_2
  L4_2 = A3_2.TryGetValue
  L6_2 = L3_1
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._offset = L4_2
  L4_2 = pairs
  L5_2 = A0_2._item_data_dict
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.setup_offset
    L11_2 = A0_2._offset
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_padding
    L11_2 = A0_2._padding
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_item_height
    L11_2 = A0_2._item_height
    L9_2(L10_2, L11_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._init_layer_info
  L4_2(L5_2)
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._all_main_story_panels_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh
    L6_2(L7_2)
  end
end
L0_1.refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = ipairs
  L3_2 = A0_2._layer_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L13_2 = L11_2
      L12_2 = L11_2.get_native
      L12_2 = L12_2(L13_2)
      L13_2 = A0_2._all_main_story_panels_dict
      L14_2 = L12_2.MainStoryID
      L13_2 = L13_2[L14_2]
      L14_2 = L12_2.IsUnlocked
      L16_2 = L13_2
      L15_2 = L13_2.set_dark
      L17_2 = A1_2 ~= L5_2 and L17_2
      L15_2(L16_2, L17_2)
    end
  end
end
L0_1.setup_focus_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A0_2._all_main_story_panels_dict
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.try_trigger_effect_when_content_move
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.update_line_effect_status
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.update_by_content_move = L4_1
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
    L8_2 = L6_2.MainStoryID
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
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A2_2[A3_2]
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L6_2 = A1_2
  L5_2 = A1_2.set_in_layer_index
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A2_2[A3_2]
  L5_2[L4_2] = A1_2
  L6_2 = A1_2
  L5_2 = A1_2.get_native
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.NextMainStoryID
  if L5_2 ~= 0 then
    L5_2 = A0_2._item_data_dict
    L7_2 = A1_2
    L6_2 = A1_2.get_native
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.NextMainStoryID
    L5_2 = L5_2[L6_2]
    L7_2 = A0_2
    L6_2 = A0_2._recursively_init_layer_index
    L8_2 = L5_2
    L9_2 = A2_2
    L10_2 = A3_2 + 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._recursively_init_layer_index = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_main_story_panels_dict
  return L1_2
end
L0_1.get_panels = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A0_2._all_main_story_panels_dict
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_click_callback = L4_1
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
  A0_2._all_main_story_panels = L1_2
  L1_2 = {}
  A0_2._all_main_story_panels_dict = L1_2
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
    L10_2 = L10_2.RogueNousMainStoryPanel
    L11_2 = G
    L11_2 = L11_2.RogueNousMainStoryPanelWithLineBinder
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
    L12_2 = A0_2._is_in_rogue
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._all_main_story_panels
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._all_main_story_panels_dict
    L11_2 = L5_2
    L10_2 = L5_2.get_native
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2.MainStoryID
    L9_2[L10_2] = L8_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_height
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._establish_navigation
  L1_2(L2_2)
end
L0_1.refresh_main_story = L4_1
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
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._all_main_story_panels_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._init_single_main_story_navigation
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
  L9_2 = L2_2.PrevMainStoryID
  if L9_2 ~= 0 then
    L10_2 = A0_2._all_main_story_panels_dict
    L10_2 = L10_2[L9_2]
    L11_2 = L10_2
    L10_2 = L10_2.get_navigation_btn
    L10_2 = L10_2(L11_2)
    L5_2 = L10_2
  end
  L10_2 = L2_2.HasNextLayer
  if L10_2 then
    L10_2 = L2_2.NextMainStoryID
    L11_2 = A0_2._all_main_story_panels_dict
    L11_2 = L11_2[L10_2]
    L12_2 = L11_2
    L11_2 = L11_2.get_navigation_btn
    L11_2 = L11_2(L12_2)
    L6_2 = L11_2
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
    L12_2 = A0_2._all_main_story_panels_dict
    L14_2 = L11_2
    L13_2 = L11_2.get_native
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2.MainStoryID
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
    L12_2 = A0_2._all_main_story_panels_dict
    L14_2 = L11_2
    L13_2 = L11_2.get_native
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2.MainStoryID
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
L0_1._init_single_main_story_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._layer_table
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._layer_table
    L7_2 = L7_2[L5_2]
    L7_2 = #L7_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.get_native
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = A0_2._all_main_story_panels_dict
    L10_2 = L6_2.MainStoryID
    L9_2 = L9_2[L10_2]
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_end_mission_navi_targets = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._layer_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2[1]
  L3_2 = L2_2
  L2_2 = L2_2.get_native
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._all_main_story_panels_dict
  L4_2 = L2_2.MainStoryID
  L3_2 = L3_2[L4_2]
  return L3_2
end
L0_1.get_sub_mission_navi_target = L4_1
return L0_1
