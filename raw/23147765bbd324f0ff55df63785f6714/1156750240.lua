local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeTaskPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeMissionDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeMainPage"
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
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_ChallengeRaid_UnlockQuest"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_ChallengeRaid_MapEntranceID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Heliobus_ChallengeRaid_MappingInfoID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = "UIText_Heliobus_ChallengePhase_UnlockTips"
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
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusChallengeMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
  A0_2._is_save_by_click = false
  L1_2 = {}
  A0_2._challenge_phase_rows = L1_2
  L1_2 = {}
  A0_2._challenge_panels = L1_2
  L1_2 = {}
  A0_2._challenge_btns = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_raid
  L4_2 = A0_2._on_btn_raid
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_raid
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_raid
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._reset_checked_animator_btn
    L2_3 = A0_2._binder
    L2_3 = L2_3.animator_raid
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_tasks
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusChallengeTaskPanel
    L8_2 = G
    L8_2 = L8_2.HeliobusChallengeTaskPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_challenge_tasks
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_on_select_callback
    L8_2 = A0_2._on_task_panel_select
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_on_click_callback
    L8_2 = A0_2._on_task_panel_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._challenge_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._challenge_btns
    L9_2 = L5_2
    L8_2 = L5_2.get_root_btn
    L8_2, L9_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusChallengeMissionDetailPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusChallengeMissionDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_detail_panel = L1_2
  L1_2 = A0_2._mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_close_callback
  L3_2 = A0_2._on_mission_detail_panel_close
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusChallengeReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_detail_panel = false
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._challenge_panels = nil
  A0_2._challenge_btns = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_custom_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_checked_animator_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_raid
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_detail_panel
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_detail_panel
    if L2_2 then
      L2_2 = A0_2._mission_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.show_reward_info_dialog
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_raid
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._challenge_btns
  L2_2 = L2_2[1]
  L3_2 = A0_2._challenge_btns
  L3_2 = L3_2[2]
  L4_2 = A0_2._challenge_btns
  L4_2 = L4_2[3]
  L5_2 = A0_2._challenge_btns
  L5_2 = L5_2[4]
  L1_2 = L2_2.navigation
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Navigation
  L6_2 = L6_2.Mode
  L6_2 = L6_2.Explicit
  L1_2.mode = L6_2
  L1_2.selectOnDown = L3_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2.selectOnLeft = L6_2
  L2_2.navigation = L1_2
  L1_2 = L3_2.navigation
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Navigation
  L6_2 = L6_2.Mode
  L6_2 = L6_2.Explicit
  L1_2.mode = L6_2
  L1_2.selectOnUp = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2.selectOnLeft = L6_2
  L3_2.navigation = L1_2
  L1_2 = L4_2.navigation
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Navigation
  L6_2 = L6_2.Mode
  L6_2 = L6_2.Explicit
  L1_2.mode = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2.selectOnDown = L6_2
  L1_2.selectOnLeft = L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2.selectOnRight = L6_2
  L4_2.navigation = L1_2
  L1_2 = L5_2.navigation
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Navigation
  L6_2 = L6_2.Mode
  L6_2 = L6_2.Explicit
  L1_2.mode = L6_2
  L1_2.selectOnUp = L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2.selectOnRight = L6_2
  L5_2.navigation = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L1_2 = L6_2.navigation
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Navigation
  L6_2 = L6_2.Mode
  L6_2 = L6_2.Explicit
  L1_2.mode = L6_2
  L1_2.selectOnUp = L4_2
  L1_2.selectOnDown = L3_2
  L1_2.selectOnLeft = L5_2
  L1_2.selectOnRight = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_raid
  L6_2.navigation = L1_2
end
L0_1._setup_custom_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_task_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_raid_entrance_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_detail_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_mission_detail_panel_close
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_detail_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.clear_cur_selected_object
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusChallengePhaseExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  L2_2 = 1
  while true do
    L4_2 = L1_2
    L3_2 = L1_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L1_2.Current
    L4_2 = A0_2._challenge_panels
    L4_2 = L4_2[L2_2]
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._challenge_phase_rows
    L4_2[L2_2] = L3_2
    L2_2 = L2_2 + 1
  end
end
L0_1._setup_task_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  A0_2._is_unlock = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L2_1
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ParamIntList
    L3_2 = L3_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MainMissionExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L4_2.Name
    L5_2 = L5_2(L6_2)
    A0_2._unlock_raid_mission_name = L5_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_raid_unlock
  L5_2 = A0_2._is_unlock
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_raid_lock_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_raid_lock_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_unlock
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "HeliobusChallengeRaidNormal"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_raid_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_raid_entrance_state = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_checked_animator_btn
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._cur_checked_animator_btn
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._set_animator_btn_checked
    L4_2 = A0_2._cur_checked_animator_btn
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
  A0_2._cur_checked_animator_btn = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_animator_btn_checked
  L4_2 = A0_2._cur_checked_animator_btn
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._reset_checked_animator_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_detail_panel
  L1_2(L2_2)
end
L0_1._on_btn_back = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_checked_animator_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_raid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_detail_panel
    L1_2(L2_2)
    L1_2 = A0_2._mission_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_by_raid
    L3_2 = L3_1
    L4_2 = L4_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = L5_1
    L3_2 = A0_2._unlock_raid_mission_name
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UICenterToastMessageString
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_click_index = nil
end
L0_1._on_btn_raid = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "HeliobusChallengeReward"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardDialog"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._reset_checked_animator_btn
  L5_2 = A1_2
  L4_2 = A1_2.get_root_btn_animator
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_task_panel_select = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A2_2
  L5_2 = A0_2._challenge_phase_rows
  L5_2 = L5_2[A2_2]
  L6_2 = A0_2._mission_detail_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view_by_challenge_group
  L8_2 = A1_2
  L9_2 = L5_2.MapEntranceID
  L10_2 = L5_2.MappingInfoID
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A0_2
  L6_2 = A0_2._show_detail_panel
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._reset_checked_animator_btn
  L9_2 = A3_2
  L8_2 = A3_2.get_root_btn_animator
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_task_panel_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_detail_panel
  L1_2(L2_2)
end
L0_1._on_mission_detail_panel_close = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_detail_panel = true
  L2_2 = A0_2._mission_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_panel_show
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.clear_cur_selected_object
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._mission_detail_panel
      L1_3 = L0_3
      L0_3 = L0_3.has_show_reward_info
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = {}
        L3_3 = "ActionGroup_Scroll"
        L4_3 = "ItemDetail"
        L5_3 = "ActionGroup_Return"
        L2_3[1] = L3_3
        L2_3[2] = L4_3
        L2_3[3] = L5_3
        L3_3 = A0_2._binder
        L3_3 = L3_3.scroll_rect
        L0_3(L1_3, L2_3, L3_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = {}
        L3_3 = "ActionGroup_Scroll"
        L4_3 = "ActionGroup_Return"
        L2_3[1] = L3_3
        L2_3[2] = L4_3
        L3_3 = A0_2._binder
        L3_3 = L3_3.scroll_rect
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  L2_2(L3_2)
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._reset_all_animator_trigger
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "TaskBtn"
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_click_index = A1_2
end
L0_1._show_detail_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._is_detail_panel = false
  L1_2 = A0_2._mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_panel_show
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2._cur_click_index
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_root
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "TaskBtn"
    L4_2 = tostring
    L5_2 = A0_2._cur_click_index
    L4_2 = L4_2(L5_2)
    L5_2 = "_Back"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._hide_detail_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "CenterTaskBtn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "TaskBtn1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "TaskBtn2"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "TaskBtn3"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "TaskBtn4"
  L1_2(L2_2, L3_2)
end
L0_1._reset_all_animator_trigger = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.SetBool
  L5_2 = "IsChecked"
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  if A2_2 then
    L4_2 = A1_2
    L3_2 = A1_2.SetTrigger
    L5_2 = "Checked"
    L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L3_2 = A1_2.ResetTrigger
    L5_2 = "Unchecked"
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.ResetTrigger
    L5_2 = "Checked"
    L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L3_2 = A1_2.SetTrigger
    L5_2 = "Unchecked"
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_animator_btn_checked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_raid
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "UnLock_Normal"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_raid
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Lock"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_raid
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Lock"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_raid
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "UnLock_Normal"
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_raid_unlock = L6_1
return L0_1
