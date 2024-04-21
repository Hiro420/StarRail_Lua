local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PersonalizeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChatBubbleFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "ChatBubbleNew"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1.ChatBubbleData
  L1_2 = L1_2.UnlockedBubbleIDs
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ChatBubbleSeenIDs
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L9_2 = L2_2
    L8_2 = L2_2.Contains
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = G
      L8_2 = L8_2.RedDotModule
      L8_2 = L8_2.Instance
      L9_2 = L8_2
      L8_2 = L8_2.update_reddot
      L10_2 = "ChatBubbleNew"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L1_1.refresh = L2_1
return L1_1
