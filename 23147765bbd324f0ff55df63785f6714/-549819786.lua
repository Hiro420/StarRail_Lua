local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochureRewardHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochureRewardHintPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochureChapterRewardPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._on_touch_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._preview_callback = A1_2
  A0_2._preview_handler = A2_2
end
L1_1.register_preview_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._diary_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_reward
  L4_2 = false
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "TravelBrochureDiaryFinishReward"
  L5_2 = A0_2._diary_data
  L5_2 = L5_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2 ~= nil
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.RewardQuestID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Progress
  L3_2 = 1.0 * L3_2
  L4_2 = L2_2.TotalProgress
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.bar_progress
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.bar_progress
    L4_2.fillAmount = L3_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_TravelBrochure_Progress"
  L7_2 = L3_2 * 100
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_available
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2.Status
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.JKFPIINHGPD
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_taken
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2.Status
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.CMOFEAFMGAK
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
  L4_2 = L2_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.JKFPIINHGPD
  L4_2 = L4_2 == L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_finish_time
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_finish_time
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TimeUtils
    L7_2 = L7_2.TimeStampInSecondsToDateTime
    L8_2 = L2_2.FinishTimeStamp
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.ToString
    L9_2 = "yyyy.MM.dd"
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateRewardItemTableSorted
  L6_2 = L2_2.RewardID
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = {}
  end
  A0_2._reward_items = L5_2
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureOperated
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._diary_data
  L3_2 = L3_2.RewardQuestID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.JKFPIINHGPD
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L3_2 = L2_2
    L2_2 = L2_2.JCCHEMBPEEE
    L4_2 = A0_2._diary_data
    L4_2 = L4_2.RewardQuestID
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_reward
    L5_2 = A0_2
    L4_2 = A0_2._is_showing_reward
    L4_2 = L4_2(L5_2)
    L4_2 = not L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_btn_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    L3_2 = A0_2._reward_panel
    if L3_2 == nil then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_reward_panel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.show_reward
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._preview_callback
  L5_2 = A0_2._preview_handler
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._show_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_panel
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_show
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L1_1._is_showing_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TravelBrochureRewardHintPanel
    L4_2 = G
    L4_2 = L4_2.TravelBrochureRewardHintPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._reward_panel = L1_2
    L1_2 = A0_2._reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reward_root
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._reward_items
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._reward_panel
  return L1_2
end
L1_1._safe_get_reward_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_top_page_or_dialog
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2
  L1_2 = A0_2._is_showing_reward
  L1_2 = L1_2(L2_2)
  A0_2._should_hide = L1_2
end
L1_1._on_touch_down = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_top_page_or_dialog
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._should_hide
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_reward
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_touch_up = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_reward
    L4_2 = false
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_owner_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L1_1._on_quest_updated = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L1_1._on_quest_get_reward = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_showing_reward
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._diary_data
  L3_2 = L3_2.RewardQuestID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateConfigIDList
  L4_2 = L1_2.RewardID
  L3_2 = L3_2(L4_2)
  L2_2.items = L3_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1._on_left_stick_button_click = L2_1
return L1_1
