local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Rogue.Reward.RogueChestRewardDialogBinder"
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
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueChestRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueChestRewardDialog_Title"
L2_1 = "UIText_RogueChestRewardDialog_Reward_Desc"
L3_1 = "UIText_RogueChestRewardDialog_Reward_Tip"
L4_1 = "UIText_RogueChestRewardDialog_LeftCount_Tip"
L5_1 = "UIText_RogueChestRewardDialog_Btn_Stamina"
L6_1 = "UIText_RogueChestRewardDialog_Btn_RewardKey"
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_ModuleManager
L7_1 = L7_1.RogueModule
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.InventoryModule
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueChestRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._prop_entity_runtime_id = nil
  A0_2._cost_stamina_num = 0
  A0_2._cost_key_num = 0
  A0_2._left_count = 1
  L1_2 = {}
  A0_2._reward_item_table = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  A0_2._prop_entity_runtime_id = A1_2
end
L0_1.init = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._prop_entity_runtime_id = nil
  A0_2._cost_stamina_num = nil
  A0_2._cost_key_num = nil
  A0_2._left_count = nil
  A0_2._reward_item_table = nil
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RogueChestRewardDialog"
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueChestReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_refresh_item_num
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_reward
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_cost
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_left_num_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L4_2 = A0_2._cost_stamina_num
  L5_2 = A0_2._cost_key_num
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_multiple_drop_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_left_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetRogueOpenChestCostStamina
  L1_2 = L1_2()
  A0_2._cost_stamina_num = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetRogueOpenChestCostKey
  L1_2 = L1_2()
  A0_2._cost_key_num = L1_2
end
L0_1._init_cost = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ProgressInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetCurAreaData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.RogueAreaRow
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.get_sorted_items_by_item_config_list
      L3_2 = L1_2.RogueAreaRow
      L3_2 = L3_2.ChestDisplayItemList
      L2_2 = L2_2(L3_2)
      A0_2._reward_item_table = L2_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_item_table
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_reward = L9_1
function L9_1(A0_2, A1_2, A2_2)
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
  L5_2 = L4_2.setup_view_by_reward_item
  L7_2 = A0_2._reward_item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._prop_entity_runtime_id
  if L1_2 == nil then
    A0_2._left_count = 0
  else
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.GetRoguePropRewardLeftCount
    L3_2 = A0_2._prop_entity_runtime_id
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._left_count = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_left_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._left_count
  L1_2(L2_2, L3_2)
end
L0_1._refresh_left_num = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_left
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_text
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_left
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HJLLLAFEOHH
  L4_2 = L4_2.EILHMDCAIOC
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._cost_stamina_num
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_left
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_btn_stamina
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_right
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_text
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_right
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HJLLLAFEOHH
  L4_2 = L4_2.AALHPNJNDPF
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._cost_key_num
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_right
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_btn_rewardkey
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_btns = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_left_num
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btns
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_multiple_drop_tips
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_display_only
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._left_count
  if L3_2 <= 0 then
    L4_2 = L2_2
    L3_2 = L2_2.set_exit_callback
    L5_2 = A0_2._on_btn_close
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_get_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
end
L0_1._on_refresh_item_num = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.StaminaModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cost_stamina_num
  if L1_2 < L2_2 then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.GotoByType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GotoType
    L2_2 = L2_2.Stamina
    L2_2 = #L2_2
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.CFCNPCABFPL
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.IEKFFPIIEHI
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_stamina = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HJLLLAFEOHH
  L4_2 = L4_2.AALHPNJNDPF
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._cost_key_num
  if L1_2 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.RogueKey
    L3_2 = #L3_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.CFCNPCABFPL
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.IEKFFPIIEHI
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_rewardkey = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MultipleDropUtils
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MultipleDropTypeConfig
  L2_2 = L2_2.ROGUE
  L3_2 = L1_2.GetTopData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 ~= nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_left_double_reward_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_right_double_reward_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_theme_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.special_bg
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_multiple_drop_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    return
  end
  L5_2 = L3_2.Theme
  L6_2 = L5_2 ~= nil
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_theme_icon
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  if L6_2 then
    L8_2 = A0_2
    L7_2 = A0_2.async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.theme_icon
    L10_2 = L5_2.IconPath
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2.async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_left_theme_mark_icon
    L10_2 = L5_2.IconPath
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2.async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_right_theme_mark_icon
    L10_2 = L5_2.IconPath
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L1_2.GetMultipleDropTimesData
  L8_2 = L2_2
  L9_2 = L3_2.Multiplier
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_description
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = L3_2.BannerText
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.special_bg
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L3_2.Multiplier
  L10_2 = L10_2 == 3
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_remain_num
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetText
  L10_2 = L7_2.RemainTimes
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_total_num
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetText
  L10_2 = L7_2.TotalTimes
  L8_2(L9_2, L10_2)
  L8_2 = G
  L8_2 = L8_2.MultipleDropUtils
  L8_2 = L8_2.set_remain_num_text_color
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_remain_num
  L10_2 = L7_2.RemainTimes
  L8_2(L9_2, L10_2)
  L8_2 = L7_2.RemainTimes
  if 0 < L8_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_left_double_reward_mark
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = not L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_right_double_reward_mark
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = not L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_left_theme_mark
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_right_theme_mark
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_left_double_reward_mark_text
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = L3_2.LabelText
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_right_double_reward_mark_text
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = L3_2.LabelText
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_left_theme_mark_text
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = L3_2.LabelText
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_right_theme_mark_text
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = L3_2.LabelText
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_multiple_drop_tips = L9_1
return L0_1
