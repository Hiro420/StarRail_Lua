local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTakeRewardHandlerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = "CommonRewardPage_Remind"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CommonActivityRewardFinalQuestPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
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
  L3_2 = L3_2.btn_gamepad
  L4_2 = A0_2._on_btn_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_gamepad
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.register_take_reward_click_callback
  L3_2 = A0_2._on_take_reward_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    return
  end
  A0_2._quest_data = A1_2
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.setup_title
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.setup_display
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cur_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.Progress
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_max_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.TotalProgress
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress_bar
  L3_2 = A1_2.Progress
  L4_2 = A1_2.TotalProgress
  L3_2 = L3_2 / L4_2
  L2_2.fillAmount = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RewardExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.RewardID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ItemID_1
    L4_2 = L2_2.Count_1
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_reward_icon
      L9_2 = L5_2.ItemFigureIconPath
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_reward_num
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    A0_2._reward_item_id = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel_without_binder
  L5_2 = G
  L5_2 = L5_2.CommonActivityRewardTakeRewardHandlerPanel
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._take_reward_handler = L3_2
  L3_2 = G
  L3_2 = L3_2.QuestUtils
  L3_2 = L3_2.is_quest_reward_can_take
  L4_2 = A0_2._quest_data
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation
    L5_2 = L0_1
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_item_id
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_item_id
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail
  L2_2 = A0_2._reward_item_id
  L1_2(L2_2)
end
L1_1._on_btn_reward_click = L2_1
function L2_1(A0_2)
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
L1_1._on_take_reward_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_status
  L2_2(L3_2)
end
L1_1._on_quest_get_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_status
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._quest_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._refresh_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_special_zoom_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_gamepad_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_cmpts
  L1_2(L2_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
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
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_btn_list_need_disable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = not L1_2
    L6_2.ActionEnabled = L7_2
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_tip_list_need_disable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = not L1_2
    L6_2.IsShowTip = L7_2
  end
end
L1_1._refresh_gamepad_cmpts = L2_1
return L1_1
