local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChatEmojiFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ChatEmojiGroupNew"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EmojiUtils
  L1_2 = L1_2.GetChatEmojiGroupIDs
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ChatEmojiGroupSeenIDs
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
      L10_2 = "ChatEmojiGroupNew"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1.refresh = L1_1
return L0_1
