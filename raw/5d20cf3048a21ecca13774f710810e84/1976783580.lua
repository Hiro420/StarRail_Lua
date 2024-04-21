local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityRewardUtils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardRootFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._activity_reward_id = A1_2
  A0_2._root_red_dot_name = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._prepare_data
  L3_2(L4_2)
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._root_red_dot_name
  return L1_2
end
L2_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._root_red_dot_name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._quest_ids
    if L1_2 ~= nil then
      L1_2 = A0_2._quest_ids
      L1_2 = #L1_2
      if L1_2 ~= 0 then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  L1_2 = pairs
  L2_2 = A0_2._quest_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1.get_quest_data
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = L1_1.is_quest_reward_can_take
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = A0_2._root_red_dot_name
      L10_2 = nil
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.get_reward_config_row
  L2_2 = A0_2._activity_reward_id
  L1_2 = L1_2(L2_2)
  A0_2._reward_config_row = L1_2
  L1_2 = L0_1.get_quest_ids_by_reward_config_row
  L2_2 = A0_2._reward_config_row
  L1_2 = L1_2(L2_2)
  A0_2._quest_ids = L1_2
end
L2_1._prepare_data = L3_1
return L2_1
