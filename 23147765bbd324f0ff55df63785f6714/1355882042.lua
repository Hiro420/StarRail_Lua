local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.ActivityQuestTimeLimitPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitFirstDreamTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitCleanRoadTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitFindTreasureTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitWarReporterTabItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityQuestUITYPE
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityQuestTimeLimitPage"
L4_1 = G
L4_1 = L4_1.BasePage
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityQuestTimeLimitPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
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
  A0_2._default_tab_index = 1
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = L2_1._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L2_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L2_1._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityQuestTimeLimitData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityQuestTimeLimitGroups
  L1_2 = L1_2(L2_2)
  A0_2._quest_group_list = L1_2
  A0_2._select_quest_group_id = 1
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_items = L1_2
  L1_2 = 0
  L2_2 = A0_2._quest_group_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_sub_panel
    L7_2 = A0_2._quest_group_list
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._quest_group_list
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._select_quest_group_id
    if L6_2 == L7_2 then
      L6_2 = L4_2 + 1
      A0_2._default_tab_index = L6_2
    end
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L2_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._bind_reddot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 and nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L2_1._on_quest_get_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityQuestTimeLimitData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.PanelID
    if A1_2 ~= L3_2 then
      goto lbl_15
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  ::lbl_15::
end
L2_1._on_activity_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "QuestTimeLimitFadeInListActive" then
    L3_2 = A0_2
    L2_2 = A0_2.force_set_default_navigation_target
    L2_2(L3_2)
  end
end
L2_1._on_ui_animation_event = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.clear_new_reddot
      L1_2(L2_2)
    end
  end
end
L2_1._on_tab_pre_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L2_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._select_quest_group_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1._on_tab_item_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityQuestTimeLimitExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = L2_2.UIPanelType
  L5_2 = L1_1.FirstDream
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.QuestTimeLimitFirstDreamTabItem
    L7_2 = G
    L7_2 = L7_2.QuestTimeLimitFirstDreamTabItemBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_monster_mission
    L4_2(L5_2, L6_2)
  else
    L4_2 = L2_2.UIPanelType
    L5_2 = L1_1.CleanRoad
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = G
      L6_2 = L6_2.QuestTimeLimitCleanRoadTabItem
      L7_2 = G
      L7_2 = L7_2.QuestTimeLimitCleanRoadTabItemBinder
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L4_2
      L5_2 = L3_2
      L4_2 = L3_2.bind
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_map_mission
      L4_2(L5_2, L6_2)
    else
      L4_2 = L2_2.UIPanelType
      L5_2 = L1_1.FindTreasure
      if L4_2 == L5_2 then
        L5_2 = A0_2
        L4_2 = A0_2.create_panel
        L6_2 = G
        L6_2 = L6_2.QuestTimeLimitFindTreasureTabItem
        L7_2 = G
        L7_2 = L7_2.QuestTimeLimitFindTreasureTabItemBinder
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L3_2 = L4_2
        L5_2 = L3_2
        L4_2 = L3_2.bind
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_treasure_mission
        L4_2(L5_2, L6_2)
      else
        L4_2 = L2_2.UIPanelType
        L5_2 = L1_1.WarReporter
        if L4_2 == L5_2 then
          L5_2 = A0_2
          L4_2 = A0_2.create_panel
          L6_2 = G
          L6_2 = L6_2.QuestTimeLimitWarReporterTabItem
          L7_2 = G
          L7_2 = L7_2.QuestTimeLimitWarReporterTabItemBinder
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          L3_2 = L4_2
          L5_2 = L3_2
          L4_2 = L3_2.bind
          L6_2 = A0_2._binder
          L6_2 = L6_2.node_challenge_mission
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.register_click_callback
  L6_2 = A0_2._on_tab_item_select
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.setup_quest_group_row
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L2_1._create_sub_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 31
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 0.5
    L3_2 = A0_2._tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.get_navigation_target
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      L4_2 = A0_2._tab_control
      L4_2 = L4_2.current_select_item
      L5_2 = L4_2
      L4_2 = L4_2.move_panel_to_first
      L4_2(L5_2)
      L4_2 = A0_2._tab_control
      L4_2 = L4_2.current_select_item
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.setup_short_cut_hint_panel
    L6_2 = 62
    L4_2(L5_2, L6_2)
  end
  L3_2 = nil
  return L3_2
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item
  L3_2 = A0_2._default_tab_index
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2._binder
  L1_2 = L1_2.tab_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
end
L2_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._expire_call_back = L3_1
return L2_1
