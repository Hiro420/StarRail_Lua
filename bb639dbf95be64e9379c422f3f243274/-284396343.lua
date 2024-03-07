local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionMemberSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionMemberSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionGroupTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionGroupTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionActivityGroupTabItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ExpeditionModule
L1_1 = "AssignmentMissionMainPage_FadeIn"
L2_1 = "AssignmentMissionMainPage_Switch_In"
L3_1 = "AssignmentMissionMainPage_Switch_Out"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ExpeditionMainPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ExpeditionMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2.force_activity = false
  A0_2._is_save_by_click = false
  A0_2._in_avatar_select = false
  A0_2._in_avatar_friend_select = false
  A0_2._is_to_next_zoom_by_confirm = false
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
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._init_expedition_id = L2_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 118
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_right
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_missions
  L2_2 = L1_2
  L1_2 = L1_2.register_mission_btn_root_callback
  L3_2 = A0_2._on_mission_btn_root_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_missions
  L2_2 = L1_2
  L1_2 = L1_2.register_start_select_avatar_callback
  L3_2 = A0_2._start_select_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.register_member_clicked_callback
  L3_2 = A0_2._on_click_member
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_switch_out_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._count_down_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._count_down_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._is_loaded
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_top_page
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._try_show_limit_change_hint
        L0_3(L1_3)
      end
    end
  end
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._count_down_timer = L2_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.DataPrepared
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_tab
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_avatar_select
    L2_3 = false
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._count_down_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
    L0_3 = A0_2._count_down_timer
    L1_3 = L0_3
    L0_3 = L0_3.start
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_info_view
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_tab_tip
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_short_cut_hint
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionRefreshed
  L4_2 = L4_1._on_expedition_refreshed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionRefreshTeam
  L4_2 = L4_1._on_expedition_refresh_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionAccepted
  L4_2 = L4_1._on_expedition_accepted
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionBatchAccepted
  L4_2 = L4_1._on_expedition_batch_accepted
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionRewardTaken
  L4_2 = L4_1._on_received_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionBatchRewardGot
  L4_2 = L4_1._on_reward_batch_received
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionActivityScheduleEnd
  L4_2 = L4_1._on_schedule_end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_expedition_list
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L4_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_count
  L1_2(L2_2)
end
L4_1._setup_info_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_team_in_progress_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = L0_1.TeamInProgressCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_team_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = L0_1.TeamCount
  L1_2(L2_2, L3_2)
end
L4_1._refresh_team_count = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._cancel_select_avatar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  if A1_2 ~= nil then
    L2_2 = A1_2.IsActivity
    if L2_2 == true then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Expedition.ActivityExpeditionStartDialog"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Expedition.ExpeditionStartDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L4_1._on_expedition_accepted = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._cancel_select_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Expedition.ExpeditionStartDialog"
  L1_2(L2_2)
end
L4_1._on_expedition_batch_accepted = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_limit_change_hint
  L1_2(L2_2)
end
L4_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_limit_change_hint
  L1_2(L2_2)
end
L4_1._on_expedition_refreshed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_limit_change_hint
  L1_2(L2_2)
end
L4_1._on_expedition_refresh_team = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.ExpeditionLastLimitCount
  L3_2 = L0_1.TeamCount
  L4_2 = L1_2.ExpeditionLimitCountChanged
  if L4_2 then
    if 0 < L2_2 and L2_2 ~= L3_2 then
      L4_2 = G
      L4_2 = L4_2.UIManager
      L4_2 = L4_2.load_and_async_show
      L5_2 = "Ui.Expedition.ExpeditionLimitCountIncreasedDialog"
      L6_2 = L3_2 - 1
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
    L1_2.ExpeditionLimitCountChanged = false
  end
  L1_2.ExpeditionLastLimitCount = L3_2
end
L4_1._try_show_limit_change_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_selected
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_init_activity_tab_item
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllGroupIds
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._init_tab_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L5_2 = A0_2
  L4_2 = A0_2._get_default_tab_uid
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L4_1._init_tab = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ExpeditionGroupTabItem
  L5_2 = G
  L5_2 = L5_2.ExpeditionGroupTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.init_param
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._init_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasActivityExpedition
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ExpeditionActivityGroupTabItem
  L5_2 = G
  L5_2 = L5_2.ExpeditionGroupTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_item
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._try_init_activity_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._init_expedition_id
  if L2_2 == nil then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.HasActivityExpedition
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2.force_activity
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._has_unfinished_activity_expedition
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = L1_2 + 1
          return L3_2
      end
    end
    else
      return L1_2
    end
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetExpeditionData
  L4_2 = A0_2._init_expedition_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return L1_2
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAllGroupIds
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.index_of_item
  L5_2 = L3_2
  L6_2 = L2_2.Config
  L6_2 = L6_2.GroupID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2 or L5_2
  if L4_2 == nil or not L4_2 then
    L5_2 = L1_2
  end
  return L5_2
end
L4_1._get_default_tab_uid = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPublishingActivityExpeditions
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  return L1_2
end
L4_1._has_unfinished_activity_expedition = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.CS
      L1_2 = L1_2.EventSystem
      L1_2 = L1_2.current
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectedGameObject
      L3_2 = nil
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L4_1._select_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.CS
      L1_2 = L1_2.EventSystem
      L1_2 = L1_2.current
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectedGameObject
      L3_2 = nil
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L4_1._select_right = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_intro
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L3_2 = L3_2.intro_id
  L2_2.IntroduceID = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.clear_cur_selected_object
  L2_2(L3_2)
  L2_2 = A0_2._has_set_group
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._play_switch_group
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_expedition_list
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2._has_set_group = true
  end
end
L4_1._on_tab_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1._play_switch_group = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_expedition_list
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._on_switch_out_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L4_2 = L2_2
  L3_2 = L2_2.get_expedition_datas
  L3_2 = L3_2(L4_2)
  L4_2 = #L3_2
  L4_2 = L4_2 == 0
  L5_2 = L2_2.is_activity
  L5_2 = L5_2 == true
  L7_2 = A0_2
  L6_2 = A0_2._refresh_expedition_list_info
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  if L4_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_missions
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_detail
    L7_2 = L6_2
    L6_2 = L6_2.setup_empty_view
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.EventSystem
    L6_2 = L6_2.current
    L7_2 = L6_2
    L6_2 = L6_2.SetSelectedGameObject
    L8_2 = nil
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_missions
  L7_2 = L6_2
  L6_2 = L6_2.set_style
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_missions
  L7_2 = L6_2
  L6_2 = L6_2.set_schedule
  L9_2 = L2_2
  L8_2 = L2_2.get_schedule
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
  if A1_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_missions
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L3_2
    L9_2 = A0_2._init_expedition_id
    L6_2(L7_2, L8_2, L9_2)
    A0_2._init_expedition_id = nil
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_missions
    L7_2 = L6_2
    L6_2 = L6_2.refresh
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
end
L4_1._refresh_expedition_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._panel_empty
    if L3_2 == nil then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.ExpeditionEmptyPanel
      L6_2 = G
      L6_2 = L6_2.ExpeditionEmptyPanelBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._panel_empty = L3_2
      L3_2 = A0_2._panel_empty
      L4_2 = L3_2
      L3_2 = L3_2.sync_loadto
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_empty
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  if A2_2 then
    L3_2 = A0_2._in_avatar_select
    if not L3_2 and not A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_activity_count
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._panel_activity_cout
      if L3_2 == nil then
        L4_2 = A0_2
        L3_2 = A0_2.create_panel
        L5_2 = G
        L5_2 = L5_2.ActivityExpeditionRankCountPanel
        L6_2 = G
        L6_2 = L6_2.ActivityExpeditionRankCountPanelBinder
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        A0_2._panel_activity_cout = L3_2
        L3_2 = A0_2._panel_activity_cout
        L4_2 = L3_2
        L3_2 = L3_2.sync_loadto
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_activity_count
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2._panel_activity_cout
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L3_2(L4_2)
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_activity_count
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L4_1._refresh_expedition_list_info = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel_select_member
  if L3_2 ~= nil then
    L3_2 = A0_2._in_avatar_select
    if L3_2 then
      goto lbl_11
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._start_select_avatar
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  goto lbl_16
  ::lbl_11::
  L3_2 = A0_2._panel_select_member
  L4_2 = L3_2
  L3_2 = L3_2.click_member
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  ::lbl_16::
end
L4_1._on_click_member = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Expedition.ExpeditionRewardDialog"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_expedition_list
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2)
end
L4_1._on_received_reward = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Expedition.ExpeditionBatchRewardDialog"
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.set_exit_callback
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_expedition_list
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2)
end
L4_1._on_reward_batch_received = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_ActivityExpedition_Finish"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L1_2(L2_2, L3_2)
end
L4_1._on_schedule_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_mission_btn_root_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.is_acceptable
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._in_avatar_select
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    A0_2._last_navigation_target = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_avatar_select
  L4_2 = true
  L5_2 = A1_2 == true
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._start_select_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._panel_select_member
    L1_3 = L0_3
    L0_3 = L0_3.get_first_selected_object
    L0_3 = L0_3(L1_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.set_navigation_target
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2)
end
L4_1._on_select_avatar_started = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._last_navigation_target
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = A0_2._last_navigation_target
    L1_2(L2_2, L3_2)
  end
end
L4_1._cancel_select_avatar = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._in_avatar_select
  if A1_2 == L3_2 then
    L3_2 = A0_2._in_avatar_friend_select
    if L3_2 == A2_2 then
      return
    end
  end
  L3_2 = A0_2._in_avatar_select
  A0_2._in_avatar_select = A1_2
  A0_2._in_avatar_friend_select = A2_2
  if A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._safe_setup_avatar_select
    L6_2 = not L3_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2._panel_select_member
    if L4_2 ~= nil then
      L4_2 = A0_2._panel_select_member
      L5_2 = L4_2
      L4_2 = L4_2.hide
      L4_2(L5_2)
    end
  end
  L4_2 = A0_2._tab_control
  L5_2 = L4_2
  L4_2 = L4_2.set_enable
  L6_2 = not A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_tab_tip
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_short_cut_hint
  L4_2(L5_2)
end
L4_1._show_avatar_select = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._panel_select_member
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ExpeditionMemberSelectPanel
    L6_2 = G
    L6_2 = L6_2.ExpeditionMemberSelectPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._panel_select_member = L3_2
    L3_2 = A0_2._panel_select_member
    L4_2 = L3_2
    L3_2 = L3_2.register_close_callback
    L5_2 = A0_2._cancel_select_avatar
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._panel_select_member
    L4_2 = L3_2
    L3_2 = L3_2.async_bind_with_callback
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_select_avatar
    L6_2 = nil
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._do_setup_avatar_select_view
      L2_3 = A1_2
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._do_setup_avatar_select_view
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L4_1._safe_setup_avatar_select = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._panel_select_member
  L4_2 = L3_2
  L3_2 = L3_2.register_selection_callback
  L5_2 = A0_2._on_selected_avatar_changed
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._panel_select_member
  L4_2 = L3_2
  L3_2 = L3_2.register_assist_callback
  L5_2 = A0_2._on_friend_avatar_changed
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._panel_select_member
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_detail
  L6_2 = L5_2
  L5_2 = L5_2.get_expedition_data
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_detail
  L7_2 = L6_2
  L6_2 = L6_2.get_avatars
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_detail
  L8_2 = L7_2
  L7_2 = L7_2.get_friend_data
  L7_2 = L7_2(L8_2)
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._panel_select_member
  L4_2 = L3_2
  L3_2 = L3_2.show
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_select_avatar_started
  L3_2(L4_2)
end
L4_1._do_setup_avatar_select_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.refresh_avatar_members
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_selected_avatar_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.refresh_friend_members
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_friend_avatar_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_tip_tab_left
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.enable
  if L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.item_count
    L2_2 = L2_2(L3_2)
    L2_2 = 1 < L2_2
  end
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_tip_tab_right
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.enable
  if L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.item_count
    L2_2 = L2_2(L3_2)
    L2_2 = 1 < L2_2
  end
  L1_2.IsShowTip = L2_2
end
L4_1._refresh_tab_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_missions
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._in_avatar_select
      L2_2 = not L2_2
      return L2_2
    end
  end
end
L4_1._is_can_to_zoom = L5_1
function L5_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.panel_detail
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.RightTrigger
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.panel_detail
        L3_2 = L2_2
        L2_2 = L2_2.get_expedition_data
        L2_2 = L2_2(L3_2)
        if L2_2 ~= nil then
          L3_2 = L2_2.IsActivity
          if L3_2 == true then
            L4_2 = A0_2
            L3_2 = A0_2._start_select_avatar
            L5_2 = true
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L4_1._on_in_control_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._in_avatar_select
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._cancel_select_avatar
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = A0_2
  L3_2 = A0_2._get_short_cut_hint
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._refresh_short_cut_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._in_avatar_select
  if L1_2 then
    L1_2 = {}
    L2_2 = "ActionGroup_RewardDetail"
    L3_2 = "ActionGroup_Select"
    L4_2 = "ActionGroup_Return"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    return L1_2
  else
    L1_2 = {}
    L2_2 = "ActionGroup_Scroll"
    L3_2 = "ActionGroup_RewardDetail"
    L4_2 = "ActionGroup_Select"
    L5_2 = "ActionGroup_Return"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    return L1_2
  end
end
L4_1._get_short_cut_hint = L5_1
return L4_1
