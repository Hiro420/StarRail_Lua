local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseAccountInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseAccountInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.SelfPost.HeliobusPopulationPhaseSelfPostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.SelfPost.HeliobusPopulationPhaseSelfPostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.HeliobusPopulationPhaseDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDialog"
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
L2_1 = {}
L2_1.Fan = 1
L2_1.SelfPost = 2
L3_1 = 3
L4_1 = 5
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
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
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1.PopPhase
  A0_2._pop_phase = L2_2
  A0_2._target_tab_idx = A1_2
end
L0_1.init = L5_1
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
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_fan_panel
      L2_2 = L2_2.gameObject
      L2_2 = L2_2.activeSelf
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._fan_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_navigation_target
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._self_post_panel
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
  L3_2 = L3_2.HeliobusPopulationPhaseAccountInfoPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseAccountInfoPanelBinder
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
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseFanPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseFanPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fan_panel = L1_2
  L1_2 = A0_2._fan_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fan_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseSelfPostPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseSelfPostPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._self_post_panel = L1_2
  L1_2 = A0_2._self_post_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_self_post_panel
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_table = L1_2
  A0_2._is_first = true
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  tabInfo = L2_2
  L2_2 = tabInfo
  L3_2 = L2_1.Fan
  L2_2.Type = L3_2
  L2_2 = tabInfo
  L2_2.TextID = "UIText_Heliobus_SNSCenter_Tab1"
  L2_2 = tabInfo
  L2_2.SelectedImg = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusTabIconDigital.png"
  L2_2 = tabInfo
  L2_2.UnSelectedImg = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusTabIconDigitalSelected.png"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = tabInfo
  L2_2(L3_2, L4_2)
  L2_2 = {}
  tabInfo = L2_2
  L2_2 = tabInfo
  L3_2 = L2_1.SelfPost
  L2_2.Type = L3_2
  L2_2 = tabInfo
  L2_2.TextID = "UIText_Heliobus_SNSCenter_Tab2"
  L2_2 = tabInfo
  L2_2.SelectedImg = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusTabIconUser.png"
  L2_2 = tabInfo
  L2_2.UnSelectedImg = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusTabIconUserSelected.png"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = tabInfo
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HeliobusPopulationPhaseTabItem
    L9_2 = G
    L9_2 = L9_2.HeliobusPopulationPhaseTabItemBinder
    L10_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.register_callback
    L9_2 = A0_2._on_tab_click
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._top_tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._top_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1._generate_tab_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._account_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L1_2 = A0_2._target_tab_idx
  if L1_2 ~= nil then
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = A0_2._target_tab_idx
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  A0_2._is_first = false
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._pop_phase
  L4_2 = L3_1
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_silver_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._pop_phase
  L4_2 = L3_1
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_gold_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._pop_phase
  L4_2 = L4_1
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_bg = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._fan_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_post
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_post_sync = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._swtich_panel
  L4_2 = A1_2.Type
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fan_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1.Fan
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_self_post_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1.SelfPost
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.Fan
  if A1_2 == L2_2 then
    L2_2 = A0_2._fan_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L2_2 = A0_2._is_first
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fan_panel
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "HeliobusTransitionDashboard_FadeIn"
      L2_2(L3_2, L4_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromEnd
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_fan_panel
      L4_2 = "HeliobusTransitionDashboard_FadeIn"
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = L2_1.SelfPost
    if A1_2 == L2_2 then
      L2_2 = A0_2._self_post_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
    end
  end
end
L0_1._swtich_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
return L0_1
