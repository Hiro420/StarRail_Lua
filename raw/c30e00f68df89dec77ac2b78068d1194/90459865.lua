local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubResonanceRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestLevelPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestTreasurePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceQuestTreasurePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BoxingClubModule
L3_1 = "BoxingClubResonance_FinalQuest"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubResonanceRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = true
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2.current_select_idx_from_zero = nil
  A0_2.current_data = nil
  L1_2 = {}
  A0_2.quest_list = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_x
  L4_2 = A0_2._on_btn_gamepad_x
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BoxingClubResonanceQuestTreasurePanel
  L4_2 = G
  L4_2 = L4_2.BoxingClubResonanceQuestTreasurePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.treasure_panel = L1_2
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_treasure
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_level_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_quest_data
  L1_2 = L1_2(L2_2)
  A0_2.data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.init_treasure_quest_id
  L1_2(L2_2)
  L1_2 = L2_1.BoxingClubLevelDict
  A0_2.level_dict = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubActivityType
  L1_2 = L1_2.Second
  A0_2._boxing_club_activity_type = L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.treasure_quest_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._quest_get_click
  L4_2 = A0_2
  L5_2 = A0_2.treasure_quest_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_first_unfinished_level_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_level_button
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_can_recieve_anim
  L1_2(L2_2)
end
L0_1._on_entrance_anim_end = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.treasure_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_in_control_tips_active
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2, L5_2, L6_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_1
      L2_2.alpha = 0.5
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ItemDetail"
      L6_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_quest_object
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ItemDetail"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_zoom_1
  L1_2.alpha = 0.5
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_zoom_2
  L1_2.alpha = 0.5
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_tips_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_get_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_2
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_2
      L2_2.alpha = 1
    end
  end
  L2_2 = A0_2.treasure_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_in_control_get_enabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.treasure_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_in_control_tips_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_leave_special_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_treasure_quest_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_gamepad_x = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = A0_2.treasure_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_in_control_tips_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_zoom
    L1_2 = L1_2(L2_2)
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    L1_2 = L1_2 == L2_2
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.treasure_panel
    if L1_2 == nil then
      return
    end
    L1_2 = A0_2.treasure_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_reward_dialog
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_zoom
    L1_2 = L1_2(L2_2)
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L1_2 = A0_2.current_quest_panel
      if L1_2 == nil then
        return
      end
      L1_2 = A0_2.current_quest_panel
      L2_2 = L1_2
      L1_2 = L1_2.show_reward_dialog
      L1_2(L2_2)
    end
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_first_unfinished_level_index
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_quest_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.treasure_panel
  if L1_2 ~= nil then
    L1_2 = A0_2.treasure_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_treasure_quest_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetBoxingClubResonanceActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer_page
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = L1_2.EndTimeDate
  L5_2 = A0_2.exit
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.UintValue
      A0_2.treasure_quest_id = L2_2
    end
  end
end
L0_1.init_treasure_quest_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRewardQuestSeriesList
  L4_2 = A0_2._boxing_club_activity_type
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._get_quest_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.data
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BoxingClubResonanceQuestLevelPanel
    L9_2 = G
    L9_2 = L9_2.BoxingClubResonanceQuestLevelPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_callback
  L8_2 = A0_2._on_level_button
  L9_2 = A0_2
  L10_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L4_2
end
L0_1._on_level_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.current_select_idx_from_zero
  if L2_2 == A1_2 then
    L2_2 = A0_2.current_select_idx_from_zero
    if L2_2 then
      return
    end
  end
  L2_2 = A0_2.current_select_idx_from_zero
  if L2_2 ~= A1_2 then
    L2_2 = A0_2.current_select_idx_from_zero
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_level_checked_by_index
      L4_2 = A0_2.current_select_idx_from_zero
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_level_checked_by_index
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_current_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quest
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_quest
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1._on_level_button = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1.BoxingClubLevelDict
  L2_2 = A0_2.current_data
  L2_2 = L2_2.ChallengeID
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.ScheduleData
  if L2_2 then
    L2_2 = L1_2.IsInSchedule
    L2_2 = not L2_2
  end
  A0_2._cur_level_lock = L2_2
  L2_2 = A0_2._cur_level_lock
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_unlock_timer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_timer_level
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTimeByTimeStamp
    L4_2 = L1_2.ScheduleData
    L4_2 = L4_2.BeginTimeStamp
    L5_2 = A0_2.refresh_quest
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_unlock_timer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_unlock_time_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_time_node
  L1_2(L2_2)
  L1_2 = {}
  A0_2.quest_list = L1_2
  L1_2 = A0_2.support_list
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.support_list = L1_2
  L1_2 = 0
  L2_2 = A0_2.current_data
  L2_2 = L2_2.QuestList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.current_data
    L5_2 = L5_2.QuestList
    L5_2 = L5_2[L4_2]
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.quest_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.LEOGBBOPKKO
    L8_2 = L8_2.JKFPIINHGPD
    if L7_2 == L8_2 then
      L7_2 = A0_2.support_list
      L7_2[L5_2] = 1
    else
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.LEOGBBOPKKO
      L8_2 = L8_2.KBBBFCIHJPC
      if L7_2 == L8_2 then
        L7_2 = A0_2.support_list
        L7_2[L5_2] = 2
      else
        L7_2 = A0_2.support_list
        L7_2[L5_2] = 3
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2.quest_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2.support_list
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2.support_list
    L3_3 = L3_3[A1_3]
    if L2_3 ~= L3_3 then
      L2_3 = A0_2.support_list
      L2_3 = L2_3[A0_3]
      L3_3 = A0_2.support_list
      L3_3 = L3_3[A1_3]
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = A0_3 < A1_3
      return L2_3
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.current_data
  L3_2 = L3_2.QuestList
  L3_2 = L3_2.Length
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1.refresh_quest = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_level
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.set_checked
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      return L4_2
    end
  end
  L4_2 = nil
  return L4_2
end
L0_1.set_level_checked_by_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.current_select_idx_from_zero = A1_2
  L2_2 = A0_2.data
  L3_2 = A1_2 + 1
  L2_2 = L2_2[L3_2]
  A0_2.current_data = L2_2
end
L0_1._set_current_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.quest_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BoxingClubResonanceQuestRowPanel
    L9_2 = G
    L9_2 = L9_2.BoxingClubResonanceQuestRowPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L9_2 = A0_2._cur_level_lock
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_callback
  L8_2 = A0_2._quest_get_click
  L9_2 = A0_2
  L10_2 = L3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_select_callback
  L8_2 = A0_2._quest_on_select
  L9_2 = A0_2
  L10_2 = L5_2
  L11_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L4_2
end
L0_1._on_quest_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L4_2 = L2_2
  L3_2 = L2_2.Add
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.JCCHEMBPEEE
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._quest_get_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2.current_quest_panel = A1_2
end
L0_1._quest_on_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.need_to_refresh
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quest
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_treasure_panel
  L2_2(L3_2)
  L2_2 = A0_2.treasure_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2.data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = 0
    L7_2 = L5_2.QuestList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L1_1
      L11_2 = L10_2
      L10_2 = L10_2.TryGetQuestData
      L12_2 = L5_2.QuestList
      L12_2 = L12_2[L9_2]
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 ~= nil then
        L11_2 = L10_2.Status
        L12_2 = CS
        L12_2 = L12_2.LEOGBBOPKKO
        L12_2 = L12_2.KBBBFCIHJPC
        if L11_2 ~= L12_2 then
          L11_2 = L10_2.Status
          L12_2 = CS
          L12_2 = L12_2.LEOGBBOPKKO
          L12_2 = L12_2.JKFPIINHGPD
          if L11_2 ~= L12_2 then
            goto lbl_32
          end
        end
        L11_2 = L4_2 - 1
        return L11_2
      end
      ::lbl_32::
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_first_unfinished_level_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.treasure_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1.refresh_treasure_panel = L4_1
return L0_1
