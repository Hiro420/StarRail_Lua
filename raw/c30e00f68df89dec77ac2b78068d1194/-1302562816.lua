local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainAccountInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainAccountInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPhasePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPhasePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPage"
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
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_SNS_AllTab_Icon"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.StringValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_SNS_AllTab_IconUnselected"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.StringValue
L4_1 = {}
L4_1.ALL = 0
L4_1.Mission = 1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainPageBinder
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
  A0_2._pause_game = true
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    A0_2._post_table = A1_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_post_data_table
    L2_2 = L2_2(L3_2)
    A0_2._post_table = L2_2
  end
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_sns_post_table
  return L1_2()
end
L0_1._get_post_data_table = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
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
      L2_2 = A0_2._post_panel
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._post_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_navigation_target
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._top_tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
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
  L3_2 = L3_2.btn_rule_tip
  L4_2 = A0_2._on_click_rule_tip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_user_icon
  L4_2 = A0_2._on_click_user_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fan
  L4_2 = A0_2._on_click_fan
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_self_post
  L4_2 = A0_2._on_click_self_post
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_user_icon
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_user_icon
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_fan
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_fan
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_self_post
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_self_post
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusPostSetIsLike
  L4_2 = A0_2._on_post_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusPostSetIsRead
  L4_2 = A0_2._on_post_sync
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
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._top_tab_control = L1_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_tab_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainAccountInfoPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSMainAccountInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._account_info_panel = L1_2
  L1_2 = A0_2._account_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_account_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainPostPhasePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSMainPostPhasePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._post_phase_panel = L1_2
  L1_2 = A0_2._post_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_post_phase_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainPostPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSMainPostPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._post_panel = L1_2
  L1_2 = A0_2._post_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_click_btn
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L3_2.node_post_panel
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
  L1_2 = {}
  A0_2._tab_table = L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = L4_1.ALL
  L2_2.Type = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostType
  L3_2 = L3_2.Unknown
  L2_2.PostType = L3_2
  L2_2.TextID = "UIText_Heliobus_SNSPage_Tab1"
  L3_2 = L2_1
  L2_2.IconPath = L3_2
  L3_2 = L3_1
  L2_2.UnselectedIconPath = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = false
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HeliobusPostTypeConfigExcelTable
  L4_2 = L4_2.dataDict
  L5_2 = L4_2
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2(L5_2)
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    L5_2 = L5_2.Value
    L6_2 = G
    L6_2 = L6_2.HeliobusSNSUtils
    L6_2 = L6_2.is_mission_type_post
    L7_2 = L5_2.PostType
    L6_2 = L6_2(L7_2)
    if L6_2 then
      if not L3_2 then
        L3_2 = true
        L6_2 = {}
        L2_2 = L6_2
        L6_2 = L4_1.Mission
        L2_2.Type = L6_2
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.HeliobusPostType
        L6_2 = L6_2.MissionMain
        L2_2.PostType = L6_2
        L2_2.TextID = "UIText_Heliobus_SNSPage_MissionTab"
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.HeliobusPostTypeConfigExcelTable
        L6_2 = L6_2.GetData
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.HeliobusPostType
        L7_2 = L7_2.MissionMain
        L6_2 = L6_2(L7_2)
        L7_2 = L6_2.PostTypeIconPath
        L2_2.IconPath = L7_2
        L7_2 = L6_2.PostTypeIconPathUnselected
        L2_2.UnselectedIconPath = L7_2
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L2_2
        L7_2(L8_2, L9_2)
      end
    else
      L6_2 = {}
      L2_2 = L6_2
      L6_2 = L5_2.PostType
      L2_2.Type = L6_2
      L6_2 = L5_2.PostType
      L2_2.PostType = L6_2
      L6_2 = L5_2.PostTypeName
      L2_2.TextID = L6_2
      L6_2 = L5_2.PostTypeIconPath
      L2_2.IconPath = L6_2
      L6_2 = L5_2.PostTypeIconPathUnselected
      L2_2.UnselectedIconPath = L6_2
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = L2_2
      L6_2(L7_2, L8_2)
    end
  end
  L5_2 = 1
  L6_2 = #L1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2.create_panel
    L11_2 = G
    L11_2 = L11_2.HeliobusSNSMainTabItem
    L12_2 = G
    L12_2 = L12_2.HeliobusSNSMainTabItemBinder
    L13_2 = L1_2[L8_2]
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2.button_prefab_index = 0
    L11_2 = L9_2
    L10_2 = L9_2.register_callback
    L12_2 = A0_2._on_tab_click
    L13_2 = A0_2
    L10_2(L11_2, L12_2, L13_2)
    L11_2 = L9_2
    L10_2 = L9_2.bind
    L12_2 = A0_2._binder
    L12_2 = L12_2.node_tab
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._top_tab_control
    L11_2 = L10_2
    L10_2 = L10_2.add_item
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._set_tab_nav
  L5_2(L6_2)
  A0_2._tab_info_table = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.HeliobusModule
  L5_2 = L5_2.HeliobusRedDotFilter
  if L5_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._check_tab_enable_reply_comment
    L5_2(L6_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.CoroutineUtils
    L5_2 = L5_2.InvokeAfterSeconds
    L6_2 = 0.1
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.HeliobusModule
      L0_3 = L0_3.HeliobusRedDotFilter
      if L0_3 == nil then
        L0_3 = G
        L0_3 = L0_3.SuperDebug
        L0_3 = L0_3.LogWarningFormat
        L1_3 = "HeliobusSNSMainPage : HeliobusRedDotFilter \228\184\186\231\169\186"
        L0_3(L1_3)
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._check_tab_enable_reply_comment
      L0_3(L1_3)
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._generate_tab_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.HeliobusModule
  L1_2 = L1_2.HeliobusRedDotFilter
  L1_2 = L1_2.SNSTabCanReplyCommentPostTypeList
  L2_2 = 1
  L3_2 = A0_2._tab_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._top_tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._tab_info_table
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.PostType
    L8_2 = false
    L9_2 = A0_2._tab_info_table
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.Type
    L10_2 = L4_1.ALL
    if L9_2 == L10_2 then
      L10_2 = A0_2
      L9_2 = A0_2._check_is_tab_reddot_active
      L11_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L1_2.Count
      L8_2 = 0 < L10_2 and L8_2
    else
      L9_2 = 0
      L10_2 = L1_2.Count
      L10_2 = L10_2 - 1
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L1_2[L12_2]
        L14_2 = #L7_2
        if L13_2 == L14_2 then
          L8_2 = true
          L14_2 = A0_2
          L13_2 = A0_2._check_is_tab_reddot_active
          L15_2 = L7_2
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L8_2 = false
          end
        end
      end
    end
    L10_2 = L6_2
    L9_2 = L6_2.enable_reply_comment
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._check_tab_enable_reply_comment = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.HeliobusModule
  L2_2 = L2_2.HeliobusRedDotFilter
  L2_2 = L2_2.SNSTabPostTypeList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostType
  L3_2 = L3_2.Unknown
  if A1_2 == L3_2 then
    L3_2 = L2_2.Count
    L3_2 = 0 < L3_2
    return L3_2
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = #A1_2
    if L7_2 == L8_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_tab_reddot_active = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item_button
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._top_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_button
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_single_btn_navigation
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_fan
  L7_2 = L2_2
  L8_2 = nil
  L9_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_single_btn_navigation
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_fan
  L6_2 = nil
  L7_2 = L1_2
  L8_2 = nil
  L9_2 = A0_2._binder
  L9_2 = L9_2.btn_self_post
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_single_btn_navigation
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_self_post
  L6_2 = nil
  L7_2 = L1_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_fan
  L9_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._set_tab_nav = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  A0_2._is_inited = true
  L2_2 = A0_2
  L1_2 = A0_2._play_spine
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._play_spine = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._account_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L1_1.PlayerUserID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._post_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._on_refresh = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._post_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_post
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_post_sync = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._post_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_post
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_tab_enable_reply_comment
  L2_2(L3_2)
end
L0_1._on_post_sync_comment = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.filter_post_table
  L3_2 = A1_2.Type
  L4_2 = A0_2._post_table
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.sort_post_table_by_sort_type
  L4_2 = L2_2
  L5_2 = HeliobusSNSSortType
  L5_2 = L5_2.Type
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._post_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIButtonClick
  L4_2 = A0_2.__name
  L5_2 = ""
  L6_2 = "PostTypeTab_"
  L7_2 = A1_2.PostType
  L7_2 = #L7_2
  L6_2 = L6_2 .. L7_2
  L7_2 = A0_2.guid
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_tab_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailDialog"
  L4_2 = A1_2.ID
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_click_btn = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.IsSendingLike
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.FFOMLPONIFB
    L3_2 = L2_2
    L2_2 = L2_2.IIIJEOFIHIP
    L4_2 = A1_2.ID
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_btn_like = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetHeliobusActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ResidentActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetHeliobusActivityData
    L1_2 = L1_2(L2_2)
    A0_2._activity_data = L1_2
  end
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
L0_1._on_click_rule_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseDialog"
  L1_2(L2_2)
end
L0_1._on_click_user_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseDialog"
  L1_2(L2_2)
end
L0_1._on_click_fan = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseDialog"
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1._on_click_self_post = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_inited
  if L1_2 ~= true then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
return L0_1
