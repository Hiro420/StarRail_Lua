local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RaidCollectionRewardQuestItemPanel"
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
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_control
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_control
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_control
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._quest_id = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.QuestDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._quest_id
  L3_2 = L3_2(L4_2)
  A0_2._quest_row = L3_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  A0_2._is_locked = A2_2
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil and L3_2
  A0_2._is_valid = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_info_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_reward_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_status_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FinishWayExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_row
  L2_2 = L2_2.FinishWayID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
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
L1_1._refresh_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._quest_row
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueCommonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "Activity_Special_Display_ItemID"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.UintValue
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.index_of_item
  L5_2 = A0_2._config_id_list
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = nil ~= L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_special
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L1_1._refresh_reward_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_valid
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_valid
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_status
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_by_data
    L3_2 = A0_2._quest_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_status
    L2_2 = L1_2
    L1_2 = L1_2.setup_empty_view
    L1_2(L2_2)
  end
end
L1_1._refresh_status_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._owner
  L2_2 = L2_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_NetworkManager
    L1_3 = L0_3
    L0_3 = L0_3.JCCHEMBPEEE
    L2_3 = A0_2._quest_id
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_control_tip_get
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_incontrol_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._enable_control = L2_1
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
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
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
L1_1._on_left_stick_button_click = L2_1
return L1_1
