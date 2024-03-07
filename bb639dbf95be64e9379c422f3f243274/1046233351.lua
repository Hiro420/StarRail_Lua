local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.Components.SevenDayRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.SevenDayRewardActivityPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.DailyLoginRewardActivityData
L1_1 = L1_1.RewardStatus
L2_1 = 1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "SevenDayRewardActivityPanel"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
L3_1._REWARD_COUNT = 7
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.RewardIDList
  A0_2._reward_id_list = L4_2
  L4_2 = {}
  A0_2._item_panels = L4_2
  L4_2 = {}
  A0_2._rewards = L4_2
  L4_2 = {}
  A0_2._reward_status_table = L4_2
  L4_2 = {}
  A0_2.btn_list = L4_2
  L4_2 = {}
  A0_2._config_id_list = L4_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
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
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2.btn_list
    L2_2 = #L2_2
    L2_2 = 0 < L2_2
    return L2_2
  end
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2.btn_list
    L2_2 = A0_2._first_select_btn_index
    if not L2_2 then
      L2_2 = 1
    end
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.gameObject
    return L1_2
  end
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._btn_mutex = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = L3_1._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.tips_btn
  L4_2 = A0_2._on_tips_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityGetReward
  L4_2 = L3_1._on_activity_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityLoginRewardDataRefresh
  L4_2 = L3_1._on_activity_login_reward_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_rewards_data
  L1_2(L2_2)
  A0_2._is_custom_loaded = true
end
L3_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._activity_data = nil
  A0_2._item_panels = nil
  A0_2._reward_id_list = nil
  A0_2._rewards = nil
  A0_2._reward_status_table = nil
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._btn_mutex
  L1_2(L2_2)
  A0_2._btn_mutex = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
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
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._request_login_reward_data
  L2_2(L3_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_mutex
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Check
    function L3_2()
      local L0_3, L1_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_NetworkManager
      L1_3 = L0_3
      L0_3 = L0_3.LLPHBDFNHHO
      L0_3(L1_3)
    end
    L4_2 = L2_1
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1._request_login_reward_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = 1
  L2_2 = L3_1._REWARD_COUNT
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_item_panels
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.gameObject
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.SevenDayRewardItemPanel
    L9_2 = G
    L9_2 = L9_2.SevenDayRewardItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._item_panels
    L7_2[L4_2] = L6_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.btn_list
    L9_2 = L6_2._binder
    L9_2 = L9_2.root_btn
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_customized_navigation
  L1_2(L2_2)
end
L3_1._init_item_panels = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._reward_id_list
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._reward_id_list
    L5_2 = L5_2[L4_2]
    L6_2 = G
    L6_2 = L6_2.RewardUtils
    L6_2 = L6_2.CreateRewardItemTable
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._rewards
    L8_2 = A0_2._rewards
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2[1]
    L7_2[L8_2] = L9_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_status
  L1_2(L2_2)
end
L3_1._init_rewards_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.RewardStatuses
  L1_2 = L1_2(L2_2)
  A0_2._reward_status_table = L1_2
end
L3_1._refresh_reward_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L3_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tag
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewards
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L3_1._setup_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
end
L3_1._setup_tag = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
end
L3_1._setup_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 1
  L2_2 = L3_1._REWARD_COUNT
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._rewards
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._item_panels
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._reward_status_table
    L7_2 = L7_2[L4_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L5_2.ItemID
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.ItemID
    L11_2 = A0_2
    L10_2 = A0_2._add_element_if_not_exists
    L12_2 = A0_2._config_id_list
    L13_2 = L5_2.ItemID
    L10_2(L11_2, L12_2, L13_2)
    L11_2 = L6_2
    L10_2 = L6_2.setup_data
    L12_2 = L4_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
    L11_2 = L6_2
    L10_2 = L6_2.set_icon
    L12_2 = L8_2.ItemIconPath
    L10_2(L11_2, L12_2)
    L11_2 = L6_2
    L10_2 = L6_2.set_count
    L12_2 = L5_2.Count
    L10_2(L11_2, L12_2)
    L11_2 = L6_2
    L10_2 = L6_2.set_rarity
    L12_2 = L8_2.Rarity
    L10_2(L11_2, L12_2)
    L11_2 = L6_2
    L10_2 = L6_2.set_status
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    L11_2 = L6_2
    L10_2 = L6_2.register_click_callback
    L12_2 = A0_2
    L13_2 = A0_2._on_reward_item_click
    L10_2(L11_2, L12_2, L13_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_first_select_object
  L1_2(L2_2)
end
L3_1._setup_rewards = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._reward_status_table
  L3_2 = L3_2[A1_2]
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.is_top_page_or_dialog
    L4_2 = L4_2(L5_2)
    if L4_2 == false then
      return
    end
  end
  L4_2 = L1_1.Available
  if L3_2 == L4_2 then
    L4_2 = A1_2
    L6_2 = A0_2
    L5_2 = A0_2.show_full_screen_block_for_packet
    L7_2 = CS
    L7_2 = L7_2.NIJNBICAPPA
    L7_2 = L7_2.JOCMEIHCMCM
    L5_2(L6_2, L7_2)
    L5_2 = L0_1
    L6_2 = L5_2
    L5_2 = L5_2.TakeLoginReward
    L7_2 = A0_2._activity_data
    L7_2 = L7_2.PanelID
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1._on_reward_item_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._state
  L3_2 = L3_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 and nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.RewardDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_reward_status
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_rewards
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2.btn_list
    L5_2 = A0_2._first_select_btn_index
    if not L5_2 then
      L5_2 = 1
    end
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_activity_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L3_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_reward_status
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_rewards
    L1_2(L2_2)
  end
end
L3_1._on_activity_login_reward_data_refresh = L4_1
function L4_1(A0_2)
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
L3_1._on_btn_explain = L4_1
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
L3_1._setup_remain_time = L4_1
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
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L3_1.on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      return
    end
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L3_1._add_element_if_not_exists = L4_1
function L4_1(A0_2)
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
L3_1._on_tips_btn_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if L1_2 ~= 7 then
    return
  end
  L1_2 = A0_2.btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[4]
  L1_2.selectOnDown = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[2]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[1]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[2]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[5]
  L1_2.selectOnDown = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[3]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[1]
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[2]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[3]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[6]
  L1_2.selectOnDown = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[7]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[2]
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[3]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[4]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[1]
  L1_2.selectOnUp = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[5]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[4]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[5]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[2]
  L1_2.selectOnUp = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[6]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[4]
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[5]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[6]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[3]
  L1_2.selectOnUp = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[7]
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[5]
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[6]
  L2_2.navigation = L1_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[7]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[3]
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2.btn_list
  L2_2 = L2_2[7]
  L2_2.navigation = L1_2
end
L3_1._setup_customized_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = L3_1._REWARD_COUNT
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._reward_status_table
    L6_2 = L6_2[L5_2]
    L7_2 = L1_1.Available
    if L6_2 == L7_2 and L1_2 == nil then
      L1_2 = L5_2
    end
  end
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = A0_2._first_select_btn_index
  end
  A0_2._first_select_btn_index = L2_2
end
L3_1._set_first_select_object = L4_1
return L3_1
