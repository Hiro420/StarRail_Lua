local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TimeLimitActivityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ResidentActivityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ActivityResidentPanel_SubTitle"
L2_1 = "UIText_ActivityPanel_SubTitle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_LRUCached
  A0_2._view_cache_type = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityPageBinder
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
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  A0_2._activity_module = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ResidentActivityModule
  A0_2._resident_activity_module = L1_2
  L1_2 = A0_2._activity_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableActivityDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._time_limit_activity_exist = L1_2
  L1_2 = A0_2._resident_activity_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableActivityDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._resident_activity_exist = L1_2
  L1_2 = {}
  A0_2._panel_table = L1_2
  L1_2 = {}
  A0_2._instantiated_time_limit_panels = L1_2
  L1_2 = {}
  A0_2._instantiated_resident_panels = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._activity_module
    L3_2 = L2_2
    L2_2 = L2_2.GetActivityDataByPanelID
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.PanelID
      A0_2._init_time_limit_panel_id = L3_2
    else
      L3_2 = A0_2._resident_activity_module
      L4_2 = L3_2
      L3_2 = L3_2.GetActivityDataByPanelID
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 ~= nil then
        L4_2 = L3_2.PanelID
        A0_2._init_resident_panel_id = L4_2
      end
    end
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableActivityDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  return L1_2
end
L0_1._get_time_limit_activity_num = L3_1
function L3_1(A0_2, A1_2)
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
end
L0_1._on_leave_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._current_activity_panel
  if L2_2 then
    L2_2 = A0_2._current_activity_panel
    L3_2 = L2_2
    L2_2 = L2_2._is_can_to_zoom
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_activity_panel
  if L1_2 then
    L1_2 = A0_2._current_activity_panel
    L2_2 = L1_2
    L1_2 = L1_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._time_limit_activity_exist
  if L3_2 then
    L3_2 = A0_2._resident_activity_exist
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeInHierarchy
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_switch_btn
    L2_2 = L1_2
    L1_2 = L1_2.GetLayerIndex
    L3_2 = "SwitchLayer"
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._current_activity_panel
    L3_2 = A0_2._time_limit_activity_panel
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_switch_btn
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "BtnSwitch_ToLeft"
      L5_2 = L1_2
      L6_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_switch_btn
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "SwitchRight"
      L2_2(L3_2, L4_2)
    end
  end
  L1_2 = A0_2._current_activity_panel
  if L1_2 then
    L1_2 = A0_2._current_activity_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._time_limit_activity_exist
  if L3_2 then
    L3_2 = A0_2._resident_activity_exist
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_activity_panel
  L2_2 = A0_2._resident_activity_panel
  if L1_2 == L2_2 then
    L1_2 = A0_2._time_limit_activity_exist
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator_switch_btn
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "SwitchRight"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._current_activity_panel
    L2_2 = A0_2._time_limit_activity_panel
    if L1_2 == L2_2 then
      L1_2 = A0_2._resident_activity_exist
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.animator_switch_btn
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "SwitchLeft"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_switch_btn_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._current_activity_panel
  if L2_2 then
    L2_2 = A0_2._current_activity_panel
    L3_2 = L2_2
    L2_2 = L2_2.try_refresh_all
    L2_2(L3_2)
  end
  L2_2 = A0_2._current_activity_panel
  if L2_2 then
    L2_2 = A0_2._current_activity_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_top_page
    L2_2(L3_2)
  end
  L2_2 = A0_2._current_activity_panel
  if L2_2 then
    L2_2 = A0_2._current_activity_panel
    L2_2 = L2_2.play_return_to_top_effect
    if L2_2 then
      L2_2 = A0_2._current_activity_panel
      L3_2 = L2_2
      L2_2 = L2_2.play_return_to_top_effect
      L2_2(L3_2)
    end
  end
end
L0_1._on_view_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_activity_panel
  if L1_2 then
    L1_2 = A0_2._current_activity_panel
    L2_2 = L1_2
    L1_2 = L1_2.on_first_child_dialog_open
    L1_2(L2_2)
  end
end
L0_1._on_first_child_dialog_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_switch
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityPanelBtnSwitch"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.switch_btn_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_activity_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_current_activity_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_activity_panel
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_activity_panel
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityPageRefresh
  L4_2 = L0_1._refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._panel_table = nil
  L1_2 = {}
  A0_2._instantiated_resident_panels = L1_2
  L1_2 = {}
  A0_2._instantiated_time_limit_panels = L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableActivityDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._time_limit_activity_exist = L1_2
  L1_2 = A0_2._resident_activity_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableActivityDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._resident_activity_exist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn_view
  L1_2(L2_2)
  L1_2 = A0_2._current_activity_panel
  L2_2 = A0_2._current_activity_panel
  if L2_2 then
    L2_2 = A0_2._current_activity_panel
    L3_2 = A0_2._time_limit_activity_panel
    if L2_2 == L3_2 then
      L2_2 = A0_2._time_limit_activity_exist
      if not L2_2 then
        L2_2 = A0_2._resident_activity_exist
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._switch_activity_panel
          L2_2(L3_2)
        else
          A0_2._current_activity_panel = nil
        end
    end
    else
      L2_2 = A0_2._current_activity_panel
      L3_2 = A0_2._resident_activity_panel
      if L2_2 == L3_2 then
        L2_2 = A0_2._resident_activity_exist
        if not L2_2 then
          L2_2 = A0_2._time_limit_activity_exist
          if L2_2 then
            L3_2 = A0_2
            L2_2 = A0_2._switch_activity_panel
            L2_2(L3_2)
          else
            A0_2._current_activity_panel = nil
          end
        end
      end
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._init_current_activity_panel
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.empty_node
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._current_activity_panel
  L4_2 = L4_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._current_activity_panel
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._current_activity_panel
  if L1_2 ~= L2_2 then
    L2_2 = A0_2._current_activity_panel
    if L2_2 then
      L2_2 = A0_2._current_activity_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
    end
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_activity_panel
  L1_2(L2_2)
  L1_2 = A0_2._current_activity_panel
  if L1_2 then
    L1_2 = A0_2._current_activity_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
  end
end
L0_1._on_btn_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TimeLimitActivityPanel
  L4_2 = G
  L4_2 = L4_2.TimeLimitActivityPanelBinder
  L5_2 = A0_2._init_panel_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._time_limit_activity_panel = L1_2
  L1_2 = A0_2._time_limit_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._init_time_limit_panel_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._time_limit_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_time_limit_activity_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ResidentActivityPanel
  L4_2 = G
  L4_2 = L4_2.ResidentActivityPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._resident_activity_panel = L1_2
  L1_2 = A0_2._resident_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._init_resident_panel_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._resident_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_resident_activity_panel
  L1_2(L2_2, L3_2)
end
L0_1._init_activity_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._time_limit_activity_exist
  if L1_2 then
    L1_2 = A0_2._resident_activity_exist
    if L1_2 then
      L1_2 = A0_2._init_resident_panel_id
      if L1_2 then
        goto lbl_20
      end
    end
    L1_2 = A0_2._time_limit_activity_panel
    A0_2._current_activity_panel = L1_2
    L1_2 = A0_2._resident_activity_panel
    A0_2._next_activity_panel = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  ::lbl_20::
  else
    L1_2 = A0_2._resident_activity_exist
    if L1_2 then
      L1_2 = A0_2._resident_activity_panel
      A0_2._current_activity_panel = L1_2
      L1_2 = A0_2._time_limit_activity_panel
      A0_2._next_activity_panel = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_sub_title
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    else
      return
    end
  end
  L1_2 = A0_2._current_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.custom_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_activity_panel
  L2_2 = L1_2
  L1_2 = L1_2.custom_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_current_activity_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_activity_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._current_activity_panel
    L2_2 = L1_2
    L1_2 = L1_2.on_before_switch_out
    L1_2(L2_2)
  end
  L1_2 = A0_2._next_activity_panel
  L2_2 = A0_2._current_activity_panel
  A0_2._next_activity_panel = L2_2
  A0_2._current_activity_panel = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hint_btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._current_activity_panel
  L5_2 = A0_2._resident_activity_panel
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._current_activity_panel
  L3_2 = L2_2
  L2_2 = L2_2.custom_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._next_activity_panel
  L3_2 = L2_2
  L2_2 = L2_2.custom_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._current_activity_panel
  L3_2 = A0_2._resident_activity_panel
  if L2_2 == L3_2 then
    L2_2 = A0_2._time_limit_activity_exist
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_switch_btn
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "SwitchRight"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_sub_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_1
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._current_activity_panel
    L3_2 = A0_2._time_limit_activity_panel
    if L2_2 == L3_2 then
      L2_2 = A0_2._resident_activity_exist
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.animator_switch_btn
        L3_2 = L2_2
        L2_2 = L2_2.SetTrigger
        L4_2 = "SwitchLeft"
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_sub_title
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L2_1
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2._current_activity_panel
  L3_2 = L2_2
  L2_2 = L2_2.report_panel_switch
  L2_2(L3_2)
end
L0_1._switch_activity_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hint_btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_hint_btn_show_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.PrefabPath
  L4_2 = A0_2
  L3_2 = A0_2._try_instantiate_prefab
  L5_2 = A1_2
  L6_2 = L2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._get_panel_prefab_path_by_activity_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.IsResidentPanel
  if L3_2 then
    L3_2 = A0_2._instantiated_resident_panels
    L4_2 = A1_2.PanelID
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L3_2 = A0_2._instantiated_resident_panels
      L4_2 = A1_2.PanelID
      L3_2 = L3_2[L4_2]
      return L3_2
    end
    L3_2 = A0_2._instantiated_resident_panels
    L4_2 = A1_2.PanelID
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L3_2 = A0_2._instantiated_resident_panels
      L4_2 = A1_2.PanelID
      L3_2 = L3_2[L4_2]
      return L3_2
    end
    L4_2 = A0_2
    L3_2 = A0_2.sync_load_prefab
    L5_2 = A2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.resident_node_list_panel
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2._instantiated_resident_panels
    L5_2 = A1_2.PanelID
    L4_2[L5_2] = L3_2
    return L3_2
  else
    L3_2 = A0_2._instantiated_time_limit_panels
    L4_2 = A1_2.PanelID
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L3_2 = A0_2._instantiated_time_limit_panels
      L4_2 = A1_2.PanelID
      L3_2 = L3_2[L4_2]
      return L3_2
    end
    L4_2 = A0_2
    L3_2 = A0_2.sync_load_prefab
    L5_2 = A2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_list_panel
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2._instantiated_time_limit_panels
    L5_2 = A1_2.PanelID
    L4_2[L5_2] = L3_2
    return L3_2
  end
end
L0_1._try_instantiate_prefab = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = {}
    A0_2._instantiated_resident_panels = L2_2
  else
    L2_2 = {}
    A0_2._instantiated_time_limit_panels = L2_2
  end
end
L0_1._clear_cached_prefab_instance = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = A0_2._current_activity_panel
    if L2_2 then
      L2_2 = A0_2._current_activity_panel
      L3_2 = L2_2
      L2_2 = L2_2.on_left_stick_button_click
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_action_click = L3_1
return L0_1
