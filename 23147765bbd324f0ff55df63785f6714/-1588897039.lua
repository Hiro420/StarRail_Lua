local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumUpgradeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.StuffStats
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_NetworkManager
L2_1 = "UIText_Activity_Museum_Upgrade_NoItemTip"
L3_1 = 32
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "MuseumUpgradeDialog"
L6_1 = G
L6_1 = L6_1.BaseDialog
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._navigation_btn_list = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._museum_area_data = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_btn_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_item
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_A_item
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_B_item
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_C_item
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "MuseumPage"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_area_callback
  L3_2 = A0_2._on_switch_area
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumAreaUpgrade
  L4_2 = A0_2._on_museum_area_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumStatUpgrade
  L4_2 = A0_2._on_museum_stat_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_btn_list
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.ClearPreview
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._museum_area_data = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_ctrl_color
  L3_2 = true
  L4_2 = true
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_area_btn_active
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.OwnerMuseum
  L4_2 = L3_2
  L3_2 = L3_2.GetUnlockAreaNum
  L3_2 = L3_2(L4_2)
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._build_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.Unknown
  L4_2 = A0_2._museum_area_data
  L5_2 = A0_2._museum_area_data
  L5_2 = L5_2.AreaRenewPoint
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_item
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAreaUpgrade"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_A_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.StatsA
  L4_2 = A0_2._museum_area_data
  L5_2 = A0_2._museum_area_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPropertyData
  L7_2 = L0_1.StatsA
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_B_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.StatsB
  L4_2 = A0_2._museum_area_data
  L5_2 = A0_2._museum_area_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPropertyData
  L7_2 = L0_1.StatsB
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_C_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.StatsC
  L4_2 = A0_2._museum_area_data
  L5_2 = A0_2._museum_area_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPropertyData
  L7_2 = L0_1.StatsC
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_items = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._cancel_cur_select
  L1_2(L2_2)
  L1_2 = A0_2._museum_area_data
  L1_2 = L1_2.AreaRenewPoint
  L2_2 = L1_2
  L1_2 = L1_2.IsMax
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.area_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_renew_point_anim
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_area_upgrade_anim
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_property_bar_anim
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_rank_anim
  L1_2(L2_2)
end
L4_1._on_museum_area_upgrade = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.AreaRenewPoint
  L2_2 = L2_2.IsJustMax
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.area_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_renew_point_anim
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_play_property_bar_anim
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_play_rank_anim
  L2_2(L3_2)
end
L4_1._on_museum_stat_upgrade = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._build_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_navigation_dirty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L4_1._on_museum_refresh_notify = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._navigation_btn_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.gameObject
    L7_2 = G
    L7_2 = L7_2.CS
    L7_2 = L7_2.EventSystem
    L7_2 = L7_2.current
    L7_2 = L7_2.currentSelectedGameObject
    if L6_2 == L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L4_1._is_navigation_dirty = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._navigation_btn_list = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navigation_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.phase_item
  L4_2 = L3_2
  L3_2 = L3_2.get_navigation_btn
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navigation_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.stats_A_item
  L4_2 = L3_2
  L3_2 = L3_2.get_navigation_btn
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navigation_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.stats_B_item
  L4_2 = L3_2
  L3_2 = L3_2.get_navigation_btn
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._navigation_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.stats_C_item
  L4_2 = L3_2
  L3_2 = L3_2.get_navigation_btn
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._navigation_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._build_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.ClearPreview
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_selected_item
  L2_2 = L1_2
  L1_2 = L1_2.set_selected
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._cur_selected_item = nil
end
L4_1._cancel_cur_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._cur_selected_item
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_item
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._cur_selected_item
      L3_2 = L2_2
      L2_2 = L2_2.set_selected
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._cur_selected_item = A1_2
  L2_2 = A0_2._cur_selected_item
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_selected_item
  L3_2 = L2_2
  L2_2 = L2_2.get_stat_type
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cur_selected_item
  L4_2 = L3_2
  L3_2 = L3_2.get_prop_data
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.CanUpdate
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_upgrade
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.area_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_show_preview
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.area_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_renew_point_preview
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.area_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_rank_preview
  L6_2 = L0_1.Unknown
  L6_2 = L2_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.area_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_show_color_preview
  L6_2 = L0_1.Unknown
  L6_2 = L2_2 == L6_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._museum_area_data
    L5_2 = L4_2
    L4_2 = L4_2.ClearPreview
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = L0_1.Unknown
    if L2_2 == L4_2 then
      L4_2 = A0_2._museum_area_data
      L5_2 = L4_2
      L4_2 = L4_2.PreviewNextLevelArea
      L4_2(L5_2)
    else
      L4_2 = A0_2._museum_area_data
      L5_2 = L4_2
      L4_2 = L4_2.PreviewNextLevelStat
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = A0_2._museum_area_data
    L5_2 = L4_2
    L4_2 = L4_2.ClearPreview
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._cancel_cur_select
    L4_2(L5_2)
  end
end
L4_1._on_btn_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_selected_item
  L2_2 = L1_2
  L1_2 = L1_2.get_stat_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.is_upgrade_cost_affordable
  L3_2 = A0_2._cur_selected_item
  L4_2 = L3_2
  L3_2 = L3_2.get_prop_data
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L0_1.Unknown
  if L1_2 == L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.LLKKICPJMMD
    L4_2 = A0_2._museum_area_data
    L4_2 = L4_2.ID
    L5_2 = A0_2._museum_area_data
    L5_2 = L5_2.Level
    L5_2 = L5_2 + 1
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._cur_selected_item
    L3_2 = L2_2
    L2_2 = L2_2.get_prop_data
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Level
    L2_2 = L2_2 + 1
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.MuseumUtils
    L3_2 = L3_2.ConvertStuffStatsToStatType
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.OHLKJMHLMCM
    L6_2 = A0_2._museum_area_data
    L6_2 = L6_2.ID
    L7_2 = L3_2
    L8_2 = L2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L4_1._on_btn_upgrade = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.ID
  L2_2 = L2_2 + A1_2
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.OwnerMuseum
  L4_2 = L3_2
  L3_2 = L3_2.GetUnlockAreaNum
  L3_2 = L3_2(L4_2)
  if L2_2 > L3_2 then
    L2_2 = L2_2 - L3_2
  end
  if L2_2 <= 0 then
    L2_2 = L2_2 + L3_2
  end
  L4_2 = A0_2._museum_area_data
  L5_2 = L4_2
  L4_2 = L4_2.ClearPreview
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._museum_area_data
  L4_2 = L4_2.OwnerMuseum
  L5_2 = L4_2
  L4_2 = L4_2.GetAreaData
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._museum_area_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._cancel_cur_select
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.MuseumCurEditAreaChange
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L4_1._on_switch_area = L5_1
return L4_1
