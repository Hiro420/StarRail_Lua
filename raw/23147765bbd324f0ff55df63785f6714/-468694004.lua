local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "StrongChallengeQuestRewardPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityStrongChallengeModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.QuestModule
L4_1 = "UIText_ChallengeActivity_HitCount"
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
  A0_2._is_save_by_click = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StrongChallengeQuestRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._tab_id_list = L1_2
  L1_2 = {}
  A0_2._tabs = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.StrongChallengeRewardSeen
  if not L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2.StrongChallengeRewardSeen = true
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ActivityForceRefreshRedDot
    L2_2(L3_2)
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "[StrongChallenge] RewardPage created!"
  L2_2(L3_2)
end
L1_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L1_1.dtor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._activity_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StrongChallengeQuestGroupExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    if L3_2 ~= nil then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._tab_id_list
      L6_2 = L3_2.QuestGroupID
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._tabs
      L5_2 = L3_2.QuestGroupID
      L6_2 = {}
      L7_2 = L3_2.QuestGroupID
      L6_2.id = L7_2
      L7_2 = L3_2.Name
      L6_2.name = L7_2
      L7_2 = {}
      L6_2.quest_ids = L7_2
      L4_2[L5_2] = L6_2
    end
  end
  L3_2 = pairs
  L4_2 = L2_1.AllStages
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._tabs
    L9_2 = L7_2.QuestGroupID
    L8_2 = L8_2[L9_2]
    if L8_2 ~= nil then
      L8_2 = A0_2._tabs
      L9_2 = L7_2.QuestGroupID
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.schedule_data
      if L8_2 == nil then
        L8_2 = A0_2._tabs
        L9_2 = L7_2.QuestGroupID
        L8_2 = L8_2[L9_2]
        L9_2 = L7_2.ScheduleData
        L8_2.schedule_data = L9_2
      end
      L8_2 = A0_2._tabs
      L9_2 = L7_2.QuestGroupID
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.quest_ids
      L9_2 = 0
      L10_2 = L7_2.QuestList
      L10_2 = L10_2.Length
      L10_2 = L10_2 - 1
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L8_2
        L15_2 = L7_2.QuestList
        L15_2 = L15_2[L12_2]
        L13_2(L14_2, L15_2)
      end
    end
  end
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = L0_1.FINAL_QUEST_ID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._final_quest = L3_2
end
L1_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_new_day_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_detail
  L4_2 = A0_2._on_btn_reward_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_icon
  L4_2 = A0_2._on_btn_reward_icon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._activity_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeDate
    function L4_2(A0_3)
      local L1_3, L2_3
      L2_3 = A0_3
      L1_3 = A0_3.exit
      L1_3(L2_3)
    end
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_lock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_ActivityReward_UnlockTimeAfter"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
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
end
L1_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._cur_select_tab_panel = nil
end
L1_1._on_dispose = L5_1
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
L1_1._init_ui_navigation = L5_1
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
L1_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L5_1
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
L1_1._on_in_control_click = L5_1
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
L1_1._is_can_to_special_zoom = L5_1
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
L1_1._on_enter_special_zoom = L5_1
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
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_special_zoom_gamepad_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1._on_leave_special_zoom = L5_1
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
L1_1._get_first_quest_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = ipairs
  L2_2 = A0_2._tab_id_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._tabs
    L6_2 = L6_2[L5_2]
    L7_2 = ipairs
    L8_2 = L6_2.quest_ids
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L3_1
      L13_2 = L12_2
      L12_2 = L12_2.TryGetQuestData
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 ~= nil then
        L13_2 = L12_2.Status
        L14_2 = CS
        L14_2 = L14_2.LEOGBBOPKKO
        L14_2 = L14_2.JKFPIINHGPD
        if L13_2 == L14_2 then
          L13_2 = L4_2 - 1
          return L13_2
        end
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L1_1._get_select_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_select_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_tab
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogWarning
    L4_2 = "[StrongChallenge] Can not find scroll_tab! `selectIndex`="
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.UserObjectData
  return L3_2
end
L1_1._get_default_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_selected
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L1_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._tabs
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L1_1._refresh_quest_tabs = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_select_tab_panel
  L2_2 = L1_2
  L1_2 = L1_2.schedule_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    A0_2._is_unlock_quests = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_unlock_quests
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._is_unlock_quests
    if not L2_2 then
      L2_2 = L1_2.BeginTimeStamp
      A0_2._unlock_time = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.unlock_timer
      L3_2 = L2_2
      L2_2 = L2_2.SetTargetTimeByTimeStamp
      L4_2 = A0_2._unlock_time
      L5_2 = A0_2._on_new_day_refresh
      L6_2 = A0_2
      L7_2 = 2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
  L2_2 = A0_2._cur_select_tab_panel
  L3_2 = L2_2
  L2_2 = L2_2.quest_data
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.QuestUtils
  L3_2 = L3_2.sort_quest_datas_stabled
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._sorted_quest_data = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_quest
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._sorted_quest_data
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_quest
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_quest
  L4_2 = L3_2
  L3_2 = L3_2.PlayFadeIn
  L3_2(L4_2)
end
L1_1._refresh_normal_quest_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._final_quest
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_BoxingClub_ResonanceActivity_FinalReward_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._final_quest
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._final_quest
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemDataFromReward
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = #L2_2
  if L3_2 then
    L3_2 = L2_2[1]
    L3_2 = L3_2.ConfigID
    A0_2._spe_reward_item_id = L3_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2[1]
    L4_2 = L4_2.ConfigID
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_reward_icon
    L7_2 = L3_2.ItemFigureIconPath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_reward_count
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L4_1
    L7_2 = L2_2[1]
    L7_2 = L7_2.Count
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._final_quest
  L5_2 = L5_2.Progress
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._final_quest
  L5_2 = L5_2.TotalProgress
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_reward_progress
  L4_2 = A0_2._final_quest
  L4_2 = L4_2.Progress
  L4_2 = 1.0 * L4_2
  L5_2 = A0_2._final_quest
  L5_2 = L5_2.TotalProgress
  L4_2 = L4_2 / L5_2
  L3_2.fillAmount = L4_2
  L3_2 = A0_2._final_quest
  L3_2 = L3_2.Status
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_in_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.KBBBFCIHJPC
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_got
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_dark_cover
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.JKFPIINHGPD
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  if L3_2 == L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.reward_anim
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L4_2(L5_2)
  end
end
L1_1._refresh_special_quest_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_tabs
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_normal_quest_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_special_quest_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_reward_dialog
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_quest_get_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_normal_quest_view
  L1_2(L2_2)
end
L1_1._on_new_day_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._final_quest
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_get = L5_1
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
L1_1._on_btn_reward_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._spe_reward_item_id
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._spe_reward_item_id
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_btn_reward_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._expire_call_back = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.StrongChallengeQuestRewardTabPanel
    L8_2 = G
    L8_2 = L8_2.StrongChallengeQuestRewardTabPanelBinder
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
  L7_2 = A0_2._tabs
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_quest_tab_click
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L1_1._on_tab_change = L5_1
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
    L7_2 = L7_2.StrongChallengeQuestRewardInfoRow
    L8_2 = G
    L8_2 = L8_2.StrongChallengeQuestRewardInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_quest
  L7_2 = A0_2._sorted_quest_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._is_unlock_quests
  L9_2 = true
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L1_1._on_quest_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_select_tab_panel
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._cur_select_tab_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_select_tab_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
  A0_2._cur_select_tab_panel = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_normal_quest_view
  L2_2(L3_2)
end
L1_1._on_quest_tab_click = L5_1
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
L1_1._show_reward_dialog = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_reward_btn
  L2_2.ActionEnabled = A1_2
end
L1_1._setup_special_zoom_gamepad_enable = L5_1
return L1_1
