local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonLevelRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonLevelRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
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
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.receive_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.receive_in_control_tip
  L2_2.IsShowTip = A1_2
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, ...)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L9_2 = A0_2
  L8_2 = A0_2._set_datas
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A1_2
  L13_2 = A7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = A0_2
  L8_2 = A0_2._set_status_ids
  L10_2 = A6_2
  L11_2 = A5_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = A2_2
  L11_2, L12_2, L13_2 = ...
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_num
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_num
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetText
  L10_2 = A7_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._refresh
  L8_2(L9_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._is_completed = A1_2
  A0_2._is_reward_taken = A2_2
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A0_2._reward_data = L5_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.sort_reward_item
  L6_2 = A0_2._reward_data
  L5_2(L6_2)
  A0_2.lv = A4_2
  L5_2 = {}
  A0_2._config_id_list = L5_2
  L5_2 = ipairs
  L6_2 = A0_2._reward_data
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._config_id_list
    L12_2 = L9_2.ConfigID
    L10_2(L11_2, L12_2)
  end
end
L0_1._set_datas = L1_1
function L1_1(A0_2, A1_2, A2_2)
  if A1_2 ~= nil then
    A0_2._reward_taken_id = A1_2
  else
    A0_2._reward_taken_id = "UIText_ActivityLogin_Received"
  end
  if A2_2 ~= nil then
    A0_2._incomplete_id = A2_2
  else
    A0_2._incomplete_id = "UIText_Achievement_Unfinished"
  end
end
L0_1._set_status_ids = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_completed
  if L1_2 == true then
    L1_2 = A0_2._is_reward_taken
    if L1_2 == true then
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_btn
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.complete_info_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.in_progress_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._is_completed
    if L1_2 == true then
      L1_2 = A0_2._is_reward_taken
      if L1_2 == false then
        L1_2 = A0_2._binder
        L1_2 = L1_2.reward_btn
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.complete_info_root
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.in_progress_root
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
    end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_btn
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.complete_info_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.in_progress_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._reward_btn_function = A1_2
  A0_2._reward_btn_function_owner = A2_2
end
L0_1.register_reward_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_btn_function
  if L1_2 then
    L1_2 = A0_2._reward_btn_function_owner
    if L1_2 then
      L1_2 = A0_2._reward_btn_function
      L2_2 = A0_2._reward_btn_function_owner
      L3_2 = A0_2.lv
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_get_reward = L1_1
return L0_1
