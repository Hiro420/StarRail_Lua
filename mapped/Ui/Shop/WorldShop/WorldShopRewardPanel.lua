local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldShopRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldShopRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_CityShop_LevelReward"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_btn
  L4_2 = A0_2._on_click_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = A1_2.Level
  A0_2._level = L6_2
  A0_2._is_completed = A3_2
  A0_2._is_reward_taken = A2_2
  A0_2._reward_group_id = A4_2
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.CreateConfigIDList
  L7_2 = A1_2.RewardID
  L6_2 = L6_2(L7_2)
  A0_2._reward_id_list = L6_2
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.CreateRewardItemTableSorted
  L7_2 = A1_2.RewardID
  L6_2 = L6_2(L7_2)
  A0_2._reward_data = L6_2
  A0_2._currency_textid = A5_2
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L6_2(L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_completed
  if L3_2 then
    L3_2 = A0_2._is_reward_taken
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_info_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_completed
  if L3_2 then
    L3_2 = A0_2._is_reward_taken
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_completed
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_data
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CityShopRewardListExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._reward_group_id
  L3_2 = A0_2._level
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.TotalItem
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_group_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = L1_2
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A0_2._currency_textid
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._reward_btn_function = A1_2
  A0_2._reward_btn_function_owner = A2_2
end
L0_1.register_reward_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_btn_function
  if L1_2 then
    L1_2 = A0_2._reward_btn_function_owner
    if L1_2 then
      L1_2 = A0_2._reward_btn_function
      L2_2 = A0_2._reward_btn_function_owner
      L3_2 = A0_2._level
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_get_reward = L2_1
return L0_1
