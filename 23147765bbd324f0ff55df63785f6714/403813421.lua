local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Talk.SimpleTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyMainEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyMainEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = "UIText_ActivityAlley_Shipping_LeftOrder"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueCommonExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Alley_Lego_LegoUnlock"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "Activity_Alley_Reward_RewardUnlock"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueCommonExcelTable
L6_1 = L6_1.GetData
L7_1 = "Activity_Alley_System_EventUnlock"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.IntValue
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ConstValueCommonExcelTable
L7_1 = L7_1.GetData
L8_1 = "Activity_Alley_System_Airlinelocked"
L7_1 = L7_1(L8_1)
L7_1 = L7_1.Value
L7_1 = L7_1.ArrayValue
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyMainEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.btn_quest_reward
  L4_2 = A0_2._on_btn_quest_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_reward
  L4_2 = A0_2._on_btn_avatar_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_renown_reward
  L4_2 = A0_2._on_btn_renown_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shipping
  L4_2 = A0_2._on_btn_shipping
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_transport
  L4_2 = A0_2._on_btn_transport
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_event
  L4_2 = A0_2._on_btn_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_letter
  L4_2 = A0_2._on_btn_letter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyRenownLevelUp
  L4_2 = A0_2._on_renown_level_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyEventChange
  L4_2 = A0_2._on_alley_event_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyFundsChanged
  L4_2 = A0_2._on_alley_funds_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyExitEntrancePage
  L4_2 = A0_2._on_alley_exit_entrance_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_go
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_go_tip
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tip_panel
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_tip_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_go
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_go_tip
    L0_3.IsShowTip = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tip_panel
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_go
    L0_3.ActionEnabled = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_go_tip
    L0_3.IsShowTip = false
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_shipping
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_shipping
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_transport
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_transport
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_event
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_event
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_letter
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_letter
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_avatar_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quest_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_quest_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_renown_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_renown_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyFundPanel
  L4_2 = G
  L4_2 = L4_2.AlleyFundPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fund_panel = L1_2
  L1_2 = A0_2._fund_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fund_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SimpleTalkPanel
  L4_2 = G
  L4_2 = L4_2.SimpleTalkPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._simple_talk_panel = L1_2
  L1_2 = A0_2._simple_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_talk_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_alley_transport
  L1_2(L2_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetSaveLogisticsMapCsReq
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockAlleyMapLayerList
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.GetAlleyMapIDByLayer
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.TryGenerateAlleyMapGridData
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._init_alley_transport = L8_1
function L8_1(A0_2)
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
L0_1._init_ui_navigation = L8_1
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._top_half_panel_btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
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
    else
      L3_2 = A0_2
      L2_2 = A0_2._try_click_renown_btn
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._special_zoom_btn_list
    L1_2 = #L1_2
    L1_2 = 1 < L1_2
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L8_1
function L8_1(A0_2)
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
L0_1._on_in_control_input_switch = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._special_zoom_btn_list = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tip_panel
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tip_panel
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_random_talk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gameplay_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_left_panel_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_renown_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_funds
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_order_left
  L1_2(L2_2)
end
L0_1._refresh_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyQuest"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_quest_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyAvatar"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_avatar_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetEventMissionData
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  A0_2._is_pack_unlock = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_shipping
  L3_2 = A0_2._is_pack_unlock
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_pack_btn_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_pack_unlock
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_goods_count_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_pack_unlock
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetEventMissionData
  L4_2 = L6_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.IsStart
  L3_2 = L2_2 ~= nil and (L3_2 or L3_2)
  A0_2._is_event_unlock = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_event
  L4_2 = A0_2._is_event_unlock
  L4_2 = not L4_2
  L3_2.IsInFakeDisableState = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_event_btn_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_event_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  A0_2._is_transport_unlock = true
  L3_2 = 0
  L4_2 = L7_1.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L7_1[L6_2]
    L7_2 = L7_2.IntValue
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetEventMissionData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.IsStart
      if L9_2 then
        L9_2 = L8_2.IsFinish
        if not L9_2 then
          A0_2._is_transport_unlock = false
          break
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_transport_btn_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_transport_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_transport
  L4_2 = A0_2._is_transport_unlock
  L4_2 = not L4_2
  L3_2.IsInFakeDisableState = L4_2
  L4_2 = A0_2
  L3_2 = A0_2._check_should_show_btn_tip
  L3_2 = L3_2(L4_2)
  A0_2._is_letter_unlock = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_letter
  L4_2 = A0_2._is_letter_unlock
  L4_2 = not L4_2
  L3_2.IsInFakeDisableState = L4_2
  L3_2 = A0_2._is_event_unlock
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "AlleyEventReward"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_event_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._is_pack_unlock
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "AlleyPack"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_shipping_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._is_transport_unlock
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "AlleyTransport"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_transport_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._is_letter_unlock
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "AlleyEventNew"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_letter_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_gameplay_btn_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.CurRenownLevel
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_renown_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 == 0 then
    L2_2 = A0_2._is_renown_unlock
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level_empty
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_finish
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._check_renown_reward_finish
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level_empty
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_finish
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_level_empty
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_renown_finish
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._refresh_renown_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = L1_1.RenownRewardTakenInfo
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == false then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_renown_reward_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      A0_2._is_time_limit_activity_open = true
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_quest_reward
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_avatar_reward
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
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ResidentActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetAlleyActivityData
    L1_2 = L1_2(L2_2)
    A0_2._activity_data = L1_2
    A0_2._is_time_limit_activity_open = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_quest_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_avatar_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetEventMissionData
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsStart
  L2_2 = L1_2 ~= nil and (L2_2 or L2_2)
  A0_2._is_renown_unlock = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_renown_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_renown_unlock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_renown_unlock
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "AlleyRenownReward"
    L5_2 = nil
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_renown_reddot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_left_panel_navi
  L2_2(L3_2)
end
L0_1._refresh_left_panel_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
  L1_2 = A0_2._is_time_limit_activity_open
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._special_zoom_btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_avatar_reward
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._special_zoom_btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_quest_reward
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_renown_unlock
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._special_zoom_btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_renown_reward
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._special_zoom_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_left_panel_navi = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._goto_id = 0
  A0_2._is_lock = false
  L1_2 = false
  L2_2 = false
  L3_2 = ""
  L4_2 = L1_1.CurMainEventStage
  if L4_2 == 0 then
    L4_2 = L1_1.MaxFinishedMainEventStage
    L5_2 = L1_1.MainEvents
    L5_2 = L5_2.Count
    if L4_2 < L5_2 then
      A0_2._is_lock = true
      L1_2 = true
      L4_2 = L1_1.MainEvents
      L5_2 = L1_1.MaxFinishedMainEventStage
      L4_2 = L4_2[L5_2]
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.GetEventActiveMissionID
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MainMissionExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_ActivityAlley_MainPage_UnlockTimeAfter"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = L6_2.Name
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L3_2 = L7_2
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MainMissionScheduleExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L7_2.ActivityModuleID
        if L8_2 ~= 0 then
          L8_2 = L2_1
          L9_2 = L8_2
          L8_2 = L8_2.GetScheduleDataByActivityModuleID
          L10_2 = L7_2.ActivityModuleID
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.Client
          L9_2 = L9_2.TimeManager
          L9_2 = L9_2.Instance
          L9_2 = L9_2.NowTimeStamp
          if L8_2 then
            L10_2 = L8_2.BeginTimeStamp
            if L9_2 < L10_2 then
              L10_2 = A0_2._binder
              L10_2 = L10_2.remain_time_mission
              L11_2 = L10_2
              L10_2 = L10_2.SetTargetTimeByTimeStamp
              L12_2 = L8_2.BeginTimeStamp
              L13_2 = A0_2._on_timer_expire
              L14_2 = A0_2
              L15_2 = 2
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
            end
          end
        end
      end
  end
  else
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetCurUrgentMissionID
    L4_2 = L4_2(L5_2)
    if L4_2 ~= 0 then
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.GetEventMissionData
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      A0_2._is_lock = true
      L2_2 = true
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_ActivityAlley_MainPage_UnlockMissionAfter"
      L8_2 = L5_2.NameStr
      L6_2 = L6_2(L7_2, L8_2)
      L3_2 = L6_2
      A0_2._goto_id = L4_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tip_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_lock
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_shipping
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_lock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mission_unlock_timer
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_go
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_unlock_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_right_panel_navi
  L4_2(L5_2)
end
L0_1._refresh_right_panel_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._top_half_panel_btn_list = L1_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._top_half_panel_btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_tip_panel
    L1_2(L2_2, L3_2)
  else
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._top_half_panel_btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_shipping
    L1_2(L2_2, L3_2)
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._top_half_panel_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_transport
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._bottom_half_panel_btn_list = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._bottom_half_panel_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_event
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._bottom_half_panel_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_letter
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._top_half_panel_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._bottom_half_panel_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._top_half_panel_btn_list
  L2_2 = A0_2._top_half_panel_btn_list
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.navigation
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Navigation
  L3_2 = L3_2.Mode
  L3_2 = L3_2.Explicit
  L2_2.mode = L3_2
  L3_2 = A0_2._bottom_half_panel_btn_list
  L3_2 = L3_2[1]
  L2_2.selectOnDown = L3_2
  L1_2.navigation = L2_2
  L3_2 = pairs
  L4_2 = A0_2._bottom_half_panel_btn_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L2_2.mode = L8_2
    L2_2.selectOnUp = L1_2
    L7_2.navigation = L2_2
  end
end
L0_1._refresh_right_panel_navi = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.MaxFinishedMainEventStage
  if L1_2 == 4 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_fund_finish
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_fund_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_fund
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.Funds
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_fund_icon
    L4_2 = L1_1.AlleyConstValue
    L4_2 = L4_2.FundItemIconPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_fund_finish
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_fund_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._fund_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.AlleyFormerFunds
    L4_2 = L1_1.Funds
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._fund_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_background_visibility
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_funds = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.UnFinishedNormalOrderNum
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_order_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L3_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_goods_count_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if 0 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_shipping_remind
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
end
L0_1._refresh_order_left = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.AlleyMainEntrancePageSeen
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2.AlleyMainEntrancePageSeen = true
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueCommonExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "Activity_Alley_System_FirstTalk"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L1_2 = L2_2.IntValue
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.RandomGetTalkID
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.RandomGetTalkSentenceID
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L1_2 = L3_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AlleyDeskTalkExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.CustomString
    L5_2 = G
    L5_2 = L5_2.StrExt
    L5_2 = L5_2.IsNullOrEmpty
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.trigger_custom_string
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
  L2_2 = A0_2._simple_talk_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_with_single_talk_sentence_id
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_random_talk = L8_1
function L8_1(A0_2)
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
L0_1._on_btn_rule_tip = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.QuestReward.AlleyQuestRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_quest_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.QuestReward.AlleyAvatarRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_avatar_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownPage"
  L1_2(L2_2)
end
L0_1._on_btn_renown_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_pack_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackMainPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_Panel_LockTips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_shipping = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_transport_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportMainPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_MainPage_AirlineUnlockTips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_transport = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_event_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Event.AlleyEventPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_Panel_LockTips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_event = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_letter_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Event.AlleyLetterDialog"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_Airline_LayerLockTips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_letter = L8_1
function L8_1(A0_2)
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
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = A0_2._goto_id
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_go = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
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
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_timer_expire = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownPage"
  L1_2(L2_2)
end
L0_1._goto_renown_page = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_time_limit_activity_open = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quest_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._hide_limited_reward_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_renown_level
  L1_2(L2_2)
end
L0_1._on_renown_level_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L0_1._on_alley_event_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_funds
    L1_2(L2_2)
  end
end
L0_1._on_alley_funds_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_alley_exit_entrance_page = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.MaxFinishedMainEventStage
  if 1 <= L1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L1_1.CurMainEventStage
  if L2_2 == 1 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AlleyStageExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_1.CurMainEventStage
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetEventMissionData
    L5_2 = L2_2.StageMainMission
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = L3_2.IsFinish
      if L4_2 then
        L4_2 = true
        return L4_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_should_show_btn_tip = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_renown_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_renown_reward
    L1_2(L2_2)
  end
end
L0_1._try_click_renown_btn = L8_1
return L0_1
