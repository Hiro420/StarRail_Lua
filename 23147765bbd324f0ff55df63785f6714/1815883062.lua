local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueSelectAreaEndlessItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "RogueEndless_Activity_SP_Entry_Lock_MissionID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueEndlessTimeLimitedReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._click_callback = nil
  A0_2._click_callback_self = nil
end
L1_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_empty = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_selected
  L3_2 = L3_2 ~= A1_2
  if L3_2 or A2_2 then
    A0_2._is_selected = A1_2
    L5_2 = A0_2
    L4_2 = A0_2._refresh_select_status
    L4_2(L5_2)
  end
end
L1_1.set_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Disabled_Off"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Disabled"
    L2_2(L3_2, L4_2)
  end
end
L1_1.set_enable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select_Off"
    L2_2(L3_2, L4_2)
  end
end
L1_1.set_detail_selected = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L1_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rogue_area_data_list = A1_2
  A0_2._rogue_area_data = nil
  L2_2 = A0_2._rogue_area_data_list
  if L2_2 ~= nil then
    L2_2 = A0_2._rogue_area_data_list
    L2_2 = L2_2.Count
    if 0 < L2_2 then
      L2_2 = A0_2._rogue_area_data_list
      L2_2 = L2_2[0]
      A0_2._rogue_area_data = L2_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L1_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_status
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data
    L1_2 = L1_2.RogueAreaRow
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.AreaNameID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.AreaNameID
    L2_2(L3_2, L4_2)
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.IsRogueEndlessArea
    L4_2 = A0_2._rogue_area_data
    L4_2 = L4_2.AreaID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_rogue_endless_info
      L2_2(L3_2)
    end
  end
end
L1_1._refresh_basic_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityRogueEndless_Name"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityRogueEndless_Name"
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.RogueEndlessConstValue
  L1_2 = L1_2.ActivityModuleID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ScheduleModule
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTime
    L5_2 = L2_2.EndTimeDate
    L6_2 = A0_2._expire_call_back
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L1_1._setup_rogue_endless_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueEndlessExpired
  L1_2(L2_2)
end
L1_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 == nil then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsFinish
  L2_2 = L1_2 == nil or L2_2
  L3_2 = A0_2._is_lock
  L3_2 = L3_2 ~= L2_2
  A0_2._is_lock = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_doing
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_doing_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_node_doing
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ActivityRogueEndless_Rogue_SP_Tips"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_node_doing_off
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ActivityRogueEndless_Rogue_SP_Tips"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_doing_status
  L6_2 = false
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_lock_status
    L4_2(L5_2)
  end
end
L1_1._refresh_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_selected
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.ResetTrigger
    L3_2 = "Off"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "On"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.ResetTrigger
    L3_2 = "On"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Off"
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_select_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Lock"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Normal"
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_lock_status = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Playing"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NotPlay"
    L2_2(L3_2, L4_2)
  end
end
L1_1.refresh_doing_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._rogue_area_data_list
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_click = L4_1
return L1_1
