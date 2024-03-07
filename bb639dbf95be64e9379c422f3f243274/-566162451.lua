local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MonopolyActivityTabPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityStateEnum
L1_1 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyQuestPage"
L2_1 = "Ui.ActivityMonopoly.Reward.ActivityMonopolyJackpotMainPage"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MonopolyActivityTabPanel"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  A0_2._is_custom_bind = false
  L4_2 = {}
  A0_2._btn_callback = L4_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyBtnGoTo"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.CommonActivityStateSwitchComposite
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_switch_composite = L1_2
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn
  L1_2(L2_2, L3_2)
end
L3_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_custom_bind
  if not L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._get_panel_prefab_path_by_activity_data
    L3_2 = A0_2._activity_data
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_btn_root_callback
  L3_2 = L0_1.InProgress
  L4_2 = A0_2._on_btn_go
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._btn_callback = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._activity_data
    L2_2 = L2_2.IsPreMissionComplete
    L2_2 = not L2_2
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = A0_2
    L4_2 = A0_2._is_can_to_zoom
    L6_2 = NavigationZoneType
    L6_2 = L6_2.Zone2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = 31
      if L4_2 then
        goto lbl_25
      end
    end
    L4_2 = 1
    ::lbl_25::
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = L2_1
  L1_2(L2_2)
end
L3_1._on_btn_go = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L3_1._expire_call_back = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._btn_callback
  L5_2 = {}
  L5_2.CallbackFunc = A2_2
  L5_2.CallbackSelf = A3_2
  L4_2[A1_2] = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_btn
  L5_2 = L4_2
  L4_2 = L4_2.register_customized_btn_callback
  L6_2 = A0_2._btn_callback
  L4_2(L5_2, L6_2)
end
L3_1._register_btn_root_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_theme
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_timer
  L1_2(L2_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L3_1._setup_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._setup_remain_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.Theme
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.theme_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.theme_icon
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1._setup_theme = L4_1
return L3_1
