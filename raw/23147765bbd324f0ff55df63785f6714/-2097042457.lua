local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainRightListItem"
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_btn_status_get_reward
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_tip_btn_status_get_reward
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_stick_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
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
    L0_3 = A0_2._binder
    L0_3 = L0_3.in_control_btn_status_get_reward
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.in_tip_btn_status_get_reward
    L0_3.IsShowTip = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_left_stick_hint
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
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
      L0_3 = A0_2._binder
      L0_3 = L0_3.in_control_btn_status_get_reward
      L0_3.ActionEnabled = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.in_tip_btn_status_get_reward
      L0_3.IsShowTip = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_left_stick_hint
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_status_get_reward
  L4_2 = A0_2._on_btn_status_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_btn_status_get_reward
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_tip_btn_status_get_reward
  L1_2.IsShowTip = false
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_root
      L1_2 = L1_2.IsSelectedByController
      if L1_2 == true then
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
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.QuestDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._quest_row = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  A0_2._activity_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._hide_nodes
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_is_special
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward_info
  L3_2(L4_2)
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityAetherDivideDataStatus
  L4_2 = L4_2.Locked
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._quest_data
    if L3_2 ~= nil then
      goto lbl_46
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_complete_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_46::
  L4_2 = A0_2
  L3_2 = A0_2._display_status_node
  L3_2(L4_2)
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.KBBBFCIHJPC
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_progress_info
    L3_2(L4_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_in_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_status_get_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_quest_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quest_row
  L3_2 = L3_2.QuestTitle
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FinishWayExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_row
  L2_2 = L2_2.FinishWayID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_quest_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._quest_row
  L4_2 = L4_2.QuestTitle
  L5_2 = L1_2.ParamInt1
  L6_2 = L1_2.ParamInt2
  L7_2 = L1_2.ParamInt3
  L8_2 = L1_2.Progress
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RewardExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_row
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsSpecial
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = false
  ::lbl_15::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unnormal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_is_special = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._quest_row
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._reward_item_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_item_table
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_config_ids
  L1_2(L2_2)
end
L0_1._setup_reward_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_in_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.KBBBFCIHJPC
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_status_get_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_complete_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._display_status_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._quest_row
  L3_2 = L3_2.QuestID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_status_get_reward = L2_1
return L0_1
