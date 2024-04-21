local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessTargetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.EndlessAchievedScore
  L5_2 = A0_2
  L4_2 = A0_2.setup_view_with_given_score
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L5_2 = A2_2.ActivityAreaRow
  L5_2 = L5_2.TargetParamList
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
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2.data
    L12_2 = {}
    L12_2.CurrentValue = L4_2
    L13_2 = L5_2[L9_2]
    L12_2.TotalValue = L13_2
    L12_2.IsHideTargetPoint = A3_2
    L10_2(L11_2, L12_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_target_info_list
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2.data
  L6_2(L7_2, L8_2)
end
L0_1.setup_view_with_given_score = L1_1
return L0_1
