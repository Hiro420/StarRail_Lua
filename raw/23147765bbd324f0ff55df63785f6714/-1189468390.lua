local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FindTrotterRecordItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._timer_callback = A1_2
  A0_2._timer_handler = A2_2
end
L1_1.register_timer_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._row = A1_2
  A0_2._schedule_data = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._row
  L6_2 = L6_2.Title
  L4_2(L5_2, L6_2)
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionState
  L6_2 = A0_2._row
  L6_2 = L6_2.StartSubMissionID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.SubMissionState
  L5_2 = L5_2.Finish
  L4_2 = L4_2 == L5_2
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.GetSubMissionState
  L7_2 = A0_2._row
  L7_2 = L7_2.FinishSubMissionID
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.SubMissionState
  L6_2 = L6_2.Finish
  L5_2 = L5_2 == L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_direction
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  if L4_2 then
    L8_2 = A0_2._row
    L8_2 = L8_2.Aim02
    if L8_2 then
      goto lbl_48
    end
  end
  L8_2 = A0_2._row
  L8_2 = L8_2.Aim01
  ::lbl_48::
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_direction
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_result
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not A2_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_result
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  if L5_2 then
    L8_2 = A0_2._row
    L8_2 = L8_2.Result02
    if L8_2 then
      goto lbl_75
    end
  end
  L8_2 = A0_2._row
  L8_2 = L8_2.Result01
  ::lbl_75::
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_finished
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not A2_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._schedule_data
  L7_2 = L6_2
  L6_2 = L6_2.IsInSchedule
  L6_2 = L6_2(L7_2)
  L6_2 = not L6_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_wait_pre
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A2_2 or L9_2
  if A2_2 then
    L9_2 = not L6_2
  end
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_wait_time
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A2_2 or L9_2
  if A2_2 then
    L9_2 = L6_2
  end
  L7_2(L8_2, L9_2)
  if L6_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.remain_timer
    L8_2 = L7_2
    L7_2 = L7_2.SetTargetTime
    L9_2 = A3_2.BeginTimeDate
    L10_2 = A0_2._timer_callback
    L11_2 = A0_2._timer_handler
    L12_2 = 2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = A0_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
end
L1_1.setup_view = L2_1
return
