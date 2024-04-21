local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.AbyssAdvertActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AbyssAdvertActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChallengeModule
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2._config_ids = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ConstValueClientExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "ChallengeStory_PreviewTime"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Value
  L4_2 = L4_2.IntValue
  A0_2._teaser_delay_days = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ConstValueClientExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "Abyss_UnlockMissionList"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Value
  L4_2 = L4_2.ArrayValue
  L5_2 = L4_2[0]
  L5_2 = L5_2.IntValue
  A0_2._pre_mission_id = L5_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff_panel
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    return L2_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = A0_2
    L4_2 = A0_2._is_can_to_zoom
    L6_2 = NavigationZoneType
    L6_2 = L6_2.Zone2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = 31
      if L4_2 then
        goto lbl_25
      end
    end
    L4_2 = 1
    ::lbl_25::
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_show_buff
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shop
  L4_2 = A0_2._on_btn_shop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show_buff
  L4_2 = A0_2._on_btn_show_buff
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityAbyssAdvert"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot_btn_go
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.SortedDisplayItemList
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChallengeModule
  L4_2 = L2_2
  L3_2 = L2_2.GetLatestScheduleChallengeGroupDataByGroupType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ChallengeGroupType
  L5_2 = L5_2.Memory
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_challenge_group_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tips
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_config_ids
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_teaser_panel
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L5_2 = L3_2
  L4_2 = L3_2.MainMissionDataPromised
  L6_2 = A0_2._pre_mission_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.Then
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = A0_2._pre_mission_id
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._pre_main_mission_data = L0_3
    L0_3 = A0_2._pre_main_mission_data
    L0_3 = A0_2._pre_main_mission_data
    L0_3 = L0_3 ~= nil and L0_3
    A0_2._pre_main_mission_doing = L0_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_btn_go
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_info
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_can_to_zoom
    L4_3 = NavigationZoneType
    L4_3 = L4_3.Zone2
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = 31
      if L2_3 then
        goto lbl_34
      end
    end
    L2_3 = 1
    ::lbl_34::
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._pre_main_mission_doing
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_progress_tips
      L0_3(L1_3)
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_tips = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L2_1
function L2_1(A0_2)
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
end
L0_1._setup_remain_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_challenge_group_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxFinishLevel
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L2_2 = A0_2._cur_challenge_group_data
    L2_2 = L2_2.ChallengeDatas
    L3_2 = L1_2 - 1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.Name
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityChallengeMaze_Process"
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_progress_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueChallengeActivity_NoRecord"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_progress_tips = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNextChallengeGroupData
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_group_near_begin
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_teaser_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_teaser_context
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_GameplayGuide_Preview_Content"
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = "UIText_ChallengeStory_Title"
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.teaser_remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTime
    L5_2 = L1_2.ScheduleData
    L5_2 = L5_2.BeginTimeDate
    L6_2 = A0_2._expire_call_back
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_teaser_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._pre_main_mission_doing
  if L3_2 then
    L3_2 = "UIText_ActivityCommon_Panel_GoToActivity"
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = "UIText_ActivityChallengeMaze_Goto_Button"
  ::lbl_11::
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._pre_main_mission_doing
  if L4_2 then
    L4_2 = A0_2._on_btn_go_mission
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = A0_2._on_btn_go
  ::lbl_22::
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_shop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._pre_main_mission_doing
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._pre_main_mission_doing
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._pre_main_mission_doing
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ChallengeModule
    L3_2 = L2_2
    L2_2 = L2_2.GetAvailableScheduleChallengeGroupDataList
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = #L1_2
    L2_2 = L1_2[1]
    L3_2 = L2_2
    L2_2 = L2_2.IsAvailable
    L2_2 = L1_2 ~= nil and L2_2
    A0_2._resident_finish = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._resident_finish
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_resident_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._resident_finish
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._resident_finish
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_resident_progress
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = G
      L4_2 = L4_2.ChallengeUtils
      L4_2 = L4_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips
      L4_2 = L4_2()
      L5_2 = G
      L5_2 = L5_2.ChallengeUtils
      L5_2 = L5_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips_param
      L5_2 = L5_2()
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_info = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.ScheduleData
    if L2_2 then
      L2_2 = A1_2.ScheduleData
      L2_2 = L2_2.BeginTimeDate
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TimeManager
      L3_2 = L3_2.Instance
      L3_2 = L3_2.NowDateTime
      L4_2 = L3_2
      L3_2 = L3_2.AddDays
      L5_2 = A0_2._teaser_delay_days
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2 <= L3_2
    end
  end
  return L2_2
end
L0_1._is_group_near_begin = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L7_2 = 0 < L7_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_explain = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.TrainEntranceID
  L2_2 = G
  L2_2 = L2_2.ChallengeUtils
  L2_2 = L2_2.get_challenge_memory_mapping_info_id
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.GotoByType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.AreaSwitch
  L4_2 = #L4_2
  L5_2 = {}
  L6_2 = L1_2
  L7_2 = L2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._clear_normal_red_dot
  L3_2(L4_2)
end
L0_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MessageModule
  L2_2 = G
  L2_2 = L2_2.ChallengeUtils
  L2_2 = L2_2.get_challenge_memory_resident_unlock_message_group_id
  L2_2 = L2_2()
  L4_2 = L1_2
  L3_2 = L1_2.TryGetMessageGroup
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.Status
    L5_2 = CS
    L5_2 = L5_2.KGPBLMLHIHC
    L5_2 = L5_2.COABKCNHMMN
    if L4_2 ~= L5_2 then
      L4_2 = G
      L4_2 = L4_2.GotoManager
      L4_2 = L4_2.GotoByType
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.GotoType
      L5_2 = L5_2.PhoneNotice
      L5_2 = #L5_2
      L6_2 = {}
      L7_2 = L2_2
      L6_2[1] = L7_2
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = G
    L4_2 = L4_2.MissionUtils
    L4_2 = L4_2.jump_to_mission
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = A0_2._pre_mission_id
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._clear_normal_red_dot
  L4_2(L5_2)
end
L0_1._on_btn_go_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoShopButton_ChallengeShop"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 1511
  L1_2(L2_2)
end
L0_1._on_btn_shop = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Challenge.Entrance.ChallengeEnvironmentInfoDialog"
  L3_2 = A0_2._cur_challenge_group_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_show_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ShowAbyssActivityNormalRedDot
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.ShowAbyssActivityNormalRedDot = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ActivityForceRefreshRedDot
    L2_2(L3_2)
  end
end
L0_1._clear_normal_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L2_1
return L0_1
