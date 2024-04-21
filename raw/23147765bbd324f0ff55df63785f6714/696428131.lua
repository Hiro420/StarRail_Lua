local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmElementQuickPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Farm.FarmElementUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FarmModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FarmElementQuickPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmElementQuickPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._farm_element_id = 0
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.FarmElementUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d = L1_2
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
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._farm_element_id = A1_2
  L2_2 = A0_2._ui3d
  L3_2 = L2_2
  L2_2 = L2_2.setup_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_meta
  L1_2.EnableDOF = false
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "RewardConfirmDialog"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_element
  L2_2 = L1_2
  L1_2 = L1_2.set_func_get_stage
  L3_2 = A0_2._get_stage_id
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_element
  L2_2 = L1_2
  L1_2 = L1_2.register_start_callback
  L3_2 = A0_2._on_team_ready
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_element
  L2_2 = L1_2
  L1_2 = L1_2.register_start_check_callback
  L3_2 = A0_2._check_start
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetQuickFarmEndTimeStamp
  L5_2 = A0_2._farm_element_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._on_time_end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_element
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._farm_element_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsQuickFarmOpen
  L3_2 = A0_2._farm_element_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.mono_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetQuickFarmEndTimeStamp
  L5_2 = A0_2._farm_element_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._on_time_end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_time_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FarmElementConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._farm_element_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.StageID
  return L3_2
end
L1_1._get_stage_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.IsQuickFarmOpen
  L4_2 = A0_2._farm_element_id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "RetCodeError_1811"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.StartQuickFarmBattle
  L4_2 = A0_2._farm_element_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_team_ready = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsQuickFarmOpen
  L3_2 = A0_2._farm_element_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "RetCodeError_1811"
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L1_1._check_start = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_element
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L1_1._on_enter_zoom = L2_1
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
L1_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L1_1._in_control_exit_click = L2_1
return L1_1
