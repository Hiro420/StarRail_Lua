local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailPostInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailPostInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_post_by_post_id
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._post = L3_2
  L3_2 = A0_2._post
  if L3_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "HeliobusSNSDetailDialog : \228\184\141\229\173\152\229\156\168Id\228\184\186("
    L5_2 = A1_2
    L6_2 = ")\231\154\132Post"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
  end
  A0_2.is_show_go_to = A2_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._comment_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_is_mission_panel_open
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._comment_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_sp_zoom_btn
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.gameObject
    L3_2 = A0_2
    L2_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_reply_panel_open
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._comment_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_reply_panel_btn
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.gameObject
    return L1_2
  else
    L1_2 = A0_2._comment_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_comment_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_opt_panel_open
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 61
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusPostSetIsLike
  L4_2 = A0_2._on_post_sync_like
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnComment
  L4_2 = A0_2._on_post_sync_comment
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSDetailPostInfoPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSDetailPostInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._post_panel = L1_2
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_like_callback
  L3_2 = A0_2._on_click_btn_like
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_post_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSDetailCommentPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSDetailCommentPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._comment_panel = L1_2
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_click_comment
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_take_mission_btn_callback
  L3_2 = A0_2._on_click_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_go_to_mission_btn_callback
  L3_2 = A0_2._on_click_go_to_mission_btn
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_reply_callback
  L3_2 = A0_2._on_click_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_reply_comment_callback
  L3_2 = A0_2._on_click_reply_comment
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_comment_panel
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_table = L1_2
  A0_2._last_send_comment_id = 0
  A0_2._enable_bg_exit = true
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_is_read
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  A0_2._record_time_stamp = L1_2
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._post
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._comment_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._post
  L1_2(L2_2, L3_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._post_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_like
  L2_2(L3_2)
end
L0_1._on_post_sync_like = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._post
  L2_2 = L2_2.ID
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = A0_2._last_send_comment_id
  if L2_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._comment_panel
      L1_3 = L0_3
      L0_3 = L0_3.locate_target_comment
      L2_3 = A0_2._last_send_comment_id
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._comment_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_all_reply_btn_nav
      L0_3(L1_3)
      A0_2._last_send_comment_id = 0
    end
    L2_2(L3_2, L4_2)
    A0_2._enable_bg_exit = false
    L2_2 = A0_2._comment_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_new_comment_anim_length
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._on_timer_up
    L6_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._count_down_timer = L3_2
    L3_2 = A0_2._count_down_timer
    L4_2 = L3_2
    L3_2 = L3_2.reset
    L3_2(L4_2)
    L3_2 = A0_2._count_down_timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.force_set_first_navigation_target
    L3_2(L4_2)
  end
end
L0_1._on_post_sync_comment = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._enable_bg_exit = true
end
L0_1._on_timer_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PostPhase
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.HeliobusSNSPostPhase
  L2_2 = L2_2.Exorcism
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HeliobusSNSPostPhase
  L1_2 = L1_2.Exorcism
  L1_2 = #L1_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Heliobus.SNS.ActionDay.PostPhase.HeliobusActionDayPostPhaseDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._open_post_phase_2_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._post
  L1_2 = L1_2.IsRead
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.EHILFEMGION
    L3_2 = A0_2._post
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1._set_is_read = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.IsSendingLike
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.OOGONDGGKMI
    L3_2 = L2_2
    L2_2 = L2_2.EOPBBNEGMIE
    L4_2 = A1_2.ID
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_btn_like = L3_1
function L3_1(A0_2, A1_2)
end
L0_1._on_click_comment = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1.PostMissionInProgress
  if L2_2 == nil then
    return
  end
  L2_2 = A1_2.Row
  L2_2 = L2_2.PostTypeParameter
  L3_2 = L1_1.PostMissionInProgress
  L3_2 = L3_2.ID
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = A1_2.Row
  L4_2 = L4_2.PostTypeParameter
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Mission.MissionPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = A1_2.Row
  L5_2 = L5_2.PostTypeParameter
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  L5_2 = A0_2._on_close_all_ui
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_click_go_to_mission_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._post
  L3_2 = L2_2
  L2_2 = L2_2.CheckIsCanReply
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.HeliobusSNSUtils
    L2_2 = L2_2.is_mission_type_post
    L3_2 = A0_2._post
    L3_2 = L3_2.PostType
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSMissionConfirmDialog"
      L4_2 = A0_2._post
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.OOGONDGGKMI
      L3_2 = L2_2
      L2_2 = L2_2.HAPNHIGENLF
      L4_2 = A0_2._post
      L4_2 = L4_2.ID
      L5_2 = 0
      L6_2 = A1_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
      A0_2._last_send_comment_id = A1_2
    end
  end
end
L0_1._on_click_reply = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A2_2
  L3_2 = A2_2.CheckIsCanReply
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.NetworkManager
    L3_2 = L3_2.OOGONDGGKMI
    L4_2 = L3_2
    L3_2 = L3_2.HAPNHIGENLF
    L5_2 = A0_2._post
    L5_2 = L5_2.ID
    L6_2 = A2_2.ID
    L7_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2._last_send_comment_id = A1_2
  end
end
L0_1._on_click_reply_comment = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_bg_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_click_close
    L1_2(L2_2)
  end
end
L0_1._on_click_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
end
L0_1._on_close_all_ui = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowMsTimeStamp
  L3_2 = A0_2._record_time_stamp
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / 1000
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportHeliobusReadSNSPost
  L3_2 = A0_2._post
  L3_2 = L3_2.ID
  L4_2 = A0_2._post
  L4_2 = L4_2.PostType
  L5_2 = L1_1.ActionDay
  L6_2 = L1_1.PopPhase
  L7_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
