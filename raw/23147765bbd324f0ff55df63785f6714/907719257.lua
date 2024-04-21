local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Reward.Components.RogueNousQuestRewardTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Reward.RogueNousQuestRewardPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousQuestRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueBg_FadeIn"
L2_1 = "RogueNousDlcBg_FadeIn"
L3_1 = "RogueNousDlcBg_FadeOut"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousQuestRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
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
  A0_2._is_first_click = true
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_tab_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_hard
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
  A0_2._is_first_click = false
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "Menu_Confirm"
    L7_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = {}
      L6_2 = "ActionGroup_Return"
      L5_2[1] = L6_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.get_unclaimed_reward_index
  L1_2 = L1_2(L2_2)
  if L1_2 ~= 0 then
    L1_2 = 1
    return L1_2
  else
    L1_2 = A0_2._tail_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.get_unclaimed_reward_index
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      L1_2 = 2
      return L1_2
    end
  end
  L1_2 = 1
  return L1_2
end
L0_1._get_first_tab_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_mission_reward_data
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueNousQuestRewardTabItem
  L5_2 = G
  L5_2 = L5_2.RogueNousQuestRewardTabItemBinder
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mission_tab_item = L2_2
  L2_2 = A0_2._mission_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_item_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_reddot_key
  L4_2 = "RogueNousMissionReward"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = A0_2._mission_tab_item
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_mission
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "RogueNousMissionReward"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_mission_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.create_tail_reward_data
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.RogueNousQuestRewardTabItem
  L6_2 = G
  L6_2 = L6_2.RogueNousQuestRewardTabItemBinder
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._tail_tab_item = L3_2
  L3_2 = A0_2._tail_tab_item
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item_root
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tail_tab_item
  L4_2 = L3_2
  L3_2 = L3_2.set_reddot_key
  L5_2 = "RogueNousEndGameReward"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item_created
  L5_2 = A0_2._tail_tab_item
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_tab_tail
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousEndGameReward"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_tail_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._init_tab_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2.__name
  L4_2 = tostring
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = nil
  L3_2 = nil
  if L1_2 == 1 then
    L4_2 = A0_2._binder
    L2_2 = L4_2.anim_bg
    L4_2 = A0_2._binder
    L3_2 = L4_2.anim_hard_bg
  else
    L4_2 = A0_2._binder
    L2_2 = L4_2.anim_hard_bg
    L4_2 = A0_2._binder
    L3_2 = L4_2.anim_bg
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 == 1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_hard
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 == 2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_first_click
  if L4_2 then
    L5_2 = L2_2
    L4_2 = L2_2.Play
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
    A0_2._is_first_click = false
  end
end
L0_1._on_tab_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.refresh_view
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  if L1_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_hard
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_normal
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.stop
  L2_2(L3_2)
end
L0_1._on_timer_out = L4_1
return L0_1
