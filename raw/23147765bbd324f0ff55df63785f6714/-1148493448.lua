local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.QuestReward.AlleyQuestStagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyQuestStagePanel"
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
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._quest_data = L1_2
  A0_2._is_selected = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2.on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_checked
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_ActivityReward_Finish"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_unlock_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_ActivityReward_UnlockTimeAfter"
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._quest_data = nil
  A0_2._stage_info_row = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_selected = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    if A2_2 then
      L4_2 = A0_2
      L3_2 = A0_2.save_navigation_target
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_root
      L5_2 = L5_2.gameObject
      L3_2(L4_2, L5_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2.on_btn_root
    L3_2(L4_2)
  end
end
L0_1.set_checked = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.index = A1_2
  A0_2._stage_info_row = A2_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A2_2.QuestList
  L3_2 = L3_2(L4_2)
  A0_2._quest_ids = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2.MainTabTitle
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._btn_callback_owner = A1_2
  A0_2._btn_callback = A2_2
end
L0_1.register_btn_click_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_data
  return L1_2
end
L0_1.get_quest_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_finish_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_checked
  L3_2 = A0_2._is_selected
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_checked
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.try_uncheck = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._quest_data = L1_2
  L1_2 = 1
  L2_2 = A0_2._quest_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.is_unlock
    if L5_2 then
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.TryGetQuestData
      L7_2 = A0_2._quest_ids
      L7_2 = L7_2[L4_2]
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._quest_data
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    else
      L5_2 = {}
      L6_2 = A0_2._quest_ids
      L6_2 = L6_2[L4_2]
      L5_2.ID = L6_2
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.QuestDataExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2._quest_ids
      L7_2 = L7_2[L4_2]
      L6_2 = L6_2(L7_2)
      L5_2.DataRow = L6_2
      if L5_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._quest_data
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._setup_quest_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CycleQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_ids
  L2_2 = L2_2[1]
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
      A0_2.is_unlock = true
  end
  elseif L2_2 then
    A0_2.is_unlock = false
    L3_2 = L2_2.BeginTimeStamp
    A0_2.begin_time_stamp = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.unlock_remain_time
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = A0_2.begin_time_stamp
    L6_2 = A0_2._setup_view
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.is_unlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.is_unlock
  L3_2(L4_2, L5_2)
end
L0_1._setup_lock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.is_unlock
  if not L1_2 then
    return
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
      L9_2 = L9_2.LEOGBBOPKKO
      L9_2 = L9_2.JKFPIINHGPD
      if L8_2 ~= L9_2 then
        L8_2 = L7_2.Status
        L9_2 = CS
        L9_2 = L9_2.LEOGBBOPKKO
        L9_2 = L9_2.CMOFEAFMGAK
        if L8_2 ~= L9_2 then
          goto lbl_29
        end
      end
      L1_2 = L1_2 + 1
    end
    ::lbl_29::
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
  L3_2 = L3_2.node_rare
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
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
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.is_unlock
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
  end
end
L0_1.bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_callback
  if L1_2 then
    L1_2 = A0_2._btn_callback_owner
    if L1_2 then
      L1_2 = A0_2._btn_callback
      L2_2 = A0_2._btn_callback_owner
      L3_2 = A0_2.index
      L4_2 = A0_2.is_unlock
      L5_2 = A0_2.begin_time_stamp
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1.on_btn_root = L3_1
return L0_1
