local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityRewardFinalQuestPanel"
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L4_2 = A0_2._on_btn_item
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_special_zoom
  L4_2 = A0_2._on_btn_special_zoom
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_selected = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_receive_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    A0_2._is_selected = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_receive_control
    L0_3(L1_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._callback
    L2_3 = A0_2._callback_self
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    A0_2._is_selected = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_receive_control
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  A0_2._is_reward_can_receive = false
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogWarningFormat
    L3_2 = "\230\137\190\228\184\141\229\136\176quest\230\149\176\230\141\174\239\188\154%d"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim
  L4_2 = "CommonRewardPage_Remind"
  L2_2(L3_2, L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_reward_can_receive
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim
    L3_2 = "CommonRewardPage_Remind"
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim
    L3_2 = "CommonRewardPage_Remind"
    L1_2(L2_2, L3_2)
  end
end
L1_1.try_play_available = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._config_ids
  return L1_2
end
L1_1.get_config_ids = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L1_1.register_select_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestDisplay
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
  L1_2(L2_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  L2_2 = L1_2 == L2_2
  A0_2._is_reward_can_receive = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.KBBBFCIHJPC
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_can_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_received
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L1_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RewardExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.ItemID_1
  L3_2 = L1_2.Count_1
  L4_2 = {}
  L5_2 = L2_2
  L4_2[1] = L5_2
  A0_2._config_ids = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_item
  L8_2 = L4_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_item_count
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L1_1._refresh_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_bar
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Progress
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.TotalProgress
  L2_2 = L2_2 / L3_2
  L1_2.fillAmount = L2_2
end
L1_1._refresh_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_receive = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2._config_ids
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L1_1._on_btn_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_reward_can_receive
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_receive
      L1_2(L2_2)
    end
  end
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_reward_can_receive
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  if not L1_2 then
    L2_2 = A0_2._is_reward_can_receive
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.try_play_available
      L2_2(L3_2)
    end
  end
end
L1_1._on_quest_updated = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_reward_can_receive
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  if not L1_2 then
    L2_2 = A0_2._is_reward_can_receive
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.try_play_available
      L2_2(L3_2)
    end
  end
end
L1_1._on_quest_get_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_special_zoom_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_btn_receive
  L2_2 = A0_2._is_selected
  L1_2.ActionEnabled = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_btn_item
  L2_2 = A0_2._is_selected
  L1_2.ActionEnabled = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_receive
  L2_2 = A0_2._is_selected
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_receive
  L2_2 = A0_2._is_selected
  L1_2.IsShowTipBySelected = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_item
  L2_2 = A0_2._is_selected
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_item
  L2_2 = A0_2._is_selected
  L1_2.IsShowTipBySelected = L2_2
end
L1_1._refresh_receive_control = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_receive_control
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L1_1._on_enter_special_zoom = L2_1
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
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_ids
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L1_1._on_left_stick_button_click = L2_1
return L1_1
