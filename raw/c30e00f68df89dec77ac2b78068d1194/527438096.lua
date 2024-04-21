local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.HeliobusMainEntranceFunctionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.HeliobusMainEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusMainEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Story/ActivityEntry/HeliobusEntry/ActivityEntry_Heliobus.prefab"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.HeliobusModule
L2_1 = L2_1.HeliobusSNSData
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusMainEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureCharacterController
  L1_2.AllowPlayIdleShow = false
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetHeliobusActivityData
  L2_2 = L2_2(L3_2)
  A0_2._activity_data = L2_2
  L2_2 = A0_2._activity_data
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ResidentActivityModule
    L3_2 = L2_2
    L2_2 = L2_2.GetHeliobusActivityData
    L2_2 = L2_2(L3_2)
    A0_2._activity_data = L2_2
    A0_2._is_resident = true
  end
  L2_2 = ","
  L3_2 = {}
  L4_2 = A1_2
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L5_2 = L4_2
  L4_2 = L4_2.gmatch
  L6_2 = "(.-)"
  L7_2 = L2_2
  L6_2 = L6_2 .. L7_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  for L7_2 in L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = tonumber
  L5_2 = L3_2[1]
  L4_2 = L4_2(L5_2)
  A0_2._anchor_group_id = L4_2
  L4_2 = tonumber
  L5_2 = L3_2[2]
  L4_2 = L4_2(L5_2)
  A0_2._anchor_id = L4_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule_tip
  L4_2 = A0_2._on_btn_rule_tip
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
  L3_2 = L3_2.btn_quest_reward
  L4_2 = A0_2._on_btn_quest_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_anchor_mission
  L4_2 = A0_2._on_btn_anchor_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnComment
  L4_2 = A0_2._setup_anchor_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusMainEntranceFunctionPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusMainEntranceFunctionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._function_panel = L1_2
  L1_2 = A0_2._function_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_function_panel
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._special_zoom_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone_reward
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._special_zoom_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quest_reward
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._special_zoom_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusQuest"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_quest_reward_reddot
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
  L6_2 = L6_2.node_lightcone_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_preload
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.GameObjectType
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._virtual_camera_controller
  if L1_2 then
    L1_2 = A0_2._virtual_camera_controller
    L2_2 = L1_2
    L1_2 = L1_2.DeActiveVirtualCamera
    L3_2 = A0_2._node_virtual_camera
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._hide_all_npc_and_monsters
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
  L1_2 = A0_2._prefab_loader
  if L1_2 ~= nil then
    L1_2 = A0_2._prefab_loader
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._prefab_loader = nil
  end
  A0_2._activity_data = nil
  A0_2._virtual_camera_controller = nil
  A0_2._node_virtual_camera = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureCharacterController
  L1_2.AllowPlayIdleShow = true
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_in_control_input_switch
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._function_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_share_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
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
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_time_limit_activity_open
    L1_2 = L1_2 == true
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_time_limited_reward_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_function_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anchor_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._instantiate_prefab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_all_npc_and_monsters
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.close_waypoint_billboard
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.RPG_UI_Prefab_Loader
  L1_2 = L1_2.Create
  L1_2 = L1_2()
  A0_2._prefab_loader = L1_2
  L1_2 = A0_2._prefab_loader
  L2_2 = L1_2
  L1_2 = L1_2.AsyncLoadPrefab
  L3_2 = L1_1
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_load_prefab
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._instantiate_prefab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._is_resident
    if not L1_2 then
      L1_2 = A0_2._activity_data
      L2_2 = L1_2
      L1_2 = L1_2.IsInSchedule
      L1_2 = L1_2(L2_2)
      if L1_2 then
        A0_2._is_time_limit_activity_open = true
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_limited_reward
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.remain_time1
        L2_2 = L1_2
        L1_2 = L1_2.SetTargetTimeByTimeStamp
        L3_2 = A0_2._activity_data
        L3_2 = L3_2.ScheduleData
        L3_2 = L3_2.EndTimeStamp
        L4_2 = A0_2._hide_limited_reward_panel
        L5_2 = A0_2
        L6_2 = 2
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.remain_time2
        L2_2 = L1_2
        L1_2 = L1_2.SetTargetTimeByTimeStamp
        L3_2 = A0_2._activity_data
        L3_2 = L3_2.ScheduleData
        L3_2 = L3_2.EndTimeStamp
        L4_2 = A0_2._hide_limited_reward_panel
        L5_2 = A0_2
        L6_2 = 2
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  else
    A0_2._is_time_limit_activity_open = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_limited_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_time_limited_reward_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._function_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_function_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAnchroPostCanTake
  L1_2 = L1_2(L2_2)
  A0_2._anchor_post = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_anchor_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._anchor_post
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_anchor_mission = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.show_introduce
    L2_2 = A0_2._activity_data
    L2_2 = L2_2.TagDesc
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.IntroDesc
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_rule_tip = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone_reward
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Reward.HeliobusLightConeRewardPage"
  L3_2 = A0_2._activity_data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_lightcone_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quest_reward
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Reward.HeliobusQuestRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_quest_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._anchor_post
  if L1_2 == nil then
    return
  end
  L1_2 = L2_1.IsMissionPrepared
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSMissionConfirmDialog"
  L3_2 = A0_2._anchor_post
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_anchor_mission = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = A1_2
  L4_2 = ""
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._node_root = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = A1_2
  L4_2 = "cam01"
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._node_virtual_camera = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIVirtualCameraController
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._node_virtual_camera
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._virtual_camera_controller = L2_2
  L2_2 = A0_2._virtual_camera_controller
  L3_2 = L2_2
  L2_2 = L2_2.ActiveVirtualCamera
  L4_2 = A0_2._node_virtual_camera
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.HeliobusTimelineController
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._timeline_controller = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = A1_2
  L4_2 = "NewUPMission"
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._node_bubble_anchor = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_MainCamera
    L1_3 = L0_3
    L0_3 = L0_3.WorldToScreenPoint
    L2_3 = A0_2._node_bubble_anchor
    L2_3 = L2_3.transform
    L2_3 = L2_3.position
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = CS
    L1_3 = L1_3.UnityEngine
    L1_3 = L1_3.Vector2
    L2_3 = L0_3.x
    L3_3 = L0_3.y
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = CS
    L2_3 = L2_3.UnityEngine
    L2_3 = L2_3.RectTransformUtility
    L2_3 = L2_3.ScreenPointToLocalPointInRectangle
    L3_3 = A0_2._binder
    L3_3 = L3_3.node_content
    L3_3 = L3_3.transform
    L4_3 = L1_3
    L5_3 = CS
    L5_3 = L5_3.RPG
    L5_3 = L5_3.Client
    L5_3 = L5_3.GlobalVars
    L5_3 = L5_3.s_UICamera
    L6_3 = nil
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L4_3 = A0_2._binder
    L4_3 = L4_3.node_anchor_mission
    L4_3 = L4_3.transform
    L5_3 = CS
    L5_3 = L5_3.UnityEngine
    L5_3 = L5_3.Vector3
    L6_3 = L3_3.x
    L7_3 = L3_3.y
    L8_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L4_3.localPosition = L5_3
  end
  L2_2(L3_2)
end
L0_1._on_load_prefab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._function_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._timeline_controller
  if L1_2 then
    L1_2 = A0_2._timeline_controller
    L2_2 = L1_2
    L1_2 = L1_2.PlayTimeline
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._timeline_controller
  if L1_2 then
    L1_2 = A0_2._timeline_controller
    L2_2 = L1_2
    L1_2 = L1_2.PauseTimeline
    L1_2(L2_2)
  end
end
L0_1._on_lost_focus = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.gameObject
  L3_2 = L3_2.layer
  if L3_2 ~= A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._change_layer_recursive_impl
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._change_layer_recursive = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2.gameObject
  L3_2.layer = A2_2
  L3_2 = 0
  L4_2 = A1_2.childCount
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._change_layer_recursive_impl
    L10_2 = A1_2
    L9_2 = A1_2.GetChild
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A2_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._change_layer_recursive_impl = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_limited_reward_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetNPCManager
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.HideAllNormalNpc
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.CharacterVisibleReason
  L7_2 = L7_2.Performance
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.HideAllMonsterNpc
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.CharacterVisibleReason
  L7_2 = L7_2.Performance
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._hide_all_npc_and_monsters = L3_1
return L0_1
