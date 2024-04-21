local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.RogueNousNewSubStoryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = "UIText_RogueNous_Story_SubTitle"
L1_1 = "RogueNousMissionItem"
L2_1 = "RogueNousNewMissionDialog_FadeIn_Frist"
L3_1 = "RogueNousNewMissionDialog_FadeIn"
L4_1 = 1
L5_1 = 0.2
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "RogueNousNewSubStoryPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousNewSubStoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._difficulty = A1_2
  A0_2._layer_id = A2_2
  A0_2._sub_story_id = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._prepare_story_info
  L4_2(L5_2)
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._prepare_story_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._prepare_story_lines
  L1_2(L2_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_layer_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_lines
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_story_lua_data
  L3_2 = A0_2._prev_lua_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L2_1
    return L1_2
  end
  L1_2 = L3_1
  return L1_2
end
L6_1.get_custom_fade_in_anim_name = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._prev_lua_data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._prev_lua_data
    L1_2(L2_2)
    A0_2._prev_lua_data = nil
  end
  L1_2 = A0_2._next_lua_datas
  if L1_2 ~= nil then
    L1_2 = A0_2._next_lua_datas
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = A0_2._next_lua_datas
      L7_2 = L7_2[L5_2]
      L6_2(L7_2)
    end
    A0_2._next_lua_datas = nil
  end
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = L1_2.SubMissionDict
  A0_2._sub_story_data_dict = L2_2
  L2_2 = A0_2._sub_story_data_dict
  L3_2 = A0_2._sub_story_id
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L4_2 = L2_2.IsFirstLayer
  if not L4_2 then
    L3_2 = L2_2.PrevSubStory
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.RogueNousStoryData
  L4_2 = L4_2(L5_2)
  A0_2._prev_lua_data = L4_2
  L4_2 = A0_2._prev_lua_data
  L5_2 = L4_2
  L4_2 = L4_2.init
  L6_2 = L3_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = {}
  A0_2._next_lua_datas = L4_2
  L4_2 = pairs
  L5_2 = L3_2.NextSubStories
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = G
    L9_2 = L9_2.new
    L10_2 = G
    L10_2 = L10_2.RogueNousStoryData
    L9_2 = L9_2(L10_2)
    L11_2 = L9_2
    L10_2 = L9_2.init
    L12_2 = L8_2
    L13_2 = false
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._next_lua_datas
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = A0_2._prev_lua_data
  L5_2 = L4_2
  L4_2 = L4_2.get_native
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.SubStoryID
  L5_2 = A0_2._sub_story_id
  if L4_2 == L5_2 then
    L4_2 = A0_2._prev_lua_data
    A0_2._cur_lua_data = L4_2
  else
    L4_2 = pairs
    L5_2 = A0_2._next_lua_datas
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.get_native
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.SubStoryID
      L10_2 = A0_2._sub_story_id
      if L9_2 == L10_2 then
        A0_2._cur_lua_data = L8_2
        break
      end
    end
  end
  L4_2 = A0_2._cur_lua_data
  L5_2 = L4_2
  L4_2 = L4_2.set_override_unlocked
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L6_1._prepare_story_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_story_lua_data
  L3_2 = A0_2._prev_lua_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.prev_item_panel
    A0_2._cur_story_panel = L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.next_item_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._next_lua_datas
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.safe_set_active
    L9_2 = L6_2 ~= nil
    L7_2(L8_2, L9_2)
    if L6_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._is_cur_story_lua_data
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        A0_2._cur_story_panel = L5_2
        L8_2 = L5_2
        L7_2 = L5_2.get_root_transform
        L7_2 = L7_2(L8_2)
        L8_2 = L1_1
        L7_2.name = L8_2
      end
    end
  end
end
L6_1._prepare_story_items = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._next_lua_datas
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.safe_set_active
    L9_2 = L6_2 ~= nil
    L7_2(L8_2, L9_2)
  end
end
L6_1._prepare_story_lines = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = G
  L2_2 = L2_2.UITextUtils
  L2_2 = L2_2.GetRomanNumberTextID
  L3_2 = A0_2._difficulty
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCLayerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._layer_id
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2.LayerNumID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L2_2.LayerNameID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_sub_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L0_1
  L8_2 = L1_2
  L9_2 = L3_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L6_1._setup_layer_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._prev_lua_data
  L4_2 = A0_2._sub_story_data_dict
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_reward_inactive
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_root_btn_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_in_dot_node
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_nous_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._next_lua_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.next_item_panels
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = L5_2
      L10_2 = A0_2._sub_story_data_dict
      L11_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_reward_inactive
      L7_2(L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_root_btn_enabled
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_out_dot_node
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._is_cur_story_lua_data
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if not L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.set_dark_view
        L7_2(L8_2)
      end
    end
  end
  L1_2 = A0_2._cur_story_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_nous_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_story_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_nous_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.set_purple
  L1_2(L2_2)
  L1_2 = A0_2._cur_story_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_focused
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._setup_story_items = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.story_panel_root
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_out_line_root
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = A0_2._next_lua_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.line_panels
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._binder
    L8_2 = L8_2.next_item_panels
    L8_2 = L8_2[L5_2]
    if L7_2 ~= nil and L8_2 ~= nil then
      L10_2 = L7_2
      L9_2 = L7_2.set_fill_percent
      L11_2 = 1
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.get_in_line_root
      L9_2 = L9_2(L10_2)
      L11_2 = A0_2
      L10_2 = A0_2._get_relative_pos
      L12_2 = L1_2
      L13_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L12_2 = L7_2
      L11_2 = L7_2.setup_view
      L13_2 = {}
      L14_2 = L10_2.x
      L15_2 = L10_2.y
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L11_2(L12_2, L13_2)
      L12_2 = A0_2
      L11_2 = A0_2._is_cur_story_lua_data
      L13_2 = L6_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L12_2 = L7_2
        L11_2 = L7_2.set_line_alpha
        L13_2 = L4_1
        L11_2(L12_2, L13_2)
        L12_2 = L7_2
        L11_2 = L7_2.play_highlight_fade_in_anim
        L11_2(L12_2)
      else
        L12_2 = L7_2
        L11_2 = L7_2.set_line_alpha
        L13_2 = L5_1
        L11_2(L12_2, L13_2)
        L12_2 = L7_2
        L11_2 = L7_2.play_normal_fade_in_anim
        L13_2 = false
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L6_1._setup_story_lines = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.zero
  L4_2 = A1_2
  L5_2 = A2_2
  while L4_2 ~= L5_2 do
    L6_2 = L5_2.localPosition
    L6_2 = L3_2 + L6_2
    L7_2 = L4_2.localPosition
    L3_2 = L6_2 - L7_2
    L4_2 = L4_2.parent
    L5_2 = L5_2.parent
  end
  return L3_2
end
L6_1._get_relative_pos = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_lua_data
  L2_2 = A1_2 == L2_2
  return L2_2
end
L6_1._is_cur_story_lua_data = L7_1
return L6_1
