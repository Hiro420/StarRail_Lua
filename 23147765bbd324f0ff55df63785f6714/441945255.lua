local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DialogueModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.InventoryModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ItemComposeModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MusicAlbumModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_PSManager
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._mission_panel_hint_queue = L1_2
  A0_2._is_panel_hint_showing = false
  A0_2._count_down_timer = nil
  A0_2._resync_count_down_timer = nil
  A0_2._disable_setup = false
  A0_2._hint_dialog_count = 0
  L1_2 = {}
  A0_2.mission_toasted = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureMissionListPanel
  L4_2 = G
  L4_2 = L4_2.AdventureMissionListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_list_panel = L1_2
  L1_2 = A0_2._mission_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.customize_click_callback
  L3_2 = A0_2._customized_clicked_callback
  L4_2 = A0_2._event_listener
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureMissionHintPanel
  L4_2 = G
  L4_2 = L4_2.AdventureMissionHintPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_hint_panel = L1_2
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_hint
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_callback
  L3_2 = A0_2._on_anim_end_callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = A0_2._on_take_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakeSubmissionLogin
  L4_2 = A0_2._on_take_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishSubMission
  L4_2 = A0_2._on_finish_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FloorConnectivityDataRefresh
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReceiveReward
  L4_2 = A0_2._on_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResyncMission
  L4_2 = A0_2._latency_show_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGOEnd
  L4_2 = A0_2._on_play_go_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMissionToastDialogClosed
  L4_2 = A0_2._on_mission_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMissionTopToastPanelShowed
  L4_2 = A0_2._on_mission_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMainMissionTopToastEnqueue
  L4_2 = A0_2._pause_hint_when_top_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMainMissionTopToastDequeue
  L4_2 = A0_2._continue_hint_when_top_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnPuzzleFinishPlayMissionFadeIn
  L4_2 = A0_2.play_fade_anim
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._count_down_timer = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_hud_template = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  L3_2 = L4_1.UnlockedFormulaList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L4_1.UnlockedFormulaList
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_formula_unlock = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._count_down_timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._on_timer_callback
    L4_2 = 0.2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._count_down_timer = L1_2
  end
  L1_2 = A0_2._resync_count_down_timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._on_resync_timer_callback
    L4_2 = 0.2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._resync_count_down_timer = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  A0_2._forbid_play_start_hint = false
  A0_2._forbid_play_finish_hint = false
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._disable_setup = A1_2
  L2_2 = A0_2._mission_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.disable_setup_view
  L4_2 = A0_2._disable_setup
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._disable_setup
  if L2_2 == true then
    L2_2 = A0_2._mission_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._is_panel_hint_showing = false
    L2_2 = {}
    A0_2._mission_panel_hint_queue = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1.disable_setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.StroyModeOpen
  if L1_2 then
    return
  end
  L1_2 = L6_1.IsFromActivity
  if L1_2 then
    L6_1.IsFromActivity = false
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = 700
    L1_2(L2_2)
  end
end
L0_1.try_show_mission_page_from_ps_activity = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active_by_scale
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.hide = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_anim
  L1_2(L2_2)
end
L0_1.play_fade_anim = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mission_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.disable_mission_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.disable_mission_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._customized_clicked_callback = A1_2
  A0_2._event_listener = A2_2
end
L0_1.customize_click_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._handle_reward_callback = A1_2
  A0_2._handle_reward_callback_self = A2_2
end
L0_1.set_handle_reward_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_panel_hint_showing
  if not L1_2 then
    L1_2 = A0_2._mission_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mission_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_list
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mission_list
  L2_2(L3_2)
end
L0_1._on_refresh_mission = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._handle_reward_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._handle_reward_callback
    L3_2 = A0_2._handle_reward_callback_self
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.on_notify_receive_reward
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_receive_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._disable_setup
  if L1_2 == true then
    return
  end
  L1_2 = L1_1.TrackingMission
  if L1_2 ~= nil then
    L1_2 = A0_2._mission_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = L1_1.TrackingMission
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._mission_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_mission_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_panel_hint_showing
  if not L1_2 then
    L1_2 = A0_2._mission_panel_hint_queue
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._mission_panel_hint_queue
      L1_2 = L1_2[1]
      L1_2 = L1_2.Type
      if L1_2 ~= "Take" then
        L1_2 = A0_2._mission_panel_hint_queue
        L1_2 = L1_2[1]
        L1_2 = L1_2.Type
        if L1_2 ~= "TakeSub" then
          goto lbl_23
        end
      end
      L1_2 = A0_2._forbid_play_start_hint
      if L1_2 == true then
        return
      ::lbl_23::
      else
        L1_2 = A0_2._mission_panel_hint_queue
        L1_2 = L1_2[1]
        L1_2 = L1_2.Type
        if L1_2 == "Finish" then
          L1_2 = A0_2._forbid_play_finish_hint_hint
          if L1_2 == true then
            return
        end
        else
          L2_2 = A0_2
          L1_2 = A0_2._check_mission_toast_finished
          L3_2 = A0_2._mission_panel_hint_queue
          L3_2 = L3_2[1]
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            return
          end
        end
      end
      L1_2 = table
      L1_2 = L1_2.remove
      L2_2 = A0_2._mission_panel_hint_queue
      L3_2 = 1
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._disable_setup
      if L2_2 == false then
        L2_2 = A0_2._mission_list_panel
        L3_2 = L2_2
        L2_2 = L2_2.safe_set_active
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._mission_list_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_canvas_alpha
        L4_2 = 0
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._mission_hint_panel
        L3_2 = L2_2
        L2_2 = L2_2.safe_set_active
        L4_2 = true
        L2_2(L3_2, L4_2)
        A0_2._is_panel_hint_showing = true
        L2_2 = A0_2._mission_hint_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2._refresh
      L1_2(L2_2)
    end
  end
end
L0_1._show_mission_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A1_2.MissionPanelTag
    if L2_2 ~= "Start" then
      return
    end
    L2_2 = A0_2.mission_toasted
    L3_2 = A1_2.ID
    L2_2[L3_2] = true
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_mission_hint
  L2_2(L3_2)
end
L0_1._on_mission_toast = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Type
  if L2_2 ~= "Take" then
    L2_2 = true
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.is_show_full_screen_take_toast_by_submission_id
  L3_2 = A1_2.SubMissionID
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2.mission_toasted
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2.mission_toasted
      L3_2 = A1_2.ID
      L2_2 = L2_2[L3_2]
      if L2_2 == true then
        L2_2 = A0_2.mission_toasted
        L3_2 = A1_2.ID
        L2_2[L3_2] = nil
        L2_2 = true
        return L2_2
    end
    else
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_mission_toast_finished = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L0_1._latency_show_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._resync_count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._resync_count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._resync_count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L0_1._latency_show_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_play_go_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.try_show_mission_page_from_ps_activity
  L1_2(L2_2)
end
L0_1._on_hide_loading_page = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetSubMissionData
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_2.MainMissionID
  if L5_2 ~= nil then
    L7_2 = L5_2.IsShow
    if L7_2 then
      L7_2 = L5_2.IsStart
      if L7_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  if L6_2 ~= nil then
    L7_2 = L4_2.IsShowStartHint
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.BeginHintType
    L8_2 = L8_2.New
    if L7_2 ~= L8_2 then
      L7_2 = L4_2.IsShowStartHint
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.BeginHintType
      L8_2 = L8_2.Update
      if L7_2 ~= L8_2 then
        goto lbl_64
      end
    end
    L7_2 = {}
    L7_2.Type = "Take"
    L7_2.ID = L6_2
    L7_2.SubMissionID = L2_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._mission_panel_hint_queue
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._latency_show_hint
    L8_2(L9_2)
    return
  end
  ::lbl_64::
  L8_2 = A0_2
  L7_2 = A0_2._latency_show_hint
  L7_2(L8_2)
end
L0_1._on_take_sub_mission = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2.MainMissionID
  L6_2 = L4_2.IsShowFinishEffect
  if 0 < L6_2 then
    L6_2 = {}
    L6_2.Type = "Finish"
    L6_2.ID = L5_2
    L7_2 = 0
    L8_2 = 1
    L9_2 = A0_2._mission_panel_hint_queue
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = A0_2._mission_panel_hint_queue
      L12_2 = L12_2[L11_2]
      L12_2 = L12_2.Type
      if L12_2 ~= "Finish" then
        break
      end
      L7_2 = L11_2
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._mission_panel_hint_queue
    L10_2 = L7_2 + 1
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = A0_2
    L8_2 = A0_2._latency_show_hint
    L8_2(L9_2)
  end
end
L0_1._on_finish_sub_mission = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_mission_hint
  L1_2(L2_2)
end
L0_1._on_timer_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._resync_count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._resync_count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_resync_timer_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_panel_hint_showing
  if L1_2 then
    A0_2._is_panel_hint_showing = false
    L2_2 = A0_2
    L1_2 = A0_2._show_mission_hint
    L1_2(L2_2)
  end
end
L0_1._on_anim_end_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._owner
    L2_2 = L2_2._hide_mission_panel
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._continue_hint_panel
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._pause_hint_panel
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.pause_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._pause_hint_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.continue_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._continue_hint_panel = L7_1
function L7_1(A0_2, A1_2)
  if A1_2 then
    A0_2._forbid_play_start_hint = true
  else
    A0_2._forbid_play_finish_hint = true
  end
end
L0_1._pause_hint_when_top_toast = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    A0_2._forbid_play_start_hint = false
  else
    A0_2._forbid_play_finish_hint = false
  end
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._continue_hint_when_top_toast = L7_1
return L0_1
