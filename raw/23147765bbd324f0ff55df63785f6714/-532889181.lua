local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleRemoteControlReleaseStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RemoteControlRelease
  L1_2(L2_2)
end
L0_1.execute = L1_1
return L0_1
