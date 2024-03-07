local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.CompanionMissionActivityAvatarTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.CompanionMissionActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityCompanionMission.ActivityCompanionMissionMultiAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityCompanionMission.ActivityCompanionMissionSingleAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CompanionMissionActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = {}
  A0_2._reward_items = L4_2
  L4_2 = {}
  A0_2._config_ids = L4_2
  A0_2._default_tab_index = 1
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._condition_panel
      L3_2 = L2_2
      L2_2 = L2_2._is_can_to_zoom
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.on_left_stick_button_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityConditionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityConditionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._multiple_condition_panel = L1_2
  L1_2 = A0_2._multiple_condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_condition_view
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityConditionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityConditionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._single_condition_panel = L1_2
  L1_2 = A0_2._single_condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_single_condition_view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityCompanionMissionSingleAvatarPanel
  L4_2 = G
  L4_2 = L4_2.ActivityCompanionMissionSingleAvatarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._single_avatar_panel = L1_2
  L1_2 = A0_2._single_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_single_avatar
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityCompanionMissionMultiAvatarPanel
  L4_2 = G
  L4_2 = L4_2.ActivityCompanionMissionMultiAvatarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._multi_avatar_panel = L1_2
  L1_2 = A0_2._multi_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_multi_avatar
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CompanionActivityBannerUpdate
  L4_2 = L0_1._refresh
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_tab_control = L1_2
  L1_2 = A0_2._avatar_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._avatar_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._avatar_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CompanionMissionActivityUtils
  L2_2 = L2_2.GetInScheduleBannerDataList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = A0_2._avatar_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.clear
  L2_2(L3_2)
  L2_2 = A0_2._avatar_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tab_select
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = {}
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = 0
    L8_2 = L1_2[L6_2]
    L8_2 = L8_2.MainMissionIDList
    L8_2 = L8_2.Count
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L2_2
      L13_2 = L1_2[L6_2]
      L13_2 = L13_2.MainMissionIDList
      L13_2 = L13_2[L10_2]
      L11_2(L12_2, L13_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.MainMissionDataPromised
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.Then
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = table
    L0_3 = L0_3.sort
    L1_3 = L1_2
    function L2_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4
      L3_4 = A0_4
      L2_4 = A0_4.IsMissionFinish
      L2_4 = L2_4(L3_4)
      L4_4 = A1_4
      L3_4 = A1_4.IsMissionFinish
      L3_4 = L3_4(L4_4)
      if L2_4 ~= L3_4 then
        return L3_4
      end
      L4_4 = A0_4.SortID
      L5_4 = A1_4.SortID
      L4_4 = L4_4 > L5_4
      return L4_4
    end
    L0_3(L1_3, L2_3)
    L0_3 = 1
    L1_3 = L1_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A0_2
      L5_3 = L4_3
      L4_3 = L4_3.create_panel
      L6_3 = G
      L6_3 = L6_3.CompanionMissionActivityAvatarTabItem
      L7_3 = G
      L7_3 = L7_3.CompanionMissionActivityAvatarTabItemBinder
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L4_3.button_prefab_index = 0
      L6_3 = L4_3
      L5_3 = L4_3.bind
      L7_3 = A0_2._binder
      L7_3 = L7_3.node_avatar_text
      L5_3(L6_3, L7_3)
      L6_3 = L4_3
      L5_3 = L4_3.setup_view
      L7_3 = L1_2[L3_3]
      L7_3 = L7_3.BannerID
      L8_3 = L1_2[L3_3]
      L8_3 = L8_3.IsFinish
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = A0_2._avatar_tab_control
      L6_3 = L5_3
      L5_3 = L5_3.add_item
      L7_3 = L4_3
      L5_3(L6_3, L7_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1._refresh_tab_items = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_banner_row
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._current_banner_row
    L3_2 = L3_2.Title
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._current_banner_row
    L3_2 = L3_2.SubTitle
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_tips = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L1_1
function L1_1(A0_2)
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
L0_1._setup_remain_time = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_item_changed = L1_1
function L1_1(A0_2)
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
L0_1._on_btn_explain = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_banner_row
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L3_2 = L1_2
    L2_2 = L1_2.MainMissionDataPromised
    L4_2 = A0_2._current_banner_row
    L4_2 = L4_2.MainMissionIDList
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.ThenLuaAction
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = 0
      L1_3 = A0_2._current_banner_row
      L1_3 = L1_3.MainMissionIDList
      L1_3 = L1_3.Length
      L1_3 = L1_3 - 1
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L1_2
        L5_3 = L4_3
        L4_3 = L4_3.TryGetMainMissionData
        L6_3 = A0_2._current_banner_row
        L6_3 = L6_3.MainMissionIDList
        L6_3 = L6_3[L3_3]
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = L4_3.IsFinish
        if not L5_3 then
          L5_3 = G
          L5_3 = L5_3.MissionUtils
          L5_3 = L5_3.common_jump_to_mission_by_main_mission
          L6_3 = L4_3
          L5_3(L6_3)
          return
        end
      end
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_go = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L1_2 = A0_2._avatar_tab_control
    L1_2 = L1_2.current_select_item
    L1_2 = L1_2.banner_id
    A0_2._current_banner_id = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ActivityBannerCompanyMissionExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._current_banner_id
    L1_2 = L1_2(L2_2)
    A0_2._current_banner_row = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  end
end
L0_1._on_tab_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CompanionMissionActivityUtils
  L2_2 = L2_2.GetInScheduleBannerIDList
  L2_2 = L2_2()
  L3_2 = L2_2.Count
  if L3_2 == 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_single_avatar_text
    A0_2._node_avatar_text = L3_2
    L3_2 = A0_2._single_condition_panel
    A0_2._condition_panel = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_single_avatar_desc
    A0_2._text_avatar_desc = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_single_role
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_multiple_role
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = L2_2[0]
    A0_2._current_banner_id = L3_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ActivityBannerCompanyMissionExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._current_banner_id
    L3_2 = L3_2(L4_2)
    A0_2._current_banner_row = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_view
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L4_2 = L3_2.CompanionMissionActivityNewBannerIDSet
    L5_2 = L4_2
    L4_2 = L4_2.Contains
    L6_2 = A0_2._current_banner_id
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L3_2.CompanionMissionActivityNewBannerIDSet
      L5_2 = L4_2
      L4_2 = L4_2.Remove
      L6_2 = A0_2._current_banner_id
      L4_2(L5_2, L6_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.Prefs
      L4_2 = L4_2.ForceSave
      L4_2()
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.ActivityForceRefreshRedDot
      L4_2(L5_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_avatar_text
    A0_2._node_avatar_text = L3_2
    L3_2 = A0_2._multiple_condition_panel
    A0_2._condition_panel = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_avatar_desc
    A0_2._text_avatar_desc = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_single_role
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_multiple_role
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    if A1_2 then
      A0_2._pre_select_index = nil
    end
    L3_2 = A0_2._avatar_tab_control
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._refresh_tab_items
      L3_2(L4_2)
      L3_2 = A0_2._avatar_tab_control
      L4_2 = L3_2
      L3_2 = L3_2.click_item_by_uid
      L5_2 = A0_2._default_tab_index
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._init_tab_control
      L3_2(L4_2)
    end
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._text_avatar_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._current_banner_row
  L3_2 = L3_2.ShortDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state_by_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_img
  L1_2(L2_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_can_to_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = 32
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = 1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh_gamepad_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L1_2 = A0_2._condition_panel
    L2_2 = L1_2
    L1_2 = L1_2._is_can_to_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L4_2 = A0_2
      L3_2 = A0_2.get_first_selected_object
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._refresh_gamepad_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._current_banner_row
  L3_2 = L3_2.MainMissionIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.MissionUtils
    L6_2 = L6_2.GetDisplayRewardID
    L7_2 = A0_2._current_banner_row
    L7_2 = L7_2.MainMissionIDList
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableFromRewardList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.sort_reward_item
  L3_2 = A0_2._reward_items
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_ids
  L2_2(L3_2)
end
L0_1._refresh_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = {}
  A0_2._main_mission_data = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.MainMissionDataPromised
  L4_2 = A0_2._current_banner_row
  L4_2 = L4_2.MainMissionIDList
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = false
    L1_3 = 0
    L2_3 = A0_2._current_banner_row
    L2_3 = L2_3.MainMissionIDList
    L2_3 = L2_3.Length
    L2_3 = L2_3 - 1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L1_2
      L6_3 = L5_3
      L5_3 = L5_3.TryGetMainMissionData
      L7_3 = A0_2._current_banner_row
      L7_3 = L7_3.MainMissionIDList
      L7_3 = L7_3[L4_3]
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 ~= nil then
        if not L0_3 then
          L6_3 = L5_3.IsStart
          L0_3 = L6_3 or L0_3
          if not L6_3 then
            L0_3 = L5_3.IsFinish
          end
        end
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = A0_2._main_mission_data
        L8_3 = L5_3
        L6_3(L7_3, L8_3)
      end
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_state
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_btn_state
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_condition_panel
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_gamepad_hint
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_gamepad_target
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_state_by_mission = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._load_animation_img
  L1_2(L2_2)
  L1_2 = A0_2._pre_select_index
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._play_fade_in
    L1_2(L2_2)
  else
    L1_2 = A0_2._avatar_tab_control
    L1_2 = L1_2.current_select_item
    L1_2 = L1_2.uid
    L2_2 = A0_2._pre_select_index
    if L1_2 > L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._switch_right
      L1_2(L2_2)
    else
      L1_2 = A0_2._avatar_tab_control
      L1_2 = L1_2.current_select_item
      L1_2 = L1_2.uid
      L2_2 = A0_2._pre_select_index
      if L1_2 < L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._switch_left
        L1_2(L2_2)
      end
    end
  end
  L1_2 = A0_2._avatar_tab_control
  if L1_2 then
    L1_2 = A0_2._avatar_tab_control
    L1_2 = L1_2.current_select_item
    L1_2 = L1_2.uid
    A0_2._pre_select_index = L1_2
    L1_2 = A0_2._current_banner_row
    A0_2._pre_banner_row = L1_2
  end
end
L0_1._refresh_img = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._pre_banner_row
  L2_2 = L2_2.AvatarIDList
  L2_2 = L2_2.Length
  if L2_2 == 1 then
    L2_2 = A0_2._current_banner_row
    L2_2 = L2_2.AvatarIDList
    L2_2 = L2_2.Length
    if L2_2 == 1 then
      L1_2 = "QuestColleaguePanel_Switch_Right_Single"
    else
      L1_2 = "QuestColleaguePanel_Single_Switch_Multiple"
    end
  else
    L2_2 = A0_2._current_banner_row
    L2_2 = L2_2.AvatarIDList
    L2_2 = L2_2.Length
    if L2_2 == 1 then
      L1_2 = "QuestColleaguePanel_Multiple_Switch_Single"
    else
      L1_2 = "QuestColleaguePanel_Switch_Right_Multiple"
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_root
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._switch_right = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._pre_banner_row
  L2_2 = L2_2.AvatarIDList
  L2_2 = L2_2.Length
  if L2_2 == 1 then
    L2_2 = A0_2._current_banner_row
    L2_2 = L2_2.AvatarIDList
    L2_2 = L2_2.Length
    if L2_2 == 1 then
      L1_2 = "QuestColleaguePanel_Switch_Left_Single"
    else
      L1_2 = "QuestColleaguePanel_Single_Switch_Multiple"
    end
  else
    L2_2 = A0_2._current_banner_row
    L2_2 = L2_2.AvatarIDList
    L2_2 = L2_2.Length
    if L2_2 == 1 then
      L1_2 = "QuestColleaguePanel_Multiple_Switch_Single"
    else
      L1_2 = "QuestColleaguePanel_Switch_Left_Multiple"
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_root
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._switch_left = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
end
L0_1.play_return_to_top_effect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._current_banner_row
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._current_banner_row
  L2_2 = L2_2.AvatarIDList
  L2_2 = L2_2.Length
  if L2_2 == 1 then
    L1_2 = "QuestColleaguePanel_FadeIn_Single"
  else
    L1_2 = "QuestColleaguePanel_FadeIn_Multple"
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_root
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._single_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._pre_banner_row
  L4_2 = A0_2._current_banner_row
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._multi_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._pre_banner_row
  L4_2 = A0_2._current_banner_row
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._load_animation_img = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_avatar_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_mission_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2[1]
  L1_2 = L1_2.IsStart
  if not L1_2 then
    L1_2 = A0_2._main_mission_data
    L1_2 = L1_2[1]
    L1_2 = L1_2.IsFinish
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.MissionUtils
      L1_2 = L1_2.GetPreMissionIDList
      L2_2 = A0_2._main_mission_data
      L2_2 = L2_2[1]
      L2_2 = L2_2.ID
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._condition_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.create_lua_table_from_cs_list
      L5_2 = L1_2
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
  end
  else
    L1_2 = A0_2._condition_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = {}
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_condition_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = false
  L3_2 = 1
  L4_2 = A0_2._main_mission_data
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if not L1_2 then
      L7_2 = A0_2._main_mission_data
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.IsStart
      L1_2 = L7_2 or L1_2
      if not L7_2 then
        L7_2 = A0_2._main_mission_data
        L7_2 = L7_2[L6_2]
        L1_2 = L7_2.IsFinish
      end
    end
    if not L2_2 then
      L7_2 = A0_2._main_mission_data
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.IsFinish
      L2_2 = not L7_2
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L3_2.interactable = L2_2
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_go
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Mission_Advance1"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_go
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_QuestOverviewtDialog_Btn02"
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_btn_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L1_1
function L1_1(A0_2)
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
L0_1._expire_call_back = L1_1
return L0_1
