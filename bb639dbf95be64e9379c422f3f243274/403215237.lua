local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.CommonQuestListTabItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonQuestListTabItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
function L3_1(A0_2, A1_2, A2_2)
  A0_2._is_selected = false
  A0_2._is_custom_lock = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_selected
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._is_custom_lock = false
  A0_2._quest_data = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._is_selected
  A0_2._is_selected = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L6_2 = L5_2
  L5_2 = L5_2.SetChecked
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if A1_2 then
    if A2_2 then
      L6_2 = A0_2
      L5_2 = A0_2.save_navigation_target
      L7_2 = A0_2._binder
      L7_2 = L7_2.btn_root
      L7_2 = L7_2.gameObject
      L5_2(L6_2, L7_2)
    end
    if A3_2 == true or L4_2 ~= A1_2 then
      L6_2 = A0_2
      L5_2 = A0_2._trigger_root_btn
      L5_2(L6_2)
    end
  end
end
L0_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_repeat_click_enable = A1_2
end
L0_1.set_repeat_click_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_title_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_unlock = L2_2
  A0_2._is_custom_lock = true
  L3_2 = A0_2
  L2_2 = A0_2._setup_custom_lock_state
  L2_2(L3_2)
end
L0_1.set_custom_lock = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._index = A2_2
  A0_2._quest_data = A1_2
  L3_2 = A0_2._is_custom_lock
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_custom_lock_state
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_time_lock_state
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_finish_state
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_selected
  L5_2 = A0_2._is_selected
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._btn_callback = A1_2
  A0_2._btn_callback_owner = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_data
  return L1_2
end
L0_1.get_quest_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._index
  return L1_2
end
L0_1.get_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._is_unlock
  if L3_2 == true then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = A1_2
    L6_2 = A2_2
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
L0_1.bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_time
    L1_2 = L1_2.transform
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_custom_lock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CycleQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_data
  L2_2 = L2_2[1]
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ActivityModuleID
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    if L3_2 then
      A0_2._is_unlock = true
  end
  elseif L2_2 then
    A0_2._is_unlock = false
    L3_2 = L2_2.BeginTimeStamp
    A0_2._begin_time_stamp = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_time
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = A0_2._begin_time_stamp
    L6_2 = A0_2._setup_view
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlock
  L3_2(L4_2, L5_2)
end
L0_1._setup_time_lock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_unlock
  if not L1_2 then
    L1_2 = A0_2._is_custom_lock
    if not L1_2 then
      return
    end
  end
  L1_2 = 0
  L2_2 = false
  L3_2 = 1
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._quest_data
    L7_2 = L7_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L7_2.Status
      L9_2 = CS
      L9_2 = L9_2.BLHLCHNAJKK
      L9_2 = L9_2.FMLBEGJJHMJ
      if L8_2 == L9_2 then
        L1_2 = L1_2 + 1
      end
    end
    if not L2_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.RewardExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L7_2.DataRow
      L9_2 = L9_2.RewardID
      L8_2 = L8_2(L9_2)
      L2_2 = L8_2.IsSpecial
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_finish_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._quest_data
  L5_2 = #L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_complete
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._quest_data
  L5_2 = #L5_2
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._quest_data
  L5_2 = #L5_2
  L5_2 = L1_2 ~= L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_finish_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._btn_callback
  if L1_2 then
    L1_2 = A0_2._btn_callback_owner
    if L1_2 then
      L1_2 = A0_2._btn_callback
      L2_2 = A0_2._btn_callback_owner
      L3_2 = A0_2._quest_data
      L4_2 = A0_2._is_unlock
      L5_2 = A0_2._begin_time_stamp
      L6_2 = A0_2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._trigger_root_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_selected
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L3_1
return L0_1
