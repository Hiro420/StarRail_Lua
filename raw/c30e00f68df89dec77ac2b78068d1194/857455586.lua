local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionCountDownPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionCountDownPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._finish_callback = A1_2
  A0_2._finish_handler = A2_2
end
L0_1.register_finish_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._expedition_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.InProgress
  L1_2 = L1_2 == L2_2
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.IsComplete
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = not L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_bar
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = not L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_complete
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if not L1_2 then
    return
  end
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_remain_timer
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_progress_bar
    L3_2(L4_2)
  end
end
L0_1.refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.ExpeditionUtils
  L1_2 = L1_2.get_finish_time_stamp
  L2_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2
  L5_2 = A0_2._on_count_down_finish
  L6_2 = A0_2
  L7_2 = 3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_remain_timer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowTimeStamp
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.AcceptTime
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_bar
  L2_2 = L2_2.MaskComp
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.Duration
  L3_2 = L3_2 * 60
  L3_2 = L3_2 * 60
  L3_2 = L1_2 / L3_2
  L3_2 = 1 - L3_2
  L2_2.fillAmount = L3_2
end
L0_1._setup_progress_bar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._finish_callback
  L3_2 = A0_2._finish_handler
  L1_2(L2_2, L3_2)
end
L0_1._on_count_down_finish = L1_1
return L0_1
