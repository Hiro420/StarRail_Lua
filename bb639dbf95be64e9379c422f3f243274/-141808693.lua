local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainFinalBonusPanel"
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_status_get_reward
  L4_2 = A0_2._on_btn_status_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_status_get_reward
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_status_get_reward
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_btn_status_get_reward
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_tip_btn_status_get_reward
    L0_3.IsShowTip = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_btn_status_get_reward
      L0_3.ActionEnabled = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_tip_btn_status_get_reward
      L0_3.IsShowTip = false
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemIconPanel
  L4_2 = G
  L4_2 = L4_2.ItemIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_item_panel = L1_2
  L1_2 = A0_2._reward_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_item
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_status_get_reward
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_status_get_reward
  L1_2.IsShowTip = true
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_item_table
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L0_1.get_final_reward_id_table = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._type_group_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._type_group_data
  L3_2 = L3_2.DataList
  L2_2 = L2_2(L3_2)
  A0_2._activity_table = L2_2
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[1]
  A0_2._cur_activity_data = L2_2
  L2_2 = A0_2._cur_activity_data
  L3_2 = L2_2
  L2_2 = L2_2.SetSeen
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._cur_activity_data
  L3_2 = L3_2.QuestIDList
  L3_2 = L3_2[0]
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._display_status_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
end
L0_1._on_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_in_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_status_get_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._display_status_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._quest_data
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.FinishWayExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._quest_data
    L2_2 = L2_2.DataRow
    L2_2 = L2_2.FinishWayID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.DataRow
    L4_2 = L4_2.QuestTitle
    L5_2 = L1_2.ParamInt1
    L6_2 = L1_2.ParamInt2
    L7_2 = L1_2.ParamInt3
    L8_2 = L1_2.Progress
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_sub_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.DataRow
    L4_2 = L4_2.QuestDisplay
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.Progress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_total_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.TotalProgress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_bar
    L2_2 = L2_2.MaskComp
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Progress
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.TotalProgress
    L3_2 = L3_2 / L4_2
    L2_2.fillAmount = L3_2
  end
end
L0_1._setup_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._reward_item_table = L1_2
  L1_2 = A0_2._reward_item_table
  L1_2 = L1_2[1]
  A0_2._reward_data = L1_2
  L1_2 = A0_2._reward_data
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._reward_data
    L3_2 = L3_2.ItemID
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._reward_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_count_display
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_reward_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._reward_data
    L3_2 = L3_2.Count
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._reward_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_attachment_getted
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AMFNHGKACLB
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_status_get_reward = L2_1
return L0_1
