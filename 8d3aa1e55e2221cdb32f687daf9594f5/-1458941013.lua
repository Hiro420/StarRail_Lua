local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DailyMissionModule"
L2_1 = "Logic.BaseModule"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NetworkManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.savePointsUseTimes = 0
  A0_2.savePointsRefreshTime = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DailyMissionReward
  L4_2 = A0_2._on_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.AGEGCHICOGN
  L4_2 = A0_2._on_save_points_update
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.Init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.on_notify_daily_mission_reward
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_receive_reward = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.get_packet
  L3_2 = "SavePointsInfoNotify"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.ValidTimes
  A0_2.savePointsUseTimes = L3_2
  L3_2 = L2_2.RefreshTime
  A0_2.savePointsRefreshTime = L3_2
end
L0_1._on_save_points_update = L2_1
return L0_1
