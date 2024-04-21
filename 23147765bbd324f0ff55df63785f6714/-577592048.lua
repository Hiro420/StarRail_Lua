local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Reward.HeliobusLightConeRewardRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Reward.HeliobusLightConeRewardPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusLightConeRewardPage"
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
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_Entrance_MappingInfoID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_PreMission_MainMissionID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = "HeliobusLightConeRewardPage_FadeIn"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusLightConeRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._light_cone_panel = nil
  L1_2 = {}
  A0_2._light_cone_rank_panels = L1_2
  L1_2 = {}
  A0_2._light_cone_rank_icon_btns = L1_2
  L1_2 = {}
  A0_2._navi_target_panels = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.HeliobusLightConeRewardSeen
  if not L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2.HeliobusLightConeRewardSeen = true
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
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._activity_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_from_activity_page = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusActivityQuestExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    if L4_2 ~= nil then
      L5_2 = L4_2.TypeGroupID
      if L5_2 == 3 then
        A0_2._light_cone_item_row = L4_2
      else
        L5_2 = L4_2.TypeGroupID
        if L5_2 == 4 then
          A0_2._light_cone_rank_row = L4_2
        end
      end
    end
  end
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rank
  L4_2 = A0_2._on_btn_rank
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_companion_mission_go
  L4_2 = A0_2._on_btn_companion_mission_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_activity_mission_go
  L4_2 = A0_2._on_btn_activity_mission_go
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_mission_panel
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_mission_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = A0_2._binder
    L2_3 = L2_3.mono_btn_companion_mission_go
    L3_3 = A0_2._binder
    L3_3 = L3_3.mono_tip_companion_mission_go
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = {}
    L3_3 = "ActionGroup_Return"
    L2_3[1] = L3_3
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_mission_panel
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_in_control_button_enable
      L2_3 = A0_2._binder
      L2_3 = L2_3.mono_btn_companion_mission_go
      L3_3 = A0_2._binder
      L3_3 = L3_3.mono_tip_companion_mission_go
      L4_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_btn_companion_mission_go
  L4_2 = A0_2._binder
  L4_2 = L4_2.mono_tip_companion_mission_go
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_activity_panel
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_activity_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = A0_2._binder
    L2_3 = L2_3.mono_btn_activity_mission_go
    L3_3 = A0_2._binder
    L3_3 = L3_3.mono_tip_activity_mission_go
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = {}
    L3_3 = "ActionGroup_Return"
    L2_3[1] = L3_3
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_activity_panel
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_in_control_button_enable
      L2_3 = A0_2._binder
      L2_3 = L2_3.mono_btn_activity_mission_go
      L3_3 = A0_2._binder
      L3_3 = L3_3.mono_tip_activity_mission_go
      L4_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_btn_activity_mission_go
  L4_2 = A0_2._binder
  L4_2 = L4_2.mono_tip_activity_mission_go
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rewards
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusLightConeRewardRankPanel
    L8_2 = G
    L8_2 = L8_2.HeliobusLightConeRewardRankPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_rewards
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._light_cone_rank_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._light_cone_panel = L1_2
  L1_2 = A0_2._light_cone_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_light_cone_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonGhostSpineBgPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonGhostSpineBgPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ghost_spine_panel = L1_2
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spine_skeleton
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L5_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_animation_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._light_cone_panel = nil
  A0_2._light_cone_rank_panels = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._navi_target_panels
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navi_target_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission_panel
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navi_target_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_activity_panel
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rewards
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._light_cone_rank_panels
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.get_icon_btn
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_activity_panel
    L7_2.selectOnUp = L8_2
    L6_2.navigation = L7_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._light_cone_rank_icon_btns
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    if L4_2 == 1 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._navi_target_panels
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._light_cone_rank_icon_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._navi_target_panels
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_light_cone_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_light_cone_rank_panels_view
  L1_2(L2_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_companion_mission_panel_view
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_activity_mission_panel_view
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_light_cone_data
  L1_2(L2_2)
  L1_2 = A0_2._light_cone_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._light_cone_display_data
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2._light_cone_quest_data
  if L2_2 then
    L2_2 = A0_2._light_cone_quest_data
    L1_2 = L2_2.Status
  else
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L1_2 = L2_2.BFIPIHOJADI
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_rank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_in_control_button_enable
  L4_2 = A0_2._binder
  L4_2 = L4_2.mono_btn_receive
  L5_2 = A0_2._binder
  L5_2 = L5_2.mono_tip_receive
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.JKFPIINHGPD
  L6_2 = L1_2 == L6_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_light_cone_panel_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._light_cone_item_row
  L1_2 = L1_2.QuestList
  L1_2 = L1_2[0]
  A0_2._light_cone_quest_id = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._light_cone_quest_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._light_cone_quest_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.QuestDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._light_cone_quest_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.RewardID
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateConfigIDList
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2[1]
  A0_2._light_cone_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetEquipmentDataByConfigID
  L6_2 = A0_2._light_cone_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._light_cone_rank_data = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateEquipmentItemData
  L5_2 = A0_2._light_cone_id
  L4_2 = L4_2(L5_2)
  A0_2._light_cone_display_data = L4_2
end
L0_1._get_light_cone_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._light_cone_rank_row
  L2_2 = L2_2.QuestList
  L1_2 = L1_2(L2_2)
  A0_2._light_cone_rank_quest_ids = L1_2
  L1_2 = 1
  L2_2 = A0_2._light_cone_rank_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._light_cone_rank_panels
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._light_cone_rank_quest_ids
    L8_2 = L8_2[L4_2]
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_light_cone_rank_panels_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_companion_mission_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.NameStr
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_companion_mission_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsFinish
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_companion_mission_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_mission_finish_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_LightConeReward_Reward1_Tips"
  L5_2 = A1_2.NameStr
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_companion_mission_panel_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_activity_mission_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activity_mission_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._light_cone_rank_quest_ids
  L3_2 = A0_2._light_cone_rank_quest_ids
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_activity_mission_go
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_activity_mission_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2 or L7_2
  if L4_2 then
    L7_2 = A1_2.IsFinish
  end
  L5_2(L6_2, L7_2)
end
L0_1._setup_activity_mission_panel_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPage"
  L3_2 = A0_2._light_cone_display_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._light_cone_quest_data
  if L1_2 then
    L1_2 = A0_2._light_cone_quest_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.JKFPIINHGPD
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_NetworkManager
      L2_2 = L1_2
      L1_2 = L1_2.JCCHEMBPEEE
      L3_2 = A0_2._light_cone_quest_id
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_receive = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._light_cone_rank_data
  L4_2 = 3
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_rank = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 700
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.Gap
  L4_2 = #L4_2
  L5_2 = L4_1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_companion_mission_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_from_activity_page
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.HeliobusSNSUtils
    L1_2 = L1_2.open_map_by_map_info_id
    L2_2 = L3_1
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPage"
    L1_2(L2_2)
  end
end
L0_1._on_btn_activity_mission_go = L6_1
function L6_1(A0_2, A1_2)
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
  L3_2 = A0_2
  L2_2 = A0_2._setup_light_cone_panel_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_light_cone_rank_panels_view
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  A1_2.ActionEnabled = A3_2
  A2_2.IsShowTip = A3_2
end
L0_1._setup_in_control_button_enable = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._light_cone_rank_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._light_cone_rank_panels
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.show_sweep_hint
    L6_2(L7_2)
  end
end
L0_1._on_fade_in_animation_end = L6_1
return L0_1
