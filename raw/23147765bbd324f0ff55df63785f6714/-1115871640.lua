local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionTargetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.Score
  L5_2 = A0_2
  L4_2 = A0_2.setup_view_with_given_score
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2
  L5_2 = A2_2.QuestRow
  L5_2 = L5_2.QuestIDList
  L6_2 = {}
  A0_2.data = L6_2
  if L5_2 == nil then
    return
  end
  L6_2 = 0
  L7_2 = L5_2.Length
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.TryGetQuestData
    L12_2 = L5_2[L9_2]
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 ~= nil then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2.data
      L13_2 = {}
      L13_2.QuestData = L10_2
      L14_2 = L10_2.Progress
      L13_2.CurrentValue = L14_2
      L14_2 = L10_2.TotalProgress
      L13_2.TotalValue = L14_2
      L13_2.IsHideTargetPoint = A3_2
      L11_2(L12_2, L13_2)
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_target_info_list
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2.data
  L6_2(L7_2, L8_2)
end
L0_1.setup_view_with_given_score = L2_1
return L0_1
