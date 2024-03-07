local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTakeRewardHandlerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardQuestItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_gamepad
  L4_2 = A0_2._on_btn_reward_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.register_take_reward_click_callback
  L3_2 = A0_2._on_take_reward_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  A0_2._quest_data = A1_2
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.is_quest_reward_special
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.QuestUtils
  L3_2 = L3_2.setup_title
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = A1_2.RewardID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_reward_item_ids
  L5_2 = A1_2.RewardID
  L4_2 = L4_2(L5_2)
  A0_2._reward_item_ids = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_status
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_key_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel_without_binder
  L6_2 = G
  L6_2 = L6_2.CommonActivityRewardTakeRewardHandlerPanel
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._take_reward_handler = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_ui_navigation
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_item_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_item_ids
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail_display_dialog_for_gamepad
  L2_2 = {}
  L3_2 = A0_2._reward_item_ids
  L2_2.items = L3_2
  L2_2.is_item = false
  L1_2(L2_2)
end
L0_1._on_btn_reward_gamepad_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._take_reward_handler
  L2_2 = L1_2
  L1_2 = L1_2.send_take_quest_reward_req
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_take_reward_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target_by_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L0_1._on_btn_root_deselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.IsSelectedByController
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_need_enable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L1_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_btn_list_need_enable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.ActionEnabled = L1_2
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_tip_list_need_enable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.IsShowTip = L1_2
  end
end
L0_1._refresh_gamepad_cmpts = L1_1
return L0_1
