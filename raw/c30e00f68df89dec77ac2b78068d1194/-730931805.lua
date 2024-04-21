local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSMissionInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSMissionInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.HeliobusActivityTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActivityTabPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4000
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_Entrance_MappingInfoID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_ActivityBegin_PhoneMessage_ID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_ActivityBegin_PhoneMessage_SubMissionID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.HeliobusModule
L5_1 = L5_1.HeliobusSNSData
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.MissionModule
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.ActivityModule
L7_1 = L7_1.ActivityType
L7_1 = L7_1.HeliobusActivity
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.ActivityStateEnum
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.GameCore
L9_1 = L9_1.ConstValueClientExcelTable
L9_1 = L9_1.GetData
L10_1 = "Activity_Heliobus_EntranceUnlock_SubMissionID"
L9_1 = L9_1(L10_1)
L9_1 = L9_1.Value
L9_1 = L9_1.UintValue
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = {}
  A0_2._config_ids = L4_2
end
L0_1.ctor = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_is_can_to_zoom2
    return L2_2(L3_2)
  end
end
L0_1._is_can_to_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L1_2 = #L1_2
  L2_2 = L8_1.Locked
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = A0_2._is_sp_main_mission_finish
    if not L1_2 then
      L1_2 = true
      return L1_2
    else
      L1_2 = A0_2._activity_data
      L1_2 = L1_2.IsPreGuideComplete
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._check_is_show_mission_panel
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = true
          return L1_2
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._check_is_can_to_zoom2 = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_share_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._special_zoom_btn_list
      L2_2 = L2_2[1]
      L2_2 = L2_2.gameObject
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_sp_zoom_area_enable
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_tip_btn_phase_reward
  L1_2.IsShowTip = false
end
L0_1._on_leave_special_zoom = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_first_zoom2_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_gamepad_hint
  L2_2(L3_2)
end
L0_1._on_enter_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L2_2 = L8_1.Locked
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_activity_state_switch
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = nil
    L2_2 = A0_2._is_sp_main_mission_finish
    if not L2_2 then
      L2_2 = A0_2._sp_mission_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_btn
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2._mission_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_btn
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
    L2_2 = L1_2.gameObject
    return L2_2
  end
end
L0_1._get_first_zoom2_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_sp_zone_game_pad
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishSubMission
  L4_2 = A0_2._on_finish_submission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phase_reward
  L4_2 = A0_2._on_btn_phase_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limit_reward
  L4_2 = A0_2._on_btn_limit_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._special_zoom_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phase_reward
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._special_zoom_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limit_reward
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_phase_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_phase_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_limit_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_limit_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._sp_mission_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.HeliobusCommonSNSMissionInfoPanel
    L4_2 = G
    L4_2 = L4_2.HeliobusCommonSNSMissionInfoPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._sp_mission_panel = L1_2
    L1_2 = A0_2._sp_mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.register_lock_callback
    L3_2 = A0_2._on_sp_mission_lock
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._sp_mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_sp_mission_panel
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._mission_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.HeliobusCommonSNSMissionInfoPanel
    L4_2 = G
    L4_2 = L4_2.HeliobusCommonSNSMissionInfoPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._mission_panel = L1_2
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.register_lock_callback
    L3_2 = A0_2._on_go_to_and_mission_lock
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.register_click_callback
    L3_2 = A0_2._on_click_mission_panel
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission_panel
    L1_2(L2_2, L3_2)
  end
  A0_2._is_condition_get = nil
  A0_2._is_sp_main_mission_finish = nil
  A0_2._is_guide_message_sub_mission_finish = nil
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusQuest"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_limit_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusLightCone"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_phase_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._custom_on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.SortedDisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._reward_items = L1_2
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
L0_1._refresh_config_ids = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L10_1
function L10_1(A0_2)
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
L0_1._on_btn_explain = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._check_enable_click_condition
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
  L1_2 = A0_2._is_guide_message_sub_mission_finish
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = L1_1
    L3_2 = {}
    L4_2 = L3_1
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
    return
  else
    L2_2 = A0_2
    L1_2 = A0_2._open_guide_mission_page
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "HeliobusActivityTabPanel"
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_goto_in_guide = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  if L2_2 ~= nil then
    L3_2 = L2_2.GuideConditions
    L4_2 = 0
    L5_2 = L3_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = L8_2.Type
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ConditionType
      L10_2 = L10_2.FinishMainMission
      if L9_2 == L10_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = tonumber
        L12_2 = L8_2.Param
        L11_2, L12_2 = L11_2(L12_2)
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetMainMissionData
    L9_2 = L1_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.IsFinish
    if not L8_2 then
      L8_2 = G
      L8_2 = L8_2.MissionUtils
      L8_2 = L8_2.common_jump_to_mission_by_main_mission
      L9_2 = L7_2
      L8_2(L9_2)
      return
    end
  end
end
L0_1._open_guide_mission_page = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_condition_get
  if L1_2 ~= true then
    return
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L2_2 = L8_1.PreGuide
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_goto_in_guide
    L1_2(L2_2)
    return
  else
    L1_2 = A0_2._activity_data
    L1_2 = L1_2.StateData
    L1_2 = L1_2.CurState
    L2_2 = L8_1.InProgress
    if L1_2 == L2_2 then
      L1_2 = A0_2._mission_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_mission_data
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = G
        L2_2 = L2_2.GotoManager
        L2_2 = L2_2.Goto
        L3_2 = 700
        L4_2 = {}
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.MainMissionType
        L5_2 = L5_2.None
        L5_2 = #L5_2
        L6_2 = L1_2.ID
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = G
        L2_2 = L2_2.UIManager
        L2_2 = L2_2.load_and_show
        L3_2 = "Ui.Common.Toast.PileToastCenterDialog"
        L4_2 = G
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = "UIText_Heliobus_ActivityPanel_MissionUntakeDesc"
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._on_click_mission_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._check_enable_click_condition
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.open_map_by_map_info_id
  L2_2 = L2_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "HeliobusActivityTabPanel"
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_goto_in_progress = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_condition_get
  if L1_2 ~= true then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._is_sp_main_mission_finish
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_go_to_and_mission_lock
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._is_guide_message_sub_mission_finish
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._check_enable_click_condition = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L2_2 = L7_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.NowTimeStamp
  L1_2[L2_2] = L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L0_1._refresh_every_day_go_to_reddot = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Reward.HeliobusLightConeRewardPage"
  L3_2 = A0_2._activity_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_phase_reward = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Reward.HeliobusQuestRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_limit_reward = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_pad_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_ids
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_condition
  L2_2(L3_2)
end
L0_1._on_select = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_huohuo_tail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_gui_pillow_tower
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L8_1.PreGuide
  L4_2 = A0_2._on_btn_goto_in_guide
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L8_1.InProgress
  L4_2 = A0_2._on_btn_goto_in_progress
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TypeParam
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._activity_data
    L6_2 = L6_2.TypeParam
    L6_2 = L6_2[L5_2]
    L8_2 = L1_2
    L7_2 = L1_2.Contains
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMainMissionDataWithPromise
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    A0_2._is_condition_get = true
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    A0_2._is_sp_main_mission_finish = true
    A0_2._sp_main_mission_data = nil
    L1_3 = 0
    L2_3 = A0_3.Count
    L2_3 = L2_3 - 1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      if L5_3 ~= nil then
        L6_3 = L5_3.IsFinish
        if L6_3 == false then
          A0_2._is_sp_main_mission_finish = false
        end
        L6_3 = A0_2._sp_main_mission_data
        if L6_3 == nil then
          L6_3 = L5_3.IsStart
          if L6_3 == true then
            A0_2._sp_main_mission_data = L5_3
          end
        end
      end
    end
    L1_3 = A0_2._sp_main_mission_data
    if L1_3 == nil then
      L1_3 = 0
      L2_3 = A0_3.Count
      L2_3 = L2_3 - 1
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_3[L4_3]
        if L5_3 ~= nil then
          L5_3 = A0_3[L4_3]
          A0_2._sp_main_mission_data = L5_3
          break
        end
      end
    end
    L1_3 = A0_2._sp_mission_panel
    L2_3 = L1_3
    L1_3 = L1_3.setup_view
    L3_3 = A0_2._sp_main_mission_data
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._is_sp_main_mission_finish
    if not L1_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_huohuo_tail
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = true
      L1_3(L2_3, L3_3)
    else
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_gui_pillow_tower
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._display_node
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_sp_zone_game_pad
    L1_3(L2_3)
    L1_3 = G
    L1_3 = L1_3.NotifyManager
    L1_3 = L1_3.notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.ActivityForceRefreshRedDot
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._bind_panel_reddot
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionDataWithPromise
  L4_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_3.IsFinish
      A0_2._is_guide_message_sub_mission_finish = L1_3
    else
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogErrorFormat
      L2_3 = "HeliobusActivityTabPanel: \230\156\170\232\142\183\229\190\151\231\139\144\230\150\139\229\191\151\229\188\130\231\159\173\228\191\161\229\188\149\229\175\188\229\173\144\228\187\187\229\138\161id: "
      L3_3 = L4_1
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      A0_2._is_guide_message_sub_mission_finish = nil
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._get_condition = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._is_sp_main_mission_finish
  end
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_sp_mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_sp_main_mission_finish
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_warning_sp_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_sp_main_mission_finish
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._is_sp_main_mission_finish
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_warning_sp_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Heliobus_RreMissionLock_Tips"
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L5_2 = A0_2
    L4_2 = A0_2._check_is_show_mission_panel
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._check_is_show_mission_panel
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._mission_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_post_mission
      L2_2(L3_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelDesc
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_gamepad_hint
  L2_2(L3_2)
end
L0_1._display_node = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_can_to_zoom2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 31
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_gamepad_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  L2_2 = A0_2._is_sp_main_mission_finish
  L2_2 = L1_2 or L2_2
  if L2_2 and L1_2 then
    L2_2 = L5_1.PostMissionInProgress
    L2_2 = L2_2 ~= nil
  end
  return L2_2
end
L0_1._check_is_show_mission_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_special_pad_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_sp_zoom_area_enable
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_sp_zone_game_pad = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2._activity_data
    L2_2 = L2_2.IsPreMissionComplete
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  ::lbl_12::
  return L2_2
end
L0_1._is_sp_zoom_area_enable = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.Toast.PileToastCenterDialog"
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_Activity_FindTrotter_UnExplored"
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_sp_mission_lock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.Toast.PileToastCenterDialog"
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_Activity_FindTrotter_UnExplored"
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_go_to_and_mission_lock = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityQuest"
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tab_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_reddot = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L1_2 = L1_2.StateData
    L1_2 = L1_2.IsPreMissionComplete
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "HeliobusGoto"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_btn_go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._bind_panel_reddot = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L4_1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_current_tab_item
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_condition
      L2_2(L3_2)
    end
  end
end
L0_1._on_finish_submission = L10_1
function L10_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L10_1
return L0_1
