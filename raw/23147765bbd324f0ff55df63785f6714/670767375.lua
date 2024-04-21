local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleProbeStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ModeProbeTriggered
  L1_2(L2_2)
end
L0_1.execute = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prop
  L0_2 = L0_2.PuzzleStatic
  L0_2 = L0_2.ProbeResetNum
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prop
  L1_2 = L1_2.PuzzleStatic
  L1_2 = L1_2.ProbeResetNumCounter
  L0_2 = L0_2 - L1_2
  return L0_2
end
L0_1.get_current_count = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prop
  L0_2 = L0_2.PuzzleStatic
  L0_2 = L0_2.ProbeResetNum
  return L0_2
end
L0_1.get_max_count = L1_1
return L0_1
