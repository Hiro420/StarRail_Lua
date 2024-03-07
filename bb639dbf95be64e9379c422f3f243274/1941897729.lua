local L0_1, L1_1, L2_1
L0_1 = 2
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PlayerReturnJourneyInvitationData"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1
  return L1_2
end
L1_1.get_prefab_index = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityPlayerReturnModule
  L1_2 = L1_2.IsInviteAvailable
  return L1_2
end
L1_1.is_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityPlayerReturnModule
  L2_2 = L1_2.InviteData
  L2_2 = L2_2.IsInvitationCodeBound
  return L2_2
end
L1_1.is_finished = L2_1
return L1_1
