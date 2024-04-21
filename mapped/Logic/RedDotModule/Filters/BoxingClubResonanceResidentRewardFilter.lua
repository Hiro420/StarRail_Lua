local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BoxingClubModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BoxingClubResonanceResidentRewardFilter"
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
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "BoxingClubResonanceResidentRewardBtn"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_resident_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_resident_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resident_reward_red_dot
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resident_quest_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resident_reward_btn_new
  L1_2(L2_2)
end
L1_1._refresh_resident_reward_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ResonanceResidentRedDotQuestList
  L2_2 = L1_2.Count
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "BoxingClubResonanceResidentRewardBtnNormal"
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_resident_quest_red_dot = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._refresh_resident_reward_btn_new = L2_1
return L1_1
