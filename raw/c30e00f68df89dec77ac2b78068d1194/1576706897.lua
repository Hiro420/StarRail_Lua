local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmCocoonPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmCocoonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmCocoonPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
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
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cocoon_id = A1_2
  A0_2._prop_entity_id = A2_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.RefreshDailyProp
  L3_2(L4_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "RewardConfirmDialog"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cocoon
  L2_2 = L1_2
  L1_2 = L1_2.register_start_callback
  L3_2 = A0_2._on_team_ready
  L4_2 = A0_2
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MFBHKGNFJNN
  L4_2 = A0_2._on_start_cocoon_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cocoon
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cocoon_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.CacnelCocoon
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.EnterBattle
    L5_2 = L4_2
    L4_2 = L4_2.TriggerBattleByCocoon
    L6_2 = A0_2._prop_entity_id
    L7_2 = A0_2._cocoon_id
    L8_2 = A2_2
    L9_2 = A1_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActiveByScale
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1._on_team_ready = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RefreshDailyProp
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "StartCocoonStageScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Retcode
    if L3_2 == 0 then
      goto lbl_20
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.RemoveAssistAvatar
  L3_2(L4_2)
  ::lbl_20::
end
L0_1._on_start_cocoon_sc_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cocoon
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L2_1
return L0_1
