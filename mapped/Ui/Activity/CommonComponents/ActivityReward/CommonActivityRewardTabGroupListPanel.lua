local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabGroupItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabGroupItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityRewardUtils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardTabGroupListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_prev
  L4_2 = A0_2._on_btn_gamepad_prev_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_next
  L4_2 = A0_2._on_btn_gamepad_next_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._tab_group_rows = A1_2
  A0_2._red_dot_name = A2_2
  L3_2 = {}
  A0_2._item_uid_2_tab_group_row = L3_2
  L3_2 = {}
  A0_2._tab_group_id_2_item_uid = L3_2
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.clear
  L3_2(L4_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.set_tab_select_callback
  L5_2 = A0_2
  L6_2 = A0_2._on_tab_item_click
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.CommonActivityRewardTabGroupItemPanel
    L11_2 = G
    L11_2 = L11_2.CommonActivityRewardTabGroupItemPanelBinder
    L12_2 = L7_2
    L13_2 = A0_2._red_dot_name
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = A0_2._tab_control
    L10_2 = L9_2
    L9_2 = L9_2.add_item
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._item_uid_2_tab_group_row
    L10_2 = L8_2.uid
    L9_2[L10_2] = L7_2
    L9_2 = A0_2._tab_group_id_2_item_uid
    L10_2 = L7_2.QuestTabGroupID
    L11_2 = L8_2.uid
    L9_2[L10_2] = L11_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._click_item_on_setup_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_self = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._click_cbk
  L4_2 = A0_2._click_cbk_self
  L5_2 = A0_2._item_uid_2_tab_group_row
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.QuestTabGroupID
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_tab_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L2_1._on_btn_gamepad_prev_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L2_1._on_btn_gamepad_next_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._tab_group_rows
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_group_rows
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._tab_group_rows
      L2_2 = L2_2[1]
      L1_2 = L2_2.QuestTabGroupID
      L2_2 = pairs
      L3_2 = A0_2._tab_group_rows
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = A0_2
        L7_2 = A0_2._is_tab_group_contains_quest_can_take_reward
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L1_2 = L6_2.QuestTabGroupID
          break
        end
      end
    end
  end
  L2_2 = A0_2._tab_group_id_2_item_uid
  L2_2 = L2_2[L1_2]
  if 0 < L1_2 and L2_2 ~= nil and 0 < L2_2 then
    L3_2 = A0_2._tab_control
    L4_2 = L3_2
    L3_2 = L3_2.click_item_by_uid
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1._click_item_on_setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.get_quest_data_arr_by_tab_group_row
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1.is_quest_reward_can_take
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L2_1._is_tab_group_contains_quest_can_take_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gamepad_cmpts
  L2_2(L3_2)
end
L2_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
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
L2_1._refresh_gamepad_cmpts = L3_1
return L2_1
