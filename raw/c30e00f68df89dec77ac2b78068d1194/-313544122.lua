local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceQuestRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_listener = nil
  A0_2._callback_param = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_panel = L1_2
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_common_reward_list_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
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
    L0_3 = L0_3._on_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.quest_id = A1_2
  if A2_2 ~= nil then
    A0_2._is_locked = A2_2
  else
    A0_2._is_locked = true
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  L3_2 = A0_2._quest_data
  if L3_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.QuestUtils
  L3_2 = L3_2.setup_title
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = A0_2._quest_data
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rewards
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_keymap_info
  L3_2.IsShowTipBySelected = false
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = A0_2.reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._reward_items
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
end
L0_1._setup_rewards = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.KBBBFCIHJPC
  if L1_2 == L2_2 then
    L1_2 = A0_2._is_locked
    if not L1_2 then
      L1_2 = A0_2._quest_data
      L1_2 = L1_2.TotalProgress
      if 1 < L1_2 then
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
      end
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_in_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.TotalProgress
      L3_2 = L3_2 <= 1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_in_progress_count
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.TotalProgress
      L3_2 = 1 < L3_2
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress_count
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L3_2 = A0_2._is_locked
  L3_2 = L3_2 == L4_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L3_2 = A0_2._is_locked
  L3_2 = L3_2 == L4_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L1_2(L2_2, L3_2)
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_reward_dialog = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  L3_2 = (...)
  A0_2._callback_param = L3_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_get
  L2_2.ActionEnabled = A1_2
end
L0_1.set_in_control_get_enabled = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_keymap_info
  L1_2.IsShowTipBySelected = true
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_keymap_info
  L1_2.IsShowTipBySelected = false
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_deselect = L2_1
return L0_1
