local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.RaidModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.QuestModule
L5_1 = "UIText_ClockPark_Recover_Progress"
L6_1 = "UIText_ClockPark_EndlessMode_Unlock_Toast"
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "ActivityClockParkMainPage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L7_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_main_entrance
  L1_2 = L1_2.gameObject
  return L1_2
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone_reward
  L4_2 = A0_2._on_btn_lightcone_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limit_reward
  L4_2 = A0_2._on_btn_limit_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_endless_entrance
  L4_2 = A0_2._on_btn_endless_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_main_entrance
  L4_2 = A0_2._on_btn_main_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_raid_entrance
  L4_2 = A0_2._on_btn_raid_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_streetevent_entrance
  L4_2 = A0_2._on_btn_streetevent_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_present_entrance
  L4_2 = A0_2._on_btn_present_entrance
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_lightcone_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_lightcone_reward
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_main_entrance
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_main_entrance
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_raid_entrance
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_raid_entrance
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_streetevent_entrance
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_streetevent_entrance
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_present_entrance
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_present_entrance
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_endless_entrance
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_endless_entrance
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_lightcone_reward
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limit_reward
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._special_zoom_btn_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkInfoRefresh
  L4_2 = A0_2._setup_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkScriptUnlock
  L4_2 = A0_2._on_clock_park_script_unlock
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkTimeLimitRewardButton"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_timelimit_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkResidentReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_resident_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkLightConeRewardButton"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_lightconre_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkScriptNew"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_script_new
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkRaidNew"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_raid_new
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkSpecialMissionNew"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_streetevent_new
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ClockParkEndlessModeNew"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_endless_new
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_first = true
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timelimit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsInSchedule
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._is_can_to_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetClockParkActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer_lightcone
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeDate
    L4_2 = A0_2._expire_call_back
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer_timelimit
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeDate
    L4_2 = A0_2._expire_call_back
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timelimit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsInSchedule
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L0_1.Progress
  L2_2 = L2_2 / 100
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayingClockParkScriptData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_script_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ClockPark_MainPage_Tip3"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_current_script
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Row
    L5_2 = L5_2.ScriptTitle
    L3_2(L4_2, L5_2)
  else
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.GetAllClockParkScriptData
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    L5_2 = 0
    L6_2 = L3_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L0_1
      L10_2 = L9_2
      L9_2 = L9_2.CheckScriptUnlock
      L11_2 = L3_2[L8_2]
      L11_2 = L11_2.ID
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L4_2 = L3_2[L8_2]
        break
      end
    end
    if L4_2 ~= nil then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_script_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_ClockPark_MainPage_Tip4"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_current_script
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2.Row
      L7_2 = L7_2.ScriptTitle
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_script_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_ClockPark_MainPage_Tip1"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_current_script
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_ClockPark_MainPage_Tip2"
      L5_2(L6_2, L7_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_script_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L5_1
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_progress
  L4_2 = L0_1.Progress
  L4_2 = L4_2 / 10000
  L3_2.fillAmount = L4_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAllClockParkScriptData
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_script_recover_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.GetReachedTrueEndingScriptCount
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_script_total_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2.Count
  L4_2(L5_2, L6_2)
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetEndlessScriptData
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ConditionCheckerUtil
  L5_2 = L5_2.DoCheckConditions
  L6_2 = L4_2.Row
  L6_2 = L6_2.ScriptUnlockCondition
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_endless_progressing
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2.IsPlaying
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_endless_normal_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_endless_lock_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L6_2 = true
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ClockParkProgressRewardExcelTable
  L7_2 = L7_2.GetEnumerator
  L7_2 = L7_2()
  while true do
    L9_2 = L7_2
    L8_2 = L7_2.MoveNext
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      break
    end
    L8_2 = L7_2.Current
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.IsQuestStatus
    L11_2 = L8_2.QuestID
    L12_2 = CS
    L12_2 = L12_2.LEOGBBOPKKO
    L12_2 = L12_2.CMOFEAFMGAK
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if not L9_2 then
      L6_2 = false
      break
    end
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_lightcone_reward_received
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_mission_lock
  L8_2(L9_2)
  L8_2 = A0_2._is_first
  if L8_2 then
    L9_2 = A0_2
    L8_2 = A0_2._init_ui_navigation
    L8_2(L9_2)
    A0_2._is_first = false
  end
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L7_1._expire_call_back = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Acitivity_ClockPark_MainPage_LockSubmission"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  A0_2._lock_submission_id = 0
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.GetSubMissionState
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.SubMissionState
      L8_2 = L8_2.Started
      L7_2 = L7_2 == L8_2
      if L7_2 then
        A0_2._lock_submission_id = L6_2
        break
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_main_entrance_mission_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._lock_submission_id
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_title_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._lock_submission_id
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
end
L7_1._setup_mission_lock = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L7_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetClockParkLightConeRewardHasSeen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkLightConeRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "LightConeReward"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L7_1._on_btn_lightcone_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_time_limit_activity_reward_id
  L1_2 = L1_2()
  if L1_2 == nil or L1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.SetClockParkLimitRewardHasSeen
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ActivityRewardUtils
  L2_2 = L2_2.show_common_activity_reward_page
  L3_2 = L1_2
  L4_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkTimeLimitRewardPageBinder"
  L5_2 = nil
  L6_2 = "ClockParkTimeLimitRewardTab"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = ""
  L5_2 = "TimeLimitReward"
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L7_1._on_btn_limit_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "EndlessScript"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetEndlessScriptData
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConditionCheckerUtil
  L2_2 = L2_2.DoCheckConditions
  L3_2 = L1_2.Row
  L3_2 = L3_2.ScriptUnlockCondition
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil and L2_2 then
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.GetPlayingClockParkScriptData
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.IsInfinite
      if L4_2 == false then
        L4_2 = G
        L4_2 = L4_2.NotifyManager
        L4_2 = L4_2.notify
        L5_2 = G
        L5_2 = L5_2.CS
        L5_2 = L5_2.NotifyType
        L5_2 = L5_2.UIPileToastMessageTextID
        L6_2 = "UIText_ClockPark_Playing_Toast"
        L4_2(L5_2, L6_2)
        return
      end
    end
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_async_show
    L5_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkScriptDetailPage"
    L6_2 = L1_2.ID
    L4_2(L5_2, L6_2)
    L4_2 = L0_1
    L5_2 = L4_2
    L4_2 = L4_2.SetEndlessScriptUnlock
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = "5320"
    L4_2(L5_2, L6_2)
  else
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_endless_entrance
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
end
L7_1._on_btn_endless_entrance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "MainEntrance"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._lock_submission_id
  if L1_2 ~= 0 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetSubMissionData
    L3_2 = A0_2._lock_submission_id
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.Mission
    L3_2 = #L3_2
    L4_2 = {}
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = L1_2.MainMissionID
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapePage"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_main_entrance
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_main_entrance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkGamePlayRaidLevelPage"
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "RaidEntrance"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_raid_entrance
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_raid_entrance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkGamePlayRaidLevelPage"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "StreetEventEntrance"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_streetevent_entrance
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_streetevent_entrance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkResidentRewardPage"
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "ResidentReward"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_present_entrance
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_present_entrance = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetEndlessScriptData
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ID
  if L3_2 == A1_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkScriptDetailPage"
    L5_2 = L2_2.ID
    L3_2(L4_2, L5_2)
  end
end
L7_1._on_clock_park_script_unlock = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
L7_1._on_in_control_click = L8_1
return L7_1
