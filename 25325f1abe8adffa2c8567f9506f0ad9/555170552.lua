local L0_1, L1_1
L0_1 = {}
TriggerSpaceAnchorUITaskHack = L0_1
L0_1 = xlua
L0_1 = L0_1.private_accessible
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.TriggerSpaceAnchorUITask
L0_1(L1_1)
L0_1 = TriggerSpaceAnchorUITaskHack
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageString
  L4_2 = "\229\188\128\229\167\139\230\137\147\229\188\128\233\148\154\231\130\185\228\184\187\231\149\140\233\157\162\230\181\139\232\175\149"
  L2_2(L3_2, L4_2)
  L2_2 = false
  return L2_2
end
L0_1.start_task_begin = L1_1
L0_1 = TriggerSpaceAnchorUITaskHack
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageString
  L4_2 = "\230\136\144\229\138\159\230\137\147\229\188\128\233\148\154\231\130\185\228\184\187\231\149\140\233\157\162\230\181\139\232\175\149"
  L2_2(L3_2, L4_2)
  L2_2 = false
  return L2_2
end
L0_1.end_task_begin = L1_1
L0_1 = TriggerSpaceAnchorUITaskHack
return L0_1
