local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnSevenDayRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnSevenDayPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityPlayerReturnModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PlayerReturnSevenDayPanel"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "PlayerReturnSevenDayPanel_FadeIn"
L1_1._REWARD_COUNT = 7
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._parent_page = A1_2
  L3_2 = {}
  A0_2._item_panels = L3_2
  L3_2 = {}
  A0_2._sign_day_table = L3_2
  L3_2 = {}
  A0_2._rewards = L3_2
  L3_2 = {}
  A0_2._first_world_texts = L3_2
  L3_2 = {}
  A0_2.btn_list = L3_2
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnSignRewardTaken
  L4_2 = A0_2._on_sign_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnDailyRefresh
  L4_2 = A0_2._on_new_day_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_play_shine_anim
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_rewards_data
  L1_2(L2_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._item_panels = nil
  A0_2._sign_day_table = nil
  A0_2._rewards = nil
  A0_2._first_world_texts = nil
end
L1_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._parent_page
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ItemDetail"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
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
L1_1._is_can_to_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
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
L1_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._item_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._item_panels
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.is_main_panel_selected
    if L5_2 then
      L5_2 = A0_2._item_panels
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.show_item_detail_dialog
      L5_2(L6_2)
      return
    end
  end
end
L1_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sign_day
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_items
  L1_2(L2_2)
end
L1_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = 1
  L2_2 = L1_1._REWARD_COUNT
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_item_panels
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.gameObject
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.PlayerReturnSevenDayRewardItemPanel
    L9_2 = G
    L9_2 = L9_2.PlayerReturnSevenDayRewardItemPanelBinder
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
    L9_2 = L9_2.btn_root
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2.btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._init_item_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_login_day_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_reward_details
  L1_2(L2_2)
end
L1_1._init_rewards_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = L0_1.LoginDayCount
  A0_2._login_day_count = L1_2
end
L1_1._refresh_login_day_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = L0_1.SignDayTable
  L1_2 = L1_2(L2_2)
  A0_2._sign_day_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_mask_anim
  L1_2(L2_2)
end
L1_1._refresh_sign_day = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.PlayerReturnData
  L2_2 = L1_2
  L1_2 = L1_2.GetLoginRewardRows
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.LoginReward
    L7_2 = G
    L7_2 = L7_2.RewardUtils
    L7_2 = L7_2.CreateRewardItemTable
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._rewards
    L9_2 = L5_2 + 1
    L10_2 = L7_2[1]
    L8_2[L9_2] = L10_2
    L8_2 = A0_2._first_world_texts
    L9_2 = L5_2 + 1
    L10_2 = L1_2[L5_2]
    L10_2 = L10_2.FirstWordText
    L8_2[L9_2] = L10_2
  end
end
L1_1._get_reward_details = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._first_select_btn_index = nil
  L1_2 = 1
  L2_2 = L1_1._REWARD_COUNT
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._rewards
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._login_day_count
    L6_2 = L4_2 <= L6_2
    L7_2 = A0_2._sign_day_table
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2 == true
    L8_2 = A0_2._item_panels
    L8_2 = L8_2[L4_2]
    L10_2 = L8_2
    L9_2 = L8_2.set_panel_data
    L11_2 = L4_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_reward_icon
    L11_2 = L5_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_status
    L11_2 = L6_2
    L12_2 = L7_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_first_world_text
    L11_2 = A0_2._first_world_texts
    L11_2 = L11_2[L4_2]
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_click_callback
    L11_2 = A0_2
    L12_2 = A0_2._on_reward_item_click
    L9_2(L10_2, L11_2, L12_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_first_select_object_index
  L1_2(L2_2)
end
L1_1._refresh_reward_items = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._login_day_count
  L2_2 = A1_2 <= L2_2
  L3_2 = A0_2._sign_day_table
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 == true
  if L2_2 and not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.show_full_screen_block_for_packet
    L6_2 = CS
    L6_2 = L6_2.NIJNBICAPPA
    L6_2 = L6_2.CKCAPJPBADM
    L4_2(L5_2, L6_2)
    L4_2 = L0_1
    L5_2 = L4_2
    L4_2 = L4_2.TryTakeSignReward
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._on_reward_item_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = pairs
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.ItemList_
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.ItemFactory
      L12_2 = L12_2.CreateDisplayItemData
      L13_2 = L11_2.ItemId
      L14_2 = L11_2.Num
      L15_2 = L11_2.Level
      L16_2 = L11_2.UniqueId
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L2_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_sign_day
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_reward_items
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = A0_2.btn_list
  L6_2 = A0_2._first_select_btn_index
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
end
L1_1._on_sign_reward_taken = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_login_day_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sign_day
  L1_2(L2_2)
end
L1_1._on_new_day_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = 1
  L5_2 = L1_1._REWARD_COUNT
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._login_day_count
    L8_2 = L7_2 <= L8_2
    L9_2 = A0_2._sign_day_table
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2 == true
    if L8_2 and not L9_2 and L1_2 == nil then
      L1_2 = L7_2
    end
    if not L8_2 and L2_2 == nil then
      L2_2 = L7_2
    end
    if L9_2 then
      L3_2 = L7_2
    end
  end
  L4_2 = L1_2 or L4_2
  L4_2 = L2_2 or L4_2
  if not L1_2 and not L2_2 then
    L4_2 = L3_2
  end
  A0_2._first_select_btn_index = L4_2
end
L1_1._set_first_select_object_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._should_wait_smooth_anim = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SeenPlayerReturnSignDay
  A0_2._anim_sign_day = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.smooth_mask
  L2_2 = A0_2._anim_sign_day
  L2_2 = L2_2 - 1
  L2_2 = 0.166 * L2_2
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.smooth_mask
  L2_2 = A0_2._anim_sign_day
  L2_2 = L2_2 < 7
  L1_2.enabled = L2_2
  L1_2 = A0_2._anim_sign_day
  L2_2 = A0_2._login_day_count
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L2_2 = A0_2._anim_sign_day
    L2_2 = L2_2 - 1
    L2_2 = 0.166 * L2_2
    L1_2.StartValue = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L2_2 = A0_2._login_day_count
    L2_2 = L2_2 - 1
    L2_2 = 0.166 * L2_2
    L1_2.EndValue = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L1_2.Duration = 1.0
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L2_2 = L1_2
    L1_2 = L1_2.SetValueChangeCallback
    function L3_2(A0_3)
      local L1_3
      L1_3 = A0_2._binder
      L1_3 = L1_3.smooth_mask
      L1_3.fillAmount = A0_3
    end
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L2_2 = L1_2
    L1_2 = L1_2.SetFinishCallback
    function L3_2()
      local L0_3, L1_3
      A0_2._should_wait_smooth_anim = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_value_change_finish
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_play_shine_anim
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
    A0_2._should_wait_smooth_anim = true
    L1_2 = A0_2._binder
    L1_2 = L1_2.value_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L2_2 = A0_2._login_day_count
    L1_2.SeenPlayerReturnSignDay = L2_2
  end
end
L1_1._setup_mask_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.smooth_mask
  L2_2 = A0_2._login_day_count
  L2_2 = L2_2 < 7
  L1_2.enabled = L2_2
  L1_2 = A0_2._item_panels
  L2_2 = A0_2._login_day_count
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.play_shine_anim
  L1_2(L2_2)
end
L1_1._on_value_change_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._should_wait_smooth_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._sign_day_table
  L2_2 = A0_2._login_day_count
  L1_2 = L1_2[L2_2]
  if L1_2 == false then
    L1_2 = A0_2._item_panels
    L2_2 = A0_2._login_day_count
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2
    L1_2 = L1_2.play_shine_anim
    L1_2(L2_2)
  end
end
L1_1._try_play_shine_anim = L3_1
return L1_1
