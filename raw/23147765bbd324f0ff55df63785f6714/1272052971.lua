local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = "UIText_ChallengeActivity_HitCount"
L2_1 = "CommonQuestRewardPage_FadeIn"
L3_1 = "CommonRewardPage_Remind"
L4_1 = require
L5_1 = "Ui.SpaceZoo.SpaceZooQuestRewardPageBinder"
L4_1(L5_1)
L4_1 = require
L5_1 = "Ui.SpaceZoo.SpaceZooQuestRewardTabPanel"
L4_1(L5_1)
L4_1 = require
L5_1 = "Ui.SpaceZoo.SpaceZooQuestRewardTabPanelBinder"
L4_1(L5_1)
L4_1 = require
L5_1 = "Ui.SpaceZoo.SpaceZooQuestRewardInfoRowPanel"
L4_1(L5_1)
L4_1 = require
L5_1 = "Ui.SpaceZoo.SpaceZooQuestRewardInfoRowPanelBinder"
L4_1(L5_1)
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "SpaceZooQuestRewardPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
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
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooQuestRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._tab_rows = L1_2
  A0_2._cur_select_tab = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._activity_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.SpaceZooActivityRewardIsSeen = true
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_data
  L2_2(L3_2)
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_info
  L4_2 = A0_2._on_btn_reward_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._tab_rows
  L3_2 = #L3_2
  L4_2 = A0_2._on_tab_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._fade_in_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_fade_in_finish
  L4_2 = A0_2._fade_in_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_timer = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooTakeReward
  L4_2 = A0_2._on_reward_taken
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_default_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_zoom_gamepad_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  L2_2 = A1_2 == L2_2
  return L2_2
end
L4_1.can_to_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
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
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_first_quest_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.Action3
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_reward_panel
      L2_2 = L2_2.gameObject
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1._on_in_control_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L4_1._is_can_to_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_zoom_gamepad_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L4_1._on_enter_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_special_zoom_gamepad_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L4_1._on_leave_special_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_reward_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_reward_btn
  L2_2.ActionEnabled = A1_2
end
L4_1._setup_special_zoom_gamepad_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.unlock_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTime
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.BeginTimeDate
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_timer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_lock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_ActivityReward_UnlockTimeAfter"
  L1_2(L2_2, L3_2)
end
L4_1._setup_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_tab_click
  L5_2 = L1_2
  L4_2 = L1_2.get_tab_id
  L4_2 = L4_2(L5_2)
  L6_2 = L1_2
  L5_2 = L1_2.get_quest_data
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_default_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anim
  L1_2(L2_2)
end
L4_1._on_fade_in_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._spe_reward_item_id
  L2_2(L3_2, L4_2)
end
L4_1._on_btn_reward_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._spe_reward_item_id
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L4_1._on_btn_reward_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_get = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SpaceZooQuestRewardTabPanel
    L8_2 = G
    L8_2 = L8_2.SpaceZooQuestRewardTabPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_btn_root_callback
    L7_2 = A0_2._on_tab_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._tab_rows
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L9_2 = A0_2
  L8_2 = A0_2._is_tab_select
  L10_2 = L5_2.ID
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L4_1._on_tab_change = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SpaceZooQuestRewardInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.SpaceZooQuestRewardInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._quest_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L4_1._on_quest_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._expire_call_back = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._is_tab_select
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    return
  end
  A0_2._cur_select_tab = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_quest_tabs
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_normal_quest_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L4_1._on_tab_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_tabs
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_normal_quest_view
  L4_2 = A0_2._quest_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_special_quest_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_reward_dialog
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_reward_taken = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = A0_2._tab_rows
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = false
    L6_2 = 0
    L7_2 = A0_2._tab_rows
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.QuestList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L0_1
      L11_2 = L10_2
      L10_2 = L10_2.TryGetQuestData
      L12_2 = A0_2._tab_rows
      L12_2 = L12_2[L4_2]
      L12_2 = L12_2.QuestList
      L12_2 = L12_2[L9_2]
      L10_2 = L10_2(L11_2, L12_2)
      L10_2 = L10_2.Status
      L11_2 = CS
      L11_2 = L11_2.LEOGBBOPKKO
      L11_2 = L11_2.JKFPIINHGPD
      if L10_2 == L11_2 then
        L5_2 = true
        break
      end
    end
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_tab
      L7_2 = L6_2
      L6_2 = L6_2.GetShownItemByIndex
      L8_2 = L4_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2.UserObjectData
      return L6_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  return L1_2
end
L4_1._get_default_tab_panel = L5_1
function L5_1(A0_2)
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
L4_1._get_first_quest_target = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_select_tab
  L2_2 = L2_2 == A1_2
  return L2_2
end
L4_1._is_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._refresh_quest_tabs = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooQuestExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpaceZooQuestType
    L4_2 = L4_2.TimeLimitedReward
    if L3_2 == L4_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._tab_rows
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_2.Type
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.SpaceZooQuestType
      L4_2 = L4_2.TimeLimitedFinalReward
      if L3_2 == L4_2 then
        A0_2._special_tab_row = L2_2
        L3_2 = L0_1
        L4_2 = L3_2
        L3_2 = L3_2.TryGetQuestData
        L5_2 = L2_2.QuestList
        L5_2 = L5_2[0]
        L3_2 = L3_2(L4_2, L5_2)
        A0_2._special_quest_data = L3_2
      end
    end
  end
end
L4_1._refresh_quest_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._quest_data = A1_2
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.sort_quest_datas
  L3_2 = A0_2._quest_data
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_quest
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_quest
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_quest
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L4_1._refresh_normal_quest_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._special_quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestDisplay
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_reward_progress
  L2_2 = A0_2._special_quest_data
  L2_2 = L2_2.Progress
  L2_2 = 1.0 * L2_2
  L3_2 = A0_2._special_quest_data
  L3_2 = L3_2.TotalProgress
  L2_2 = L2_2 / L3_2
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._special_quest_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_got
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.KBBBFCIHJPC
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._special_quest_data
  L2_2 = L2_2.RewardID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L3_2[1]
  L4_2 = L4_2.ConfigID
  A0_2._spe_reward_item_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2[1]
  L5_2 = L5_2.ConfigID
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_reward_icon
  L8_2 = L4_2.ItemFigureIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_reward_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_1
  L8_2 = L3_2[1]
  L8_2 = L8_2.Count
  L5_2(L6_2, L7_2, L8_2)
end
L4_1._refresh_special_quest_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_list
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.RewardDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L4_1._show_reward_dialog = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._special_quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_final_reward
    L2_2 = L1_2
    L1_2 = L1_2.GetClip
    L3_2 = L3_1
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.length
    L3_2 = A0_2
    L2_2 = A0_2._add_count_down_timer
    L4_2 = A0_2._disable_effect_node
    L5_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._special_reward_timer = L2_2
    L2_2 = A0_2._special_reward_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._special_reward_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_final_reward
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._special_reward_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_final_reward
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_special_reward_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._disable_effect_node = L5_1
return L4_1
