local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubQuestTreasurePanel"
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
end
L0_1.ctor = L2_1
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
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_panel = L1_2
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_icon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.quest_id = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  if L2_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.setup_title
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_treasure_title
  L4_2 = A0_2._quest_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.DataRow
  L2_2 = L2_2.QuestDisplay
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_treasure_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rewards
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityBoxingClubQuestTab"
  L4_2 = A0_2.quest_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
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
  L4_2 = L4_2[1]
  L4_2 = L4_2.ItemID
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.KBBBFCIHJPC
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.JKFPIINHGPD
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L3_2 = L3_2 == L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_inprogress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_done
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.num_current
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Progress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.num_total
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.TotalProgress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.progress_bar
  L4_2 = L4_2.MaskComp
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.Progress
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.TotalProgress
  L5_2 = L5_2 / L6_2
  L4_2.fillAmount = L5_2
end
L0_1._setup_status = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_callback = L2_1
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
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_get_tips
  L2_2.IsShowTip = A1_2
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
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_in_control_tips_active = L2_1
return L0_1
