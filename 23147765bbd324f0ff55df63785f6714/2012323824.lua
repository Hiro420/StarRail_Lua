local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardTabItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
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
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._tab_row = A1_2
  A0_2._red_dot_name = A2_2
  L3_2 = G
  L3_2 = L3_2.ActivityRewardUtils
  L3_2 = L3_2.get_quest_data_arr_by_tab_row
  L4_2 = A0_2._tab_row
  L3_2 = L3_2(L4_2)
  A0_2._quest_data_arr = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_static_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_special_reward
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_progress
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = A0_2._red_dot_name
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = A0_2._red_dot_name
    L6_2 = A0_2._tab_row
    L6_2 = L6_2.QuestTabID
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.unbind_reddot
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_reddot
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root_click
  L1_2(L2_2)
end
L0_1.click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.IsDataSelect
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_progress
    L2_2(L3_2)
  end
end
L0_1._on_quest_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_cbk
  L3_2 = A0_2._click_cbk_self
  L4_2 = A0_2._tab_row
  L4_2 = L4_2.QuestTabID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_row
  L3_2 = L3_2.QuestTabName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_special_reward
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.StrExt
    L1_2 = L1_2.IsNullOrEmpty
    L2_2 = A0_2._tab_row
    L2_2 = L2_2.QuestTabIcon
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_special_reward
      L4_2 = A0_2._tab_row
      L4_2 = L4_2.QuestTabIcon
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._setup_static_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2._quest_data_arr
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = G
      L7_2 = L7_2.QuestUtils
      L7_2 = L7_2.is_quest_reward_special
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L1_2 = true
        break
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_reward
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_special_reward
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_special_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._tab_row
  L2_2 = L2_2.QuestList
  L2_2 = L2_2.Length
  L3_2 = pairs
  L4_2 = A0_2._quest_data_arr
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = G
      L8_2 = L8_2.QuestUtils
      L8_2 = L8_2.is_quest_reward_taken
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  if L1_2 == 0 or L1_2 ~= L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_all_finished
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_finished_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_total_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_all_finished
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_progress = L1_1
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
  L1_2 = A0_2.save_navigation_target_by_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root_click
  L1_2(L2_2)
end
L0_1._on_btn_root_select = L1_1
return L0_1
