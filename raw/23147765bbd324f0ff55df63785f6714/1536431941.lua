local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValuePanelSegmentDisplayData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueSegmentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueSegmentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueCurBuoyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueCurBuoyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueSegBuoyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValueSegBuoyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = 30
L1_1 = 18
L2_1 = "UIText_RogueNous_NousValue_MinWarning"
L3_1 = "UIText_RogueNous_NousValue_MaxWarning"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueNousValuePanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._segment_datas = L3_2
  A0_2._is_handle_update_notify = true
  A0_2._is_update_notify_animated = true
  A0_2._is_update_anim_with_block = false
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueNousValueUpdated
  L4_2 = A0_2._on_rogue_nous_value_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueNousValuePanelSetPreviewDelta
  L4_2 = A0_2._on_rogue_nous_value_panel_set_preview_delta
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._segment_datas
  if L1_2 ~= nil then
    L1_2 = A0_2._segment_datas
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = A0_2._segment_datas
      L7_2 = L7_2[L5_2]
      L6_2(L7_2)
    end
    A0_2._segment_datas = nil
  end
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 == nil then
    A3_2 = false
  end
  A0_2._nous_value_info = A1_2
  A0_2._cur_area_id = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_nous_value
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._prepare_global_data
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._prepare_in_game_sub_story_data
  L4_2(L5_2)
  if A3_2 then
    L4_2 = A0_2._last_nous_value
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = A0_2._cur_nous_value
  ::lbl_18::
  L6_2 = A0_2
  L5_2 = A0_2._prepare_ui_data
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_segment_panels
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_seg_buoy_panels
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_cur_buoy_panel
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.set_handle_update_notify
  L5_2 = false
  L3_2(L4_2, L5_2)
  A0_2._handbook_story_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._prepare_global_data
  L3_2(L4_2)
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._prepare_main_story_handbook_data
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._prepare_sub_story_handbook_data
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._prepare_ui_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_segment_panels
  L3_2(L4_2)
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_main_story_seg_buoy_panels
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_seg_buoy_panels
    L3_2(L4_2)
  end
end
L4_1.setup_handbook_view = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_handle_update_notify = A1_2
end
L4_1.set_handle_update_notify = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_update_notify_animated = A1_2
end
L4_1.set_update_notify_animated = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_update_anim_with_block = A1_2
end
L4_1.set_update_anim_with_block = L5_1
function L5_1(A0_2, A1_2)
  A0_2._update_anim_end_callback = A1_2
end
L4_1.register_update_anim_end_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    A1_2 = true
  end
  if A2_2 == nil then
    A2_2 = false
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_nous_value
  L3_2(L4_2)
  L3_2 = false
  if not A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_show_limited_hint
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if not L3_2 then
    L4_2 = A0_2._cur_buoy_panel
    if L4_2 ~= nil then
      L4_2 = A0_2._cur_nous_value
      L5_2 = A0_2._last_nous_value
      if L4_2 ~= L5_2 then
        if A1_2 then
          L5_2 = A0_2
          L4_2 = A0_2._play_cur_buoy_update_anim
          L6_2 = A0_2._cur_nous_value
          L4_2(L5_2, L6_2)
        else
          L5_2 = A0_2
          L4_2 = A0_2._setup_cur_buoy_panel
          L6_2 = A0_2._cur_nous_value
          L4_2(L5_2, L6_2)
          L5_2 = A0_2
          L4_2 = A0_2._setup_segment_panels
          L6_2 = A0_2._cur_nous_value
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
L4_1.refresh_cur_value = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.show_story_page_in_game
  L1_2()
end
L4_1._on_btn_root_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_handle_update_notify
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_cur_value
  L3_2 = A0_2._is_update_notify_animated
  L1_2(L2_2, L3_2)
end
L4_1._on_rogue_nous_value_updated = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A1_2.delta
    if L2_2 ~= nil then
      L2_2 = tonumber
      L3_2 = A1_2.delta
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L3_2 = A0_2
  L2_2 = A0_2._clip_to_ava_range
  L4_2 = A0_2._cur_nous_value
  L5_2 = A1_2.delta
  L4_2 = L4_2 + L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._preview_nous_value = L2_2
  L2_2 = A1_2.is_animated
  if L2_2 ~= nil then
    L2_2 = A1_2.is_animated
    if not L2_2 then
      goto lbl_28
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._play_cur_buoy_update_anim
  L4_2 = A0_2._preview_nous_value
  L2_2(L3_2, L4_2)
  goto lbl_36
  ::lbl_28::
  L3_2 = A0_2
  L2_2 = A0_2._try_show_limited_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_buoy_panel
  L4_2 = A0_2._preview_nous_value
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_segment_panels
  L4_2 = A0_2._preview_nous_value
  L2_2(L3_2, L4_2)
  ::lbl_36::
end
L4_1._on_rogue_nous_value_panel_set_preview_delta = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._nous_value_info
  L1_2 = L1_2.CurNousValue
  A0_2._cur_nous_value = L1_2
  L1_2 = A0_2._nous_value_info
  L1_2 = L1_2.LastNousValue
  A0_2._last_nous_value = L1_2
end
L4_1._refresh_nous_value = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_global_data
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L3_2 = L2_2.GetData
  L4_2 = "RogueNous_NousValueLimit_Min"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.IntValue
  L1_2.glob_min_nous_value = L3_2
  L3_2 = L2_2.GetData
  L4_2 = "RogueNous_NousValueLimit_Max"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.IntValue
  L1_2.glob_max_nous_value = L3_2
  L3_2 = L1_2.glob_max_nous_value
  L4_2 = L1_2.glob_min_nous_value
  L3_2 = L3_2 - L4_2
  L1_2.glob_nous_value_delta = L3_2
  L3_2 = L1_2.glob_min_nous_value
  L4_2 = L1_2.glob_max_nous_value
  L5_2 = A0_2._nous_value_info
  if L5_2 ~= nil then
    L5_2 = A0_2._nous_value_info
    L6_2 = L5_2
    L5_2 = L5_2.GetAreaLimit
    L7_2 = A0_2._cur_area_id
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    L4_2 = L6_2
    L3_2 = L5_2
  end
  L1_2.ava_min_nous_value = L3_2
  L1_2.ava_max_nous_value = L4_2
  L5_2 = L1_2.ava_max_nous_value
  L6_2 = L1_2.ava_min_nous_value
  L5_2 = L5_2 - L6_2
  L1_2.ava_nous_value_delta = L5_2
  L5_2 = L1_2.ava_min_nous_value
  L6_2 = L1_2.glob_min_nous_value
  L5_2 = L5_2 > L6_2
  L1_2.is_ava_min_limited = L5_2
  L5_2 = L1_2.ava_max_nous_value
  L6_2 = L1_2.glob_max_nous_value
  L5_2 = L5_2 < L6_2
  L1_2.is_ava_max_limited = L5_2
  A0_2._global_data = L1_2
end
L4_1._prepare_global_data = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.glob_min_nous_value = 0
  L1_2.glob_max_nous_value = 0
  L1_2.glob_nous_value_delta = 0
  L1_2.ava_min_nous_value = 0
  L1_2.ava_max_nous_value = 0
  L1_2.ava_nous_value_delta = 0
  L1_2.is_ava_min_limited = false
  L1_2.is_ava_max_limited = false
  return L1_2
end
L4_1._create_global_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaLayerIndex
  L3_2 = L1_2.ChessRogueData
  L3_2 = L3_2.StoryInfo
  L4_2 = L3_2
  L3_2 = L3_2.GetTriggeredSubStoryID
  L5_2 = L2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_2.ChessRogueData
  L4_2 = L4_2.StoryInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetRecommendedSubStoryID
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._prepare_sub_story_data_items
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._global_data
  L5_2 = L5_2.is_ava_min_limited
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._create_empty_segment_data
    L7_2 = A0_2._global_data
    L7_2 = L7_2.glob_min_nous_value
    L8_2 = A0_2._global_data
    L8_2 = L8_2.ava_min_nous_value
    L8_2 = L8_2 - 1
    L9_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2.is_locked = true
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._segment_datas
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = A0_2._global_data
  L5_2 = L5_2.is_ava_max_limited
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._create_empty_segment_data
    L7_2 = A0_2._global_data
    L7_2 = L7_2.ava_max_nous_value
    L7_2 = L7_2 + 1
    L8_2 = A0_2._global_data
    L8_2 = L8_2.glob_max_nous_value
    L9_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2.is_locked = true
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._segment_datas
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L4_1._prepare_in_game_sub_story_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L3_2 = L2_2.ChessRogueDimensionData
  L3_2 = L3_2.NousStoryInfo
  L4_2 = L3_2.SubMissionDict
  L5_2 = L4_2
  L4_2 = L4_2.TryGetValue
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if L5_2 == nil then
    return
  end
  L6_2 = 0
  L7_2 = L5_2.PrevSubStory
  if L7_2 ~= nil then
    L7_2 = L5_2.PrevSubStory
    L6_2 = L7_2.SubStoryID
  end
  L8_2 = A0_2
  L7_2 = A0_2._prepare_sub_story_data_items
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L4_1._prepare_sub_story_handbook_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChessRogueModule
  L3_2 = L3_2.ChessRogueDimensionData
  L3_2 = L3_2.NousStoryInfo
  L5_2 = L3_2
  L4_2 = L3_2.GetNextSubStoryIDs
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L5_2 = 0
  L6_2 = L4_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = L3_2.SubMissionDict
    L11_2 = L10_2
    L10_2 = L10_2.TryGetValue
    L12_2 = L9_2
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    if L11_2 ~= nil then
      L13_2 = A0_2
      L12_2 = A0_2._is_range_overlapped_with_ava_range
      L14_2 = L11_2.MinNousValue
      L15_2 = L11_2.MaxNousValue
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L12_2 then
        L13_2 = A0_2
        L12_2 = A0_2._convert_sub_story_data_item_to_segment_data
        L14_2 = L11_2
        L12_2 = L12_2(L13_2, L14_2)
        if A2_2 ~= nil then
          L13_2 = L11_2.SubStoryID
          if L13_2 == A2_2 then
            L12_2.is_recommended = true
          end
        end
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = A0_2._segment_datas
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L4_1._prepare_sub_story_data_items = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L3_2 = L2_2.ChessRogueDimensionData
  L3_2 = L3_2.NousStoryInfo
  L4_2 = L3_2.MainMissionDict
  L5_2 = L4_2
  L4_2 = L4_2.TryGetValue
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if L5_2 == nil then
    return
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2._segment_datas
  L9_2 = A0_2
  L8_2 = A0_2._convert_main_story_data_item_to_segment_data
  L10_2 = L5_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L5_2.MinNousValue
  L7_2 = A0_2._global_data
  L7_2 = L7_2.ava_min_nous_value
  if L6_2 > L7_2 then
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._segment_datas
    L9_2 = A0_2
    L8_2 = A0_2._create_empty_segment_data
    L10_2 = A0_2._global_data
    L10_2 = L10_2.ava_min_nous_value
    L11_2 = L5_2.MinNousValue
    L11_2 = L11_2 - 1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L6_2 = L5_2.MaxNousValue
  L7_2 = A0_2._global_data
  L7_2 = L7_2.ava_max_nous_value
  if L6_2 < L7_2 then
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._segment_datas
    L9_2 = A0_2
    L8_2 = A0_2._create_empty_segment_data
    L10_2 = L5_2.MaxNousValue
    L10_2 = L10_2 + 1
    L11_2 = A0_2._global_data
    L11_2 = L11_2.ava_max_nous_value
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L4_1._prepare_main_story_handbook_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._create_empty_segment_data
  L4_2 = A1_2.MinNousValue
  L5_2 = A1_2.MaxNousValue
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._handbook_story_id
  if L3_2 ~= nil then
    L3_2 = A1_2.SubStoryID
    L4_2 = A0_2._handbook_story_id
    L3_2 = L3_2 == L4_2
    L2_2.is_unlock_condition = L3_2
  else
    L3_2 = A1_2.IsUnlockedWithAllNext
    L2_2.is_finished = L3_2
  end
  return L2_2
end
L4_1._convert_sub_story_data_item_to_segment_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._create_empty_segment_data
  L4_2 = A1_2.MinNousValue
  L5_2 = A1_2.MaxNousValue
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._handbook_story_id
  if L3_2 ~= nil then
    L2_2.is_unlock_condition = true
  end
  return L2_2
end
L4_1._convert_main_story_data_item_to_segment_data = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L5_2 = A2_2
  if not A3_2 then
    L7_2 = A0_2
    L6_2 = A0_2._clip_to_ava_range
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2
    L7_2 = A0_2
    L6_2 = A0_2._clip_to_ava_range
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = G
  L6_2 = L6_2.new
  L7_2 = G
  L7_2 = L7_2.RogueNousValuePanelSegmentDisplayData
  L6_2 = L6_2(L7_2)
  L6_2.min_nous_value = L4_2
  L6_2.max_nous_value = L5_2
  return L6_2
end
L4_1._create_empty_segment_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_container_root
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._container_width = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._prepare_ui_segment_data
  L1_2(L2_2)
end
L4_1._prepare_ui_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._segment_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.min_nous_value
    L3_3 = A1_3.min_nous_value
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = A0_2._container_width
  L3_2 = A0_2._global_data
  L3_2 = L3_2.glob_nous_value_delta
  L2_2 = L2_2 / L3_2
  L1_2 = L1_2 - L2_2
  L2_2 = pairs
  L3_2 = A0_2._segment_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_position_by_nous_value
    L9_2 = L6_2.min_nous_value
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.ui_left_pos = L7_2
    L8_2 = A0_2
    L7_2 = A0_2._get_position_by_nous_value
    L9_2 = L6_2.max_nous_value
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.ui_right_pos = L7_2
    if 1 < L5_2 then
      L7_2 = L6_2.ui_left_pos
      L8_2 = L1_2 / 2
      L7_2 = L7_2 + L8_2
      L6_2.ui_left_pos = L7_2
    end
    L7_2 = A0_2._segment_datas
    L7_2 = #L7_2
    if L5_2 < L7_2 then
      L7_2 = L6_2.ui_right_pos
      L8_2 = L1_2 / 2
      L7_2 = L7_2 - L8_2
      L6_2.ui_right_pos = L7_2
    end
  end
end
L4_1._prepare_ui_segment_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A0_2._segment_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.panel
    if L7_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2._create_segment
      L9_2 = L6_2.ui_left_pos
      L10_2 = L6_2.ui_right_pos
      L11_2 = L6_2.ui_left_pos
      L10_2 = L10_2 - L11_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.panel = L7_2
    end
    L7_2 = A0_2._nous_value_info
    if L7_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._setup_segment_panel
      L9_2 = L6_2
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
    else
      L8_2 = A0_2
      L7_2 = A0_2._setup_story_handbook_segment_panel
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L4_1._setup_segment_panels = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.is_locked
  if L3_2 then
    L3_2 = A1_2.panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_locked_view
    L3_2(L4_2)
  elseif A2_2 then
    L3_2 = A1_2.panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_in_game_current_view
    L5_2 = A1_2.is_finished
    L6_2 = A1_2.is_recommended
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_in_game_view
    L5_2 = A1_2.is_finished
    L6_2 = A1_2.is_recommended
    L3_2(L4_2, L5_2, L6_2)
  end
end
L4_1._setup_segment_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_condition_view
  L4_2 = A1_2.is_unlock_condition
  L2_2(L3_2, L4_2)
end
L4_1._setup_story_handbook_segment_panel = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_load_meta_segment
  L5_2 = L5_2.Prefab
  L6_2 = A0_2._binder
  L6_2 = L6_2.prefab_load_meta_segment
  L6_2 = L6_2.transform
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.RogueNousValueSegmentPanel
  L7_2 = G
  L7_2 = L7_2.RogueNousValueSegmentPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_position
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_width
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L4_1._create_segment = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._seg_buoy_panels = L1_2
  L1_2 = A0_2._global_data
  L1_2 = L1_2.is_ava_min_limited
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_seg_buoy
    L3_2 = L1_1
    L3_2 = -L3_2
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_value
    L4_2 = A0_2._global_data
    L4_2 = L4_2.glob_min_nous_value
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._seg_buoy_panels
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._segment_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.min_nous_value
    if L6_2 <= 0 then
      L6_2 = L5_2.min_nous_value
      L7_2 = A0_2._global_data
      L7_2 = L7_2.glob_min_nous_value
      if L6_2 > L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._create_seg_buoy
        L8_2 = L5_2.ui_left_pos
        L9_2 = L0_1
        L9_2 = L9_2 / 2
        L8_2 = L8_2 - L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_value
        L9_2 = L5_2.min_nous_value
        L7_2(L8_2, L9_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._seg_buoy_panels
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
    L6_2 = L5_2.max_nous_value
    if 0 <= L6_2 then
      L6_2 = L5_2.max_nous_value
      L7_2 = A0_2._global_data
      L7_2 = L7_2.glob_max_nous_value
      if L6_2 < L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._create_seg_buoy
        L8_2 = L5_2.ui_right_pos
        L9_2 = L0_1
        L9_2 = L9_2 / 2
        L8_2 = L8_2 + L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_value
        L9_2 = L5_2.max_nous_value
        L7_2(L8_2, L9_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._seg_buoy_panels
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = A0_2._global_data
  L1_2 = L1_2.is_ava_max_limited
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_seg_buoy
    L3_2 = A0_2._container_width
    L4_2 = L1_1
    L3_2 = L3_2 + L4_2
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_value
    L4_2 = A0_2._global_data
    L4_2 = L4_2.glob_max_nous_value
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._seg_buoy_panels
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_seg_buoy_panels = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._seg_buoy_panels = L1_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = A0_2._segment_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.is_unlock_condition
    if L7_2 then
      L1_2 = L6_2
      break
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_seg_buoy
  L4_2 = L1_2.ui_left_pos
  L5_2 = L0_1
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_value
  L5_2 = L1_2.min_nous_value
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._seg_buoy_panels
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_seg_buoy
  L5_2 = L1_2.ui_right_pos
  L6_2 = L0_1
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_value
  L6_2 = L1_2.max_nous_value
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._seg_buoy_panels
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L4_1._setup_main_story_seg_buoy_panels = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_meta_seg_buoy
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_load_meta_seg_buoy
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.RogueNousValueSegBuoyPanel
  L6_2 = G
  L6_2 = L6_2.RogueNousValueSegBuoyPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_position
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L4_1._create_seg_buoy = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_buoy_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._create_cur_buoy
    L2_2 = L2_2(L3_2)
    A0_2._cur_buoy_panel = L2_2
  end
  L2_2 = A0_2._cur_buoy_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_corrected_position_for_cur_value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._cur_buoy_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_position
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_buoy_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_is_in_recommended_seg
  L6_2 = A0_2
  L5_2 = A0_2._is_in_recommended_segment
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_cur_buoy_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_meta_cur_buoy
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_meta_cur_buoy
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueNousValueCurBuoyPanel
  L5_2 = G
  L5_2 = L5_2.RogueNousValueCurBuoyPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L4_1._create_cur_buoy = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_nous_value
  L2_2 = A0_2._last_nous_value
  L3_2 = A0_2._preview_nous_value
  if L3_2 ~= nil then
    L1_2 = A0_2._preview_nous_value
    L2_2 = A0_2._cur_nous_value
  end
  if L1_2 ~= L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = nil
  L4_2 = A0_2._global_data
  L4_2 = L4_2.ava_min_nous_value
  if L1_2 == L4_2 then
    L3_2 = L2_1
  else
    L4_2 = A0_2._global_data
    L4_2 = L4_2.ava_max_nous_value
    if L1_2 == L4_2 then
      L3_2 = L3_1
    end
  end
  if L3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIPileToastMessageTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = true
  return L4_2
end
L4_1._try_show_limited_hint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_corrected_position_for_cur_value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._cur_buoy_panel
  L4_2 = L3_2
  L3_2 = L3_2.play_move_anim
  L5_2 = L2_2
  L6_2 = A1_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_update_anim_end
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L8_2 = A0_2._is_update_anim_with_block
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L4_1._play_cur_buoy_update_anim = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_buoy_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_segment_panels
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_buoy_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_hint_animation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_segment_data_by_nous_value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.panel
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._setup_segment_panel
      L5_2 = L2_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = L2_2.panel
      L4_2 = L3_2
      L3_2 = L3_2.play_hint_animation
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._preview_nous_value
  if L3_2 ~= nil then
    L3_2 = A0_2._preview_nous_value
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_show_limited_hint
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._update_anim_end_callback
  if L3_2 ~= nil then
    L3_2 = A0_2._update_anim_end_callback
    L3_2()
  end
end
L4_1._on_update_anim_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._global_data
  L2_2 = L2_2.glob_min_nous_value
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._container_width
  L3_2 = L2_2 * L3_2
  L4_2 = A0_2._global_data
  L4_2 = L4_2.glob_nous_value_delta
  L3_2 = L3_2 / L4_2
  return L3_2
end
L4_1._get_position_by_nous_value = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._segment_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.is_in_segment
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L4_1._get_segment_data_by_nous_value = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._get_segment_data_by_nous_value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L2_2.ui_left_pos
  L4_2 = L2_2.ui_right_pos
  L5_2 = L4_2 - L3_2
  L6_2 = L2_2.min_nous_value
  L7_2 = L2_2.max_nous_value
  L8_2 = L7_2 - L6_2
  L9_2 = A1_2 - L6_2
  L9_2 = L5_2 * L9_2
  L9_2 = L9_2 / L8_2
  L9_2 = L3_2 + L9_2
  return L9_2
end
L4_1._get_corrected_position_for_cur_value = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._global_data
  L3_2 = L3_2.ava_min_nous_value
  if A2_2 < L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2._global_data
  L3_2 = L3_2.ava_max_nous_value
  if A1_2 > L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
L4_1._is_range_overlapped_with_ava_range = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._global_data
  L2_2 = L2_2.ava_max_nous_value
  if A1_2 > L2_2 then
    L2_2 = A0_2._global_data
    L2_2 = L2_2.ava_max_nous_value
    return L2_2
  end
  L2_2 = A0_2._global_data
  L2_2 = L2_2.ava_min_nous_value
  if A1_2 < L2_2 then
    L2_2 = A0_2._global_data
    L2_2 = L2_2.ava_min_nous_value
    return L2_2
  end
  return A1_2
end
L4_1._clip_to_ava_range = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_segment_data_by_nous_value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L4_1._is_in_recommended_segment = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_ctrl_button
  L3_2 = L2_2
  L2_2 = L2_2.SetActionName
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_ctrl_tip
  L3_2 = L2_2
  L2_2 = L2_2.SetInControlTipKey
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.set_gamepad_action = L5_1
return L4_1
