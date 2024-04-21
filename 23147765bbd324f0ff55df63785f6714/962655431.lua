local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Phone.HudIconItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.HudIconItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphHideTouchPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = "SpriteOutput/CameraIcon/CrameraMain/IconFirstperson.png"
L2_1 = "SpriteOutput/CameraIcon/CrameraMain/IconDefaultPerspectiveDisable.png"
L3_1 = "SpriteOutput/CameraIcon/CrameraMain/IconHide.png"
L4_1 = "SpriteOutput/CameraIcon/CrameraMain/IconPerspective.png"
L5_1 = "SpriteOutput/CameraIcon/IconShotDisable.png"
L6_1 = "SpriteOutput/CameraIcon/IconShot.png"
L7_1 = "UIText_PhotoGraph_Identify_Pending_Shot_Disable"
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "PhotoGraphPanel"
L10_1 = G
L10_1 = L10_1.BasePanel
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shot
  L4_2 = A0_2._on_btn_shot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unhide
  L4_2 = A0_2._on_btn_unhide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyStateChanged
  L4_2 = L8_1._on_identify_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphEnableFunc
  L4_2 = A0_2._on_enable_func
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_hide_touch_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_func_item
  L1_2(L2_2)
  A0_2._is_enable_func = true
  L2_2 = A0_2
  L1_2 = A0_2._init_for_photograph_mode
  L1_2(L2_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._btn_shot_click_callback_handler = nil
  A0_2._btn_shot_click_callback_listener = nil
end
L8_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.is_identify_mode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fuc_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_move
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L8_1._init_for_photograph_mode = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.PhotoGraphHideTouchPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._hide_touch_panel = L1_2
end
L8_1._init_hide_touch_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_perspective_func_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_hide_ui_func_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_reset_camera_func_item
  L1_2(L2_2)
end
L8_1._init_func_item = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_perspective
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_tip_key
  L3_2 = "Menu_UnchangeLeftStickButton"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_perspective
  L2_2 = L1_2
  L1_2 = L1_2.setup_icon
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_perspective
  L2_2 = L1_2
  L1_2 = L1_2.register_click_event
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_enable_func
    if not L0_3 then
      return
    end
    L0_3 = A0_2._is_firsr_person_perspective
    L0_3 = not L0_3
    A0_2._is_firsr_person_perspective = L0_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.PhotoGraphFuncSwitchPerspective
    L2_3 = A0_2._is_firsr_person_perspective
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_perspective_func
    L2_3 = A0_2._is_firsr_person_perspective
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_perspective_func
  L3_2 = G
  L3_2 = L3_2.PhotoGraphUtils
  L3_2 = L3_2.get_cur_photograph_mode
  L3_2 = L3_2()
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PhotoGraphModeType
  L4_2 = L4_2.CommonShotFirstPerson
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L8_1._init_perspective_func_item = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_firsr_person_perspective = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_move
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_layout
  L4_2 = L4_2()
  L4_2 = A0_2._is_firsr_person_perspective
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
end
L8_1.refresh_perspective_func = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.is_identify_mode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = A0_2._is_identify_pending
  L2_2 = not L2_2 or L2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_shot_btn_show_state
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L8_1._refresh_shot_btn = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hide_ui_func_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_tip_key
  L3_2 = "Menu_UnchangeBack"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.setup_icon
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.register_click_event
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_enable_func
    if not L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._hide
    L0_3(L1_3)
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.PhotoGraphFuncSwitchUIVisibility
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_unhide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L8_1._init_hide_ui_func_item = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_reset_camera
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_tip_key
  L3_2 = "Menu_UnchangeRightStickButton"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_reset_camera
  L2_2 = L1_2
  L1_2 = L1_2.setup_icon
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.func_panel_reset_camera
  L2_2 = L1_2
  L1_2 = L1_2.register_click_event
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._is_enable_func
    if not L0_3 then
      return
    end
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.PhotoGraphReset
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L8_1._init_reset_camera_func_item = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_fov_ratio
  L1_2 = L1_2(L2_2)
  L0_1.CurFOVRatio = L1_2
end
L8_1.save_fov_ratio = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.recover_fov_ratio
  L1_2(L2_2)
end
L8_1.recover_fov_ratio = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._btn_shot_click_callback_handler = A1_2
  A0_2._btn_shot_click_callback_listener = A2_2
end
L8_1.override_btn_shot_click_callback = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.setup_fov
  L1_2(L2_2)
end
L8_1.setup_fov = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IdentifyState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphIdentifyState
  L3_2 = L3_2.IdentifyPending
  L2_2 = L2_2 == L3_2
  A0_2._is_identify_pending = L2_2
end
L8_1._on_identify_state_change = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_enable_func
  if not L1_2 then
    return
  end
  L1_2 = A0_2._btn_shot_click_callback_handler
  if L1_2 then
    L1_2 = A0_2._btn_shot_click_callback_handler
    L2_2 = A0_2._btn_shot_click_callback_listener
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.PhotoGraphSys
  L4_2 = L2_2
  L3_2 = L2_2.TakePhoto
  L3_2(L4_2)
end
L8_1._on_btn_shot = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_shot
  L3_2 = L2_2
  L2_2 = L2_2.set_shot_handler_enable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L8_1.set_shot_handler_enable = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_shot
  L3_2 = L2_2
  L2_2 = L2_2.set_shot_btn_show_state
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L8_1.set_shot_btn_show_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_unhide
  L1_2(L2_2)
end
L8_1.unhide = L9_1
function L9_1(A0_2, A1_2)
  A0_2._is_enable_func = A1_2
end
L8_1._on_enable_func = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._hide_touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_unhide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._un_hide
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.PhotoGraphFuncSwitchUIVisibility
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L8_1._on_btn_unhide = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shot_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_fuc_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_unhide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hide_touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide
  L1_2(L2_2)
end
L8_1._hide = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shot_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_fuc_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_unhide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L8_1._un_hide = L9_1
return L8_1
