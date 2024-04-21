local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.Components.ChessRogueMainMissionReplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.Components.ChessRogueMainMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStoryRewardDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainMissionReplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = 13
L3_1 = 10
function L4_1(A0_2)
  local L1_2
  A0_2._input_scale_ratio = 1
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_fade_in_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIChessRogueFocusMainMission
  L4_2 = A0_2.setup_focus_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_dialog
  L4_2 = A0_2._on_btn_reward_dialog
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_cursor_move
  L5_2 = A0_2._on_move_stops_by_limit
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_cursor_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChessRogueMainStoryReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._fetch_main_story_data
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._replay_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._main_story_data_lst
    L6_2 = L6_2.Count
    if L4_2 <= L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = A0_2._main_story_data_lst
      L9_2 = L4_2 - 1
      L8_2 = L8_2[L9_2]
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_MainStory_Quest_ProgressRate_Link"
  L4_2 = L1_1.ChessRogueDimensionData
  L4_2 = L4_2.ReplayInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetMainStoryUnlockedNum
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1.ChessRogueDimensionData
  L5_2 = L5_2.ReplayInfo
  L5_2 = L5_2.MainStoryList
  L5_2 = L5_2.Count
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.content
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localPosition = L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_cursor_move
    L1_2(L2_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L1_1.ChessRogueDimensionData
  L1_2 = L1_2.ReplayInfo
  L1_2 = L1_2.MainStoryList
  A0_2._main_story_data_lst = L1_2
end
L0_1._fetch_main_story_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._replay_panels = L1_2
  L1_2 = {}
  A0_2._replay_btn_transforms = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_mission_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueMainMissionPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueMainMissionPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_main_story_panel_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._replay_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._replay_btn_transforms
    L10_2 = L6_2
    L9_2 = L6_2.get_btn_ref
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.transform
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._ban_click
  if L3_2 then
    return
  end
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.is_in_replay_panel
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A1_2.Unlocked
  if L3_2 then
    A0_2._cur_data = A1_2
    L3_2 = A0_2._cur_panel
    if L3_2 then
      L3_2 = A0_2._cur_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_checked
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    A0_2._cur_panel = A2_2
    L3_2 = A0_2._cur_data
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L3_2(L4_2)
  else
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStoryLockedDialog"
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_exit_callback
    L6_2 = A0_2._on_exit_lock_dialog
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.SetMainStorySeen
  L4_2 = A1_2.StoryID
  L3_2(L4_2)
end
L0_1._on_main_story_panel_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._target_panel
  if L1_2 then
    L1_2 = A0_2._target_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_animator
    L3_2 = "Normal"
    L1_2(L2_2, L3_2)
    A0_2._target_panel = nil
  end
end
L0_1._on_exit_lock_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    L1_2 = A0_2._pre_hover_target_panel
    if L1_2 then
      L1_2 = A0_2._pre_hover_target_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_checked
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= "ShowMainStoryPanel" then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L2_2(L3_2)
end
L0_1._on_animation_fade_in_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_replay_panel
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStoryRewardDialog"
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_reward_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._pre_hover_target_panel
  if L1_2 then
    L1_2 = A0_2._pre_hover_target_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_click
    L1_2(L2_2)
  end
end
L0_1._on_cursor_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._try_get_hover_target
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if 0 < L1_2 then
    L3_2 = A0_2._replay_panels
    L2_2 = L3_2[L1_2]
  end
  L3_2 = A0_2._pre_hover_target_panel
  if L3_2 == L2_2 then
    return
  end
  L3_2 = A0_2._pre_hover_target_panel
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = "main mission trigger de select "
    L5_2 = tostring
    L6_2 = A0_2._pre_index
    if not L6_2 then
      L6_2 = -1
    end
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = A0_2._pre_hover_target_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._pre_hover_target_panel = L2_2
  A0_2._pre_index = L1_2
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = "main mission trigger select "
    L5_2 = tostring
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_checked
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = ipairs
    L4_2 = A0_2._replay_panels
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 ~= L2_2 then
        L9_2 = L7_2
        L8_2 = L7_2.set_checked
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L0_1._on_cursor_move = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_local_pos
  L1_2 = L1_2(L2_2)
  L2_2 = -1
  L3_2 = nil
  L4_2 = ipairs
  L5_2 = A0_2._replay_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.get_btn_ref
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L11_2 = A0_2
      L10_2 = A0_2._is_within_button_range
      L12_2 = L9_2.transform
      L13_2 = L1_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if L10_2 then
        L2_2 = L7_2
        L3_2 = L8_2
      end
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._try_get_hover_target = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2.localPosition
  L4_2 = A1_2.rect
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L5_2 = A1_2.rect
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L6_2 = A2_2.x
  L7_2 = A0_2._binder
  L7_2 = L7_2.content_rect_transform
  L7_2 = L7_2.localPosition
  L7_2 = L7_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = L3_2.x
  L7_2 = L7_2 - L5_2
  L6_2 = L6_2 > L7_2
  L7_2 = A2_2.x
  L8_2 = A0_2._binder
  L8_2 = L8_2.content_rect_transform
  L8_2 = L8_2.localPosition
  L8_2 = L8_2.x
  L7_2 = L7_2 - L8_2
  L8_2 = L3_2.x
  L8_2 = L8_2 + L5_2
  L7_2 = L7_2 < L8_2
  L8_2 = A2_2.y
  L9_2 = A0_2._binder
  L9_2 = L9_2.content_rect_transform
  L9_2 = L9_2.localPosition
  L9_2 = L9_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = L3_2.y
  L9_2 = L9_2 - L4_2
  L8_2 = L8_2 > L9_2
  L9_2 = A2_2.y
  L10_2 = A0_2._binder
  L10_2 = L10_2.content_rect_transform
  L10_2 = L10_2.localPosition
  L10_2 = L10_2.y
  L9_2 = L9_2 - L10_2
  L10_2 = L3_2.y
  L10_2 = L10_2 + L4_2
  L9_2 = L9_2 < L10_2
  L10_2 = L6_2 or L10_2
  L10_2 = L7_2 or L10_2
  L10_2 = L8_2 or L10_2
  if L6_2 and L7_2 and L8_2 then
    L10_2 = L9_2
  end
  return L10_2
end
L0_1._is_within_button_range = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_stick_up_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_left_stick_down_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_left_stick_left_press
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_left_stick_right_press
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_move_stops_by_limit = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = L3_1
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2._input_scale_ratio
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_up_press = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = L3_1
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2._input_scale_ratio
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_down_press = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = L3_1
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2._input_scale_ratio
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_left_press = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_rect_transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  L3_2 = L3_1
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2._input_scale_ratio
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_rect_transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = A0_2._binder
  L4_2 = L4_2.content_rect_transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1._on_left_stick_right_press = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._fetch_main_story_data
  L2_2(L3_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = ipairs
  L5_2 = A0_2._replay_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._main_story_data_lst
    L9_2 = L9_2.Count
    if L7_2 <= L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = A0_2._main_story_data_lst
      L12_2 = L7_2 - 1
      L11_2 = L11_2[L12_2]
      L9_2(L10_2, L11_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
    L9_2 = A0_2._main_story_data_lst
    L10_2 = L7_2 - 1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.StoryID
    L10_2 = L2_1
    if L9_2 == L10_2 then
      L10_2 = L8_2
      L9_2 = L8_2.get_btn_ref
      L9_2 = L9_2(L10_2)
      L2_2 = L9_2
    else
      L9_2 = A0_2._main_story_data_lst
      L10_2 = L7_2 - 1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.StoryID
      if L9_2 == A1_2 then
        L10_2 = L8_2
        L9_2 = L8_2.get_btn_ref
        L9_2 = L9_2(L10_2)
        L3_2 = L9_2
        A0_2._target_panel = L8_2
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.progress_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_RogueDLC_Main_Fraction"
  L7_2 = L1_1.ChessRogueDimensionData
  L7_2 = L7_2.ReplayInfo
  L8_2 = L7_2
  L7_2 = L7_2.GetMainStoryUnlockedNum
  L7_2 = L7_2(L8_2)
  L8_2 = L1_1.ChessRogueDimensionData
  L8_2 = L8_2.ReplayInfo
  L8_2 = L8_2.MainStoryList
  L8_2 = L8_2.Count
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L4_2 = L4_2.content
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.focus_helper
  L5_2 = L4_2
  L4_2 = L4_2.Move
  L6_2 = L3_2.transform
  L7_2 = L2_2.transform
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector3
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.focus_helper
  L5_2 = L4_2
  L4_2 = L4_2.RegisterFinishCallback
  L6_2 = A0_2._on_finish_callback
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2._ban_click = true
end
L0_1.setup_focus_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._target_panel
  if L1_2 then
    L1_2 = A0_2._target_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_animator
    L3_2 = "Highlighted"
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterSeconds
    L2_2 = 0.5
    function L3_2()
      local L0_3, L1_3, L2_3
      A0_2._ban_click = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_active_in_hierarchy
      L0_3 = L0_3(L1_3)
      if L0_3 == false then
        return
      end
      L0_3 = A0_2._target_panel
      L1_3 = L0_3
      L0_3 = L0_3.get_btn_ref
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.onClick
      L1_3 = L0_3
      L0_3 = L0_3.Invoke
      L0_3(L1_3)
      L0_3 = A0_2._target_panel
      L1_3 = L0_3
      L0_3 = L0_3.trigger_animator
      L2_3 = "Normal"
      L0_3(L1_3, L2_3)
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_finish_callback = L4_1
return L0_1
