local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfQuestPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L2_2 = L2_2.TryGetQuestData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._quest_data = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.TotalProgress
  if 1 < L1_2 then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.Progress
  end
end
L0_1._setup_progress = L1_1
return L0_1
