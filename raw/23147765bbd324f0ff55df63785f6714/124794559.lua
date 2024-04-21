local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnSevenDayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnDoublePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnJourneyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityPlayerReturnModule
L2_1 = {}
L3_1 = G
L3_1 = L3_1.PlayerReturnSevenDayPanel
L2_1[1] = L3_1
L3_1 = G
L3_1 = L3_1.PlayerReturnMissionPanel
L2_1[2] = L3_1
L3_1 = G
L3_1 = L3_1.PlayerReturnDoublePanel
L2_1[3] = L3_1
L3_1 = G
L3_1 = L3_1.PlayerReturnJourneyPanel
L2_1[4] = L3_1
L3_1 = {}
L4_1 = G
L4_1 = L4_1.PlayerReturnSevenDayPanelBinder
L3_1[1] = L4_1
L4_1 = G
L4_1 = L4_1.PlayerReturnMissionPanelBinder
L3_1[2] = L4_1
L4_1 = G
L4_1 = L4_1.PlayerReturnDoublePanelBinder
L3_1[3] = L4_1
L4_1 = G
L4_1 = L4_1.PlayerReturnJourneyPanelBinder
L3_1[4] = L4_1
function L4_1(A0_2)
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
  L3_2 = L3_2.PlayerReturnMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._expire_coroutine = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._activity_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 1
  end
  A0_2._open_index = L3_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tips
  L4_2 = A0_2._on_btn_tips_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnForceAbort
  L4_2 = A0_2._on_activity_force_abort
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_panel_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2 = L1_2(L2_2)
  A0_2.hint_panel = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._open_index
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._activity_data = nil
  L1_2 = A0_2._expire_coroutine
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.StopCoroutine
    L2_2 = A0_2._expire_coroutine
    L1_2(L2_2)
  end
  A0_2._expire_coroutine = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_tab
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
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
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_tab
      L2_2.alpha = 0.5
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_page_icon
  L4_2 = "SpriteOutput/TabIcon/PlayerReturn/PlayerReturnIcon.png"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = L1_1.FinishTime
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._set_panel_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_panel_prefabs
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = L2_1[L4_2]
    L8_2 = L3_1[L4_2]
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L7_2 = L5_2
    L6_2 = L5_2.set_async_bind_parent
    L8_2 = A0_2._binder
    L8_2 = L8_2.tab_panel_roots
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_tab_items = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.guid
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIPanelSwitch
  L4_2 = A0_2.__name
  L5_2 = L2_2.__name
  L6_2 = A0_2.guid
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_tab_select = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_tips_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_group_tab
    L1_2.alpha = 1
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_group_tab
    L1_2.alpha = 0.5
  end
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_PlayerReturn_BecomeDue"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterSeconds
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._expire_coroutine = L1_2
end
L0_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_force_abort = L4_1
return L0_1
